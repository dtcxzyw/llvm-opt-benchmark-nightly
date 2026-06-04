inline.NumInlined: 914
inline.NumDeleted: 472
begin_hunk_0_@_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE:bb.a
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, -1
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17WasmModuleBuilder22ExportImportedFunctionENS_4base6VectorIKcEEi(ptr noundef nonnull align 8 dereferenceable(468) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = add nsw i64 %i.p, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.q)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = sub i64 %i.s, %i.t
  %.neg = sdiv exact i64 %i.u, -40
  %.neg2 = trunc i64 %.neg to i32
  %i.v = add i32 %3, %.neg2
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.e, align 8
  store ptr %1, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 %i.v, ptr %.sroa.61.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE(ptr noundef nonnull readonly align 8 dereferenceable(468) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %3 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %4 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %5 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 250 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 103 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = add i64 %i.l, 10
  %i.o = and i64 %i.n, -8                         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.o) #10
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i: ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8
  store ptr %i.w, ptr %i.g, align 8
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.l
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit

_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit: ; preds = %bb.a, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i
  %i.al = phi ptr [ %i.b, %bb.a ], [ %i.ai, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i ]
  store i32 1836278016, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aq = icmp ugt ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331

bb.d:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = shl nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = load ptr, ptr %1, align 8               ; 3 uses
  %i.ay = add i64 %i.aw, 10
  %i.az = and i64 %i.ay, -8                       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 noundef %i.az) #10
  %.pre.i.i.i.i330 = load i64, ptr %i.bc, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329: ; preds = %bb.e, %bb.d
  %i.bg = phi i64 [ %.pre.i.i.i.i330, %bb.e ], [ %i.bd, %bb.d ] ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 4 uses
  %i.bi = add i64 %i.bg, %i.az
  store i64 %i.bi, ptr %i.bc, align 8
  %i.bj = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bn, i1 false)
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = load ptr, ptr %i.ar, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bh, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.a, align 8
  store ptr %i.bh, ptr %i.ar, align 8
  %i.bu = getelementptr i8, ptr %i.bh, i64 %i.aw
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  store ptr %i.bv, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331

_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331: ; preds = %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329
  %i.bw = phi ptr [ %i.an, %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit ], [ %i.bt, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329 ]
  store i32 1, ptr %i.bw, align 1
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.by, ptr %i.a, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.cn, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331
  %i.ce = tail call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 1, ptr noundef nonnull %1) ; 2 uses
  %i.cf = load ptr, ptr %i.bz, align 8
  %i.cg = load ptr, ptr %i.cb, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3
  %i.ct = add nsw i64 %i.cs, %i.ck                ; 3 uses
  %.not863 = icmp eq ptr %i.co, %i.cm
  br i1 %.not863, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %6 = add i64 %i.cp, -8
  %7 = sub i64 %6, %i.cq                          ; 2 uses
  %min.iters.check = icmp ult i64 %7, 32
  br i1 %min.iters.check, label %.lr.ph.preheader1233, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %n.mod.vf = and i64 %9, 3                       ; 2 uses
  %10 = icmp eq i64 %n.mod.vf, 0
  %11 = select i1 %10, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %9, %11                    ; 2 uses
  %12 = shl i64 %n.vec, 3
  %13 = getelementptr i8, ptr %i.co, i64 %12
  %14 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ct, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %14, %vector.ph ], [ %25, %vector.body ]
  %vec.phi1205 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %26, %vector.body ]
  %15 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %i.co, i64 %15
  %16 = getelementptr i8, ptr %i.co, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %18 = getelementptr i8, ptr %16, i64 20
  %wide.vec = load <4 x i32>, ptr %17, align 4
  %wide.vec1207 = load <4 x i32>, ptr %18, align 4
  %19 = freeze <4 x i32> %wide.vec
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = and <2 x i64> %20, splat (i64 4294967295)
  %22 = freeze <4 x i32> %wide.vec1207
  %23 = bitcast <4 x i32> %22 to <2 x i64>
  %24 = and <2 x i64> %23, splat (i64 4294967295)
  %25 = sub <2 x i64> %vec.phi, %21               ; 2 uses
  %26 = sub <2 x i64> %vec.phi1205, %24           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %26, %25
  %28 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader1233

.lr.ph.preheader1233:                             ; preds = %.lr.ph.preheader, %middle.block
  %.0865.ph = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %28, %middle.block ]
  %.0250864.ph = phi ptr [ %i.co, %.lr.ph.preheader ], [ %13, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.0.lcssa = phi i64 [ %i.ct, %bb.f ], [ %i.db, %.lr.ph ]
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.0.lcssa)
  %i.cu = load ptr, ptr %i.cl, align 8
  %i.cv = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  %spec.select787 = select i1 %i.cw, ptr null, ptr %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.bz, align 8
  %i.cy = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not959 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not959, label %.preheader, label %select.unfold.preheader.lr.ph

select.unfold.preheader.lr.ph:                    ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 60 uses
  br label %select.unfold.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader1233, %.lr.ph
  %.0865 = phi i64 [ %i.db, %.lr.ph ], [ %.0865.ph, %.lr.ph.preheader1233 ]
  %.0250864 = phi ptr [ %i.dc, %.lr.ph ], [ %.0250864.ph, %.lr.ph.preheader1233 ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0250864, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.da = zext i32 %.sroa.3.0.copyload to i64
  %i.db = sub i64 %.0865, %i.da                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0250864, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dc, %i.cm
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

select.unfold.preheader:                          ; preds = %select.unfold.preheader.lr.ph, %.loopexit835
  %i.dd = phi ptr [ %i.cy, %select.unfold.preheader.lr.ph ], [ %i.aau, %.loopexit835 ]
  %i.de = phi i64 [ 0, %select.unfold.preheader.lr.ph ], [ %i.aas, %.loopexit835 ]
  %.0251882 = phi ptr [ %spec.select787, %select.unfold.preheader.lr.ph ], [ %.1.lcssa, %.loopexit835 ] ; 2 uses
  %.0252881 = phi i32 [ 0, %select.unfold.preheader.lr.ph ], [ %i.aar, %.loopexit835 ] ; 2 uses
  %.not276866 = icmp eq ptr %.0251882, null
  br i1 %.not276866, label %.critedge, label %.lr.ph868

.preheader:                                       ; preds = %.loopexit835, %._crit_edge
  %.0251.lcssa = phi ptr [ %spec.select787, %._crit_edge ], [ %.1.lcssa, %.loopexit835 ] ; 2 uses
  %.not275884 = icmp eq ptr %.0251.lcssa, null
  br i1 %.not275884, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415._crit_edge, label %.lr.ph886

.lr.ph886:                                        ; preds = %.preheader
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.ce

.lr.ph868:                                        ; preds = %select.unfold.preheader, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit
  %.1867 = phi ptr [ %i.gq, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit ], [ %.0251882, %select.unfold.preheader ] ; 5 uses
  %i.dg = load i32, ptr %.1867, align 4
  %i.dh = icmp eq i32 %.0252881, %i.dg
  br i1 %i.dh, label %bb.g, label %.critedge.loopexit

bb.g:                                             ; preds = %.lr.ph868
  %i.di = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dl = icmp ugt ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.h, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit

bb.h:                                             ; preds = %bb.g
  %i.dm = load ptr, ptr %i.cz, align 8
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = shl nsw i64 %i.dp, 1                    ; 2 uses
  %i.dr = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.dp, -1
  br i1 %.not.i.i.i, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ds = and i64 %i.dq, -8
  %i.dt = add i64 %i.ds, 8                        ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = sub i64 %i.dv, %i.dx
  %i.dz = icmp ugt i64 %i.dt, %i.dy
  br i1 %i.dz, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332, !prof !5

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i64 noundef %i.dt) #10
  %.pre.i.i.i.i333 = load i64, ptr %i.dw, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332: ; preds = %bb.k, %bb.j
  %i.ea = phi i64 [ %.pre.i.i.i.i333, %bb.k ], [ %i.dx, %bb.j ] ; 2 uses
  %i.eb = inttoptr i64 %i.ea to ptr               ; 4 uses
  %i.ec = add i64 %i.ea, %i.dt
  store i64 %i.ec, ptr %i.dw, align 8
  %i.ed = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.eh, i1 false)
  %i.ei = load ptr, ptr %i.a, align 8
  %i.ej = load ptr, ptr %i.cz, align 8
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.eb, i64 %i.em
  store ptr %i.eb, ptr %i.cz, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dq
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.ep, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit: ; preds = %bb.g, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332
  %i.eq = phi ptr [ %i.di, %bb.g ], [ %i.en, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.a, align 8
  store i8 78, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.1867, i64 4
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %i.eu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 5
  %i.ew = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ex = icmp ugt ptr %i.ev, %i.ew
  br i1 %i.ex, label %bb.l, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i

bb.l:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit
  %i.ey = load ptr, ptr %i.cz, align 8
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = shl nsw i64 %i.fb, 1                    ; 2 uses
  %i.fd = add i64 %i.fc, 5                        ; 2 uses
  %i.fe = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i334 = icmp eq i64 %i.fd, -1
  br i1 %.not.i.i.i334, label %bb.m, label %bb.n, !prof !5

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ff = add i64 %i.fc, 12
  %i.fg = and i64 %i.ff, -8                       ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = icmp ugt i64 %i.fg, %i.fl
  br i1 %i.fm, label %bb.o, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335, !prof !5

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, i64 noundef %i.fg) #10
  %.pre.i.i.i.i336 = load i64, ptr %i.fj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335: ; preds = %bb.o, %bb.n
  %i.fn = phi i64 [ %.pre.i.i.i.i336, %bb.o ], [ %i.fk, %bb.n ] ; 2 uses
  %i.fo = inttoptr i64 %i.fn to ptr               ; 4 uses
  %i.fp = add i64 %i.fn, %i.fg
  store i64 %i.fp, ptr %i.fj, align 8
  %i.fq = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.fr = load ptr, ptr %i.a, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr align 1 %i.fq, i64 %i.fu, i1 false)
  %i.fv = load ptr, ptr %i.a, align 8
  %i.fw = load ptr, ptr %i.cz, align 8
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %i.fo, i64 %i.fz ; 2 uses
  store ptr %i.ga, ptr %i.a, align 8
  store ptr %i.fo, ptr %i.cz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fd
  store ptr %i.gb, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit
  %i.gc = phi ptr [ %i.eu, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit ], [ %i.ga, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335 ]
  %i.gd = icmp ugt i32 %i.et, 127
  br i1 %i.gd, label %.lr.ph.i.i, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.gi, %.lr.ph.i.i ], [ %i.et, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i ] ; 3 uses
  %i.ge = trunc i32 %.05.i.i to i8
  %i.gf = or i8 %i.ge, -128
  %i.gg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gh, ptr %i.a, align 8
  store i8 %i.gf, ptr %i.gg, align 1
  %i.gi = lshr i32 %.05.i.i, 7                    ; 2 uses
  %i.gj = icmp ugt i32 %.05.i.i, 16383
  br i1 %i.gj, label %.lr.ph.i.i, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i, !llvm.loop !9

_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit: ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i
  %i.gk = phi ptr [ %i.gc, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i ], [ %.pre.i, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %i.et, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i ], [ %i.gi, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i ]
  %i.gl = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store ptr %i.gm, ptr %i.a, align 8
  store i8 %i.gl, ptr %i.gk, align 1
  %i.gn = load ptr, ptr %i.cl, align 8
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  %i.gp = icmp eq ptr %.1867, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.1867, i64 8
  br i1 %i.gp, label %.critedge.loopexit, label %.lr.ph868

.critedge.loopexit:                               ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit, %.lr.ph868
  %.1.lcssa.ph = phi ptr [ %.1867, %.lr.ph868 ], [ null, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit ]
  %.pre = load ptr, ptr %i.cb, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %select.unfold.preheader
  %i.gr = phi ptr [ %i.dd, %select.unfold.preheader ], [ %.pre, %.critedge.loopexit ]
  %.1.lcssa = phi ptr [ null, %select.unfold.preheader ], [ %.1.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.de ; 10 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4
  %.not789 = icmp eq i32 %i.gu, -1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 21
  %i.gw = load i8, ptr %i.gv, align 1, !range !21, !noundef !22 ; 2 uses
  br i1 %.not789, label %bb.y, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.gx = sub nuw nsw i8 80, %i.gw
  %i.gy = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hb = icmp ugt ptr %i.gz, %i.ha
  br i1 %i.hb, label %bb.q, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit341

bb.q:                                             ; preds = %bb.p
  %i.hc = load ptr, ptr %i.cz, align 8
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 2 uses
  %i.hg = shl nsw i64 %i.hf, 1                    ; 2 uses
  %i.hh = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i338 = icmp eq i64 %i.hf, -1
  br i1 %.not.i.i.i338, label %bb.r, label %bb.s, !prof !5

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.hi = and i64 %i.hg, -8
  %i.hj = add i64 %i.hi, 8                        ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = sub i64 %i.hl, %i.hn
  %i.hp = icmp ugt i64 %i.hj, %i.ho
  br i1 %i.hp, label %bb.t, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i339, !prof !5

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.hh, i64 noundef %i.hj) #10
  %.pre.i.i.i.i340 = load i64, ptr %i.hm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i339

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i339: ; preds = %bb.t, %bb.s
  %i.hq = phi i64 [ %.pre.i.i.i.i340, %bb.t ], [ %i.hn, %bb.s ] ; 2 uses
  %i.hr = inttoptr i64 %i.hq to ptr               ; 4 uses
  %i.hs = add i64 %i.hq, %i.hj
  store i64 %i.hs, ptr %i.hm, align 8
  %i.ht = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.hu = load ptr, ptr %i.a, align 8
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr align 1 %i.ht, i64 %i.hx, i1 false)
  %i.hy = load ptr, ptr %i.a, align 8
  %i.hz = load ptr, ptr %i.cz, align 8
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.hr, i64 %i.ic
  store ptr %i.hr, ptr %i.cz, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hg
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store ptr %i.if, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit341

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit341: ; preds = %bb.p, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i339
  %i.ig = phi ptr [ %i.gy, %bb.p ], [ %i.id, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i339 ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.a, align 8
  store i8 %i.gx, ptr %i.ig, align 1
  %i.ii = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.ik = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.il = icmp ugt ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.u, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit346

bb.u:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit341
  %i.im = load ptr, ptr %i.cz, align 8
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 2 uses
  %i.iq = shl nsw i64 %i.ip, 1                    ; 2 uses
  %i.ir = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i343 = icmp eq i64 %i.ip, -1
  br i1 %.not.i.i.i343, label %bb.v, label %bb.w, !prof !5

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.is = and i64 %i.iq, -8
  %i.it = add i64 %i.is, 8                        ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8            ; 2 uses
  %i.iy = sub i64 %i.iv, %i.ix
  %i.iz = icmp ugt i64 %i.it, %i.iy
  br i1 %i.iz, label %bb.x, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i344, !prof !5

bb.x:                                             ; preds = %bb.w
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ir, i64 noundef %i.it) #10
  %.pre.i.i.i.i345 = load i64, ptr %i.iw, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i344

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i344: ; preds = %bb.x, %bb.w
  %i.ja = phi i64 [ %.pre.i.i.i.i345, %bb.x ], [ %i.ix, %bb.w ] ; 2 uses
  %i.jb = inttoptr i64 %i.ja to ptr               ; 4 uses
  %i.jc = add i64 %i.ja, %i.it
  store i64 %i.jc, ptr %i.iw, align 8
  %i.jd = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.je = load ptr, ptr %i.a, align 8
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jb, ptr align 1 %i.jd, i64 %i.jh, i1 false)
  %i.ji = load ptr, ptr %i.a, align 8
  %i.jj = load ptr, ptr %i.cz, align 8
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.jb, i64 %i.jm
  store ptr %i.jb, ptr %i.cz, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iq
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit346

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit346: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit341, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i344
  %i.jq = phi ptr [ %i.ii, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit341 ], [ %i.jn, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i344 ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  store ptr %i.jr, ptr %i.a, align 8
  store i8 1, ptr %i.jq, align 1
  %.sroa.0212.0.copyload = load i32, ptr %i.gt, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.0212.0.copyload)
  br label %bb.ai

bb.y:                                             ; preds = %.critedge
  %i.js = trunc nuw i8 %i.gw to i1
  br i1 %i.js, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jt = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jw = icmp ugt ptr %i.ju, %i.jv
  br i1 %i.jw, label %bb.aa, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit351

bb.aa:                                            ; preds = %bb.z
  %i.jx = load ptr, ptr %i.cz, align 8
  %i.jy = ptrtoint ptr %i.jv to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = shl nsw i64 %i.ka, 1                    ; 2 uses
  %i.kc = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i348 = icmp eq i64 %i.ka, -1
  br i1 %.not.i.i.i348, label %bb.ab, label %bb.ac, !prof !5

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.kd = and i64 %i.kb, -8
  %i.ke = add i64 %i.kd, 8                        ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8            ; 2 uses
  %i.kj = sub i64 %i.kg, %i.ki
  %i.kk = icmp ugt i64 %i.ke, %i.kj
  br i1 %i.kk, label %bb.ad, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i349, !prof !5

bb.ad:                                            ; preds = %bb.ac
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.kc, i64 noundef %i.ke) #10
  %.pre.i.i.i.i350 = load i64, ptr %i.kh, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i349

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i349: ; preds = %bb.ad, %bb.ac
  %i.kl = phi i64 [ %.pre.i.i.i.i350, %bb.ad ], [ %i.ki, %bb.ac ] ; 2 uses
  %i.km = inttoptr i64 %i.kl to ptr               ; 4 uses
  %i.kn = add i64 %i.kl, %i.ke
  store i64 %i.kn, ptr %i.kh, align 8
  %i.ko = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.kp = load ptr, ptr %i.a, align 8
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.ko to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.km, ptr align 1 %i.ko, i64 %i.ks, i1 false)
  %i.kt = load ptr, ptr %i.a, align 8
  %i.ku = load ptr, ptr %i.cz, align 8
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = getelementptr inbounds i8, ptr %i.km, i64 %i.kx
  store ptr %i.km, ptr %i.cz, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kb
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store ptr %i.la, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit351

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit351: ; preds = %bb.z, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i349
  %i.lb = phi ptr [ %i.jt, %bb.z ], [ %i.ky, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i349 ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.lc, ptr %i.a, align 8
  store i8 80, ptr %i.lb, align 1
  %i.ld = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lf = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.lg = icmp ugt ptr %i.le, %i.lf
  br i1 %i.lg, label %bb.ae, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit356

bb.ae:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit351
  %i.lh = load ptr, ptr %i.cz, align 8
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = shl nsw i64 %i.lk, 1                    ; 2 uses
  %i.lm = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i353 = icmp eq i64 %i.lk, -1
  br i1 %.not.i.i.i353, label %bb.af, label %bb.ag, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ln = and i64 %i.ll, -8
  %i.lo = add i64 %i.ln, 8                        ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lq = load i64, ptr %i.lp, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 3 uses
  %i.ls = load i64, ptr %i.lr, align 8            ; 2 uses
  %i.lt = sub i64 %i.lq, %i.ls
  %i.lu = icmp ugt i64 %i.lo, %i.lt
  br i1 %i.lu, label %bb.ah, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i354, !prof !5

bb.ah:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.lm, i64 noundef %i.lo) #10
  %.pre.i.i.i.i355 = load i64, ptr %i.lr, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i354

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i354: ; preds = %bb.ah, %bb.ag
  %i.lv = phi i64 [ %.pre.i.i.i.i355, %bb.ah ], [ %i.ls, %bb.ag ] ; 2 uses
  %i.lw = inttoptr i64 %i.lv to ptr               ; 4 uses
  %i.lx = add i64 %i.lv, %i.lo
  store i64 %i.lx, ptr %i.lr, align 8
  %i.ly = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.lz = load ptr, ptr %i.a, align 8
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr align 1 %i.ly, i64 %i.mc, i1 false)
  %i.md = load ptr, ptr %i.a, align 8
  %i.me = load ptr, ptr %i.cz, align 8
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.lw, i64 %i.mh
  store ptr %i.lw, ptr %i.cz, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ll
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mk, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit356

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit356: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit351, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i354
  %i.ml = phi ptr [ %i.ld, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit351 ], [ %i.mi, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i354 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  store ptr %i.mm, ptr %i.a, align 8
  store i8 0, ptr %i.ml, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.y, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit356, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit346
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gs, i64 22
  %i.mo = load i8, ptr %i.mn, align 2, !range !21, !noundef !22
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.mq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  %i.ms = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mt = icmp ugt ptr %i.mr, %i.ms
  br i1 %i.mt, label %bb.ak, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit361

bb.ak:                                            ; preds = %bb.aj
  %i.mu = load ptr, ptr %i.cz, align 8
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 2 uses
  %i.my = shl nsw i64 %i.mx, 1                    ; 2 uses
  %i.mz = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i358 = icmp eq i64 %i.mx, -1
  br i1 %.not.i.i.i358, label %bb.al, label %bb.am, !prof !5

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.na = and i64 %i.my, -8
  %i.nb = add i64 %i.na, 8                        ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 3 uses
  %i.nf = load i64, ptr %i.ne, align 8            ; 2 uses
  %i.ng = sub i64 %i.nd, %i.nf
  %i.nh = icmp ugt i64 %i.nb, %i.ng
  br i1 %i.nh, label %bb.an, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i359, !prof !5

bb.an:                                            ; preds = %bb.am
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.mz, i64 noundef %i.nb) #10
  %.pre.i.i.i.i360 = load i64, ptr %i.ne, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i359

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i359: ; preds = %bb.an, %bb.am
  %i.ni = phi i64 [ %.pre.i.i.i.i360, %bb.an ], [ %i.nf, %bb.am ] ; 2 uses
  %i.nj = inttoptr i64 %i.ni to ptr               ; 4 uses
  %i.nk = add i64 %i.ni, %i.nb
  store i64 %i.nk, ptr %i.ne, align 8
  %i.nl = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.nm = load ptr, ptr %i.a, align 8
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nj, ptr align 1 %i.nl, i64 %i.np, i1 false)
  %i.nq = load ptr, ptr %i.a, align 8
  %i.nr = load ptr, ptr %i.cz, align 8
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = getelementptr inbounds i8, ptr %i.nj, i64 %i.nu
  store ptr %i.nj, ptr %i.cz, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.my
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store ptr %i.nx, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit361

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit361: ; preds = %bb.aj, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i359
  %i.ny = phi ptr [ %i.mq, %bb.aj ], [ %i.nv, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i359 ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store ptr %i.nz, ptr %i.a, align 8
  store i8 101, ptr %i.ny, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit361, %bb.ai
  %i.oa = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4
  %.not790 = icmp eq i32 %i.ob, -1
  br i1 %.not790, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  %i.oe = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.of = icmp ugt ptr %i.od, %i.oe
  br i1 %i.of, label %bb.aq, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit366

bb.aq:                                            ; preds = %bb.ap
  %i.og = load ptr, ptr %i.cz, align 8
  %i.oh = ptrtoint ptr %i.oe to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi                    ; 2 uses
  %i.ok = shl nsw i64 %i.oj, 1                    ; 2 uses
  %i.ol = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i363 = icmp eq i64 %i.oj, -1
  br i1 %.not.i.i.i363, label %bb.ar, label %bb.as, !prof !5

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.om = and i64 %i.ok, -8
  %i.on = add i64 %i.om, 8                        ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.op = load i64, ptr %i.oo, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 3 uses
  %i.or = load i64, ptr %i.oq, align 8            ; 2 uses
  %i.os = sub i64 %i.op, %i.or
  %i.ot = icmp ugt i64 %i.on, %i.os
  br i1 %i.ot, label %bb.at, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i364, !prof !5

bb.at:                                            ; preds = %bb.as
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ol, i64 noundef %i.on) #10
  %.pre.i.i.i.i365 = load i64, ptr %i.oq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i364

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i364: ; preds = %bb.at, %bb.as
  %i.ou = phi i64 [ %.pre.i.i.i.i365, %bb.at ], [ %i.or, %bb.as ] ; 2 uses
  %i.ov = inttoptr i64 %i.ou to ptr               ; 4 uses
  %i.ow = add i64 %i.ou, %i.on
  store i64 %i.ow, ptr %i.oq, align 8
  %i.ox = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.oy = load ptr, ptr %i.a, align 8
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = sub i64 %i.oz, %i.pa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ov, ptr align 1 %i.ox, i64 %i.pb, i1 false)
  %i.pc = load ptr, ptr %i.a, align 8
  %i.pd = load ptr, ptr %i.cz, align 8
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = getelementptr inbounds i8, ptr %i.ov, i64 %i.pg
  store ptr %i.ov, ptr %i.cz, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ok
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 1
  store ptr %i.pj, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit366

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit366: ; preds = %bb.ap, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i364
  %i.pk = phi ptr [ %i.oc, %bb.ap ], [ %i.ph, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i364 ] ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  store ptr %i.pl, ptr %i.a, align 8
  store i8 76, ptr %i.pk, align 1
  %.sroa.0211.0.copyload = load i32, ptr %i.oa, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.0211.0.copyload)
  br label %bb.au

bb.au:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit366, %bb.ao
  %i.pm = getelementptr inbounds nuw i8, ptr %i.gs, i64 12 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4
  %.not791 = icmp eq i32 %i.pn, -1
  br i1 %.not791, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.po = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  %i.pq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.pr = icmp ugt ptr %i.pp, %i.pq
  br i1 %i.pr, label %bb.aw, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit371

bb.aw:                                            ; preds = %bb.av
  %i.ps = load ptr, ptr %i.cz, align 8
  %i.pt = ptrtoint ptr %i.pq to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu                    ; 2 uses
  %i.pw = shl nsw i64 %i.pv, 1                    ; 2 uses
  %i.px = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i368 = icmp eq i64 %i.pv, -1
  br i1 %.not.i.i.i368, label %bb.ax, label %bb.ay, !prof !5

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.py = and i64 %i.pw, -8
  %i.pz = add i64 %i.py, 8                        ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.qb = load i64, ptr %i.qa, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 16 ; 3 uses
  %i.qd = load i64, ptr %i.qc, align 8            ; 2 uses
  %i.qe = sub i64 %i.qb, %i.qd
  %i.qf = icmp ugt i64 %i.pz, %i.qe
  br i1 %i.qf, label %bb.az, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i369, !prof !5

bb.az:                                            ; preds = %bb.ay
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.px, i64 noundef %i.pz) #10
  %.pre.i.i.i.i370 = load i64, ptr %i.qc, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i369

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i369: ; preds = %bb.az, %bb.ay
  %i.qg = phi i64 [ %.pre.i.i.i.i370, %bb.az ], [ %i.qd, %bb.ay ] ; 2 uses
  %i.qh = inttoptr i64 %i.qg to ptr               ; 4 uses
  %i.qi = add i64 %i.qg, %i.pz
  store i64 %i.qi, ptr %i.qc, align 8
  %i.qj = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.qk = load ptr, ptr %i.a, align 8
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qj to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qh, ptr align 1 %i.qj, i64 %i.qn, i1 false)
  %i.qo = load ptr, ptr %i.a, align 8
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE:bb.a
  %i.rd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.re = icmp ugt ptr %i.rc, %i.rd
  br i1 %i.re, label %bb.bc, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376

bb.bc:                                            ; preds = %bb.bb
  %i.rf = load ptr, ptr %i.cz, align 8
  %i.rg = ptrtoint ptr %i.rd to i64
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = sub i64 %i.rg, %i.rh                    ; 2 uses
  %i.rj = shl nsw i64 %i.ri, 1                    ; 2 uses
  %i.rk = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i373 = icmp eq i64 %i.ri, -1
  br i1 %.not.i.i.i373, label %bb.bd, label %bb.be, !prof !5

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.rl = and i64 %i.rj, -8
  %i.rm = add i64 %i.rl, 8                        ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.ro = load i64, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 16 ; 3 uses
  %i.rq = load i64, ptr %i.rp, align 8            ; 2 uses
  %i.rr = sub i64 %i.ro, %i.rq
  %i.rs = icmp ugt i64 %i.rm, %i.rr
  br i1 %i.rs, label %bb.bf, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i374, !prof !5

bb.bf:                                            ; preds = %bb.be
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.rk, i64 noundef %i.rm) #10
  %.pre.i.i.i.i375 = load i64, ptr %i.rp, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i374

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i374: ; preds = %bb.bf, %bb.be
  %i.rt = phi i64 [ %.pre.i.i.i.i375, %bb.bf ], [ %i.rq, %bb.be ] ; 2 uses
  %i.ru = inttoptr i64 %i.rt to ptr               ; 4 uses
  %i.rv = add i64 %i.rt, %i.rm
  store i64 %i.rv, ptr %i.rp, align 8
  %i.rw = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.rx = load ptr, ptr %i.a, align 8
  %i.ry = ptrtoint ptr %i.rx to i64
  %i.rz = ptrtoint ptr %i.rw to i64
  %i.sa = sub i64 %i.ry, %i.rz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ru, ptr align 1 %i.rw, i64 %i.sa, i1 false)
  %i.sb = load ptr, ptr %i.a, align 8
  %i.sc = load ptr, ptr %i.cz, align 8
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = getelementptr inbounds i8, ptr %i.ru, i64 %i.sf
  store ptr %i.ru, ptr %i.cz, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rj
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  store ptr %i.si, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376: ; preds = %bb.bb, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i374
  %i.sj = phi ptr [ %i.rb, %bb.bb ], [ %i.sg, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i374 ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  store ptr %i.sk, ptr %i.a, align 8
  store i8 96, ptr %i.sj, align 1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ra, i64 8 ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.sm)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = load i64, ptr %i.ra, align 8            ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sp ; 2 uses
  %i.sr = load i64, ptr %i.sl, align 8            ; 2 uses
  %.idx = shl nuw nsw i64 %i.sr, 2
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.idx
  %.not277873 = icmp eq i64 %i.sr, 0
  br i1 %.not277873, label %._crit_edge876, label %.lr.ph875

._crit_edge876.loopexit:                          ; preds = %.lr.ph875
  %.pre992 = load i64, ptr %i.ra, align 8
  br label %._crit_edge876

._crit_edge876:                                   ; preds = %._crit_edge876.loopexit, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376
  %i.st = phi i64 [ %.pre992, %._crit_edge876.loopexit ], [ %i.sp, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376 ]
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.st)
  %i.su = load ptr, ptr %i.sn, align 8            ; 2 uses
  %i.sv = load i64, ptr %i.ra, align 8            ; 2 uses
  %.idx961 = shl nuw nsw i64 %i.sv, 2
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 %.idx961
  %.not278877 = icmp eq i64 %i.sv, 0
  br i1 %.not278877, label %.loopexit835, label %.lr.ph880

.lr.ph875:                                        ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376, %.lr.ph875
  %.0254874 = phi ptr [ %i.sy, %.lr.ph875 ], [ %i.sq, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit376 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.sx = load i32, ptr %.0254874, align 4
  store i32 %i.sx, ptr %2, align 4
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.sy = getelementptr inbounds nuw i8, ptr %.0254874, i64 4 ; 2 uses
  %.not277 = icmp eq ptr %i.sy, %i.ss
  br i1 %.not277, label %._crit_edge876.loopexit, label %.lr.ph875

.lr.ph880:                                        ; preds = %._crit_edge876, %.lr.ph880
  %.0255878 = phi ptr [ %i.ta, %.lr.ph880 ], [ %i.su, %._crit_edge876 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.sz = load i32, ptr %.0255878, align 4
  store i32 %i.sz, ptr %3, align 4
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ta = getelementptr inbounds nuw i8, ptr %.0255878, i64 4 ; 2 uses
  %.not278 = icmp eq ptr %i.ta, %i.sw
  br i1 %.not278, label %.loopexit835, label %.lr.ph880

bb.bg:                                            ; preds = %bb.ba
  %i.tb = load ptr, ptr %i.gs, align 8            ; 5 uses
  %i.tc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  %i.te = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.tf = icmp ugt ptr %i.td, %i.te
  br i1 %i.tf, label %bb.bh, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit383

bb.bh:                                            ; preds = %bb.bg
  %i.tg = load ptr, ptr %i.cz, align 8
  %i.th = ptrtoint ptr %i.te to i64
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = sub i64 %i.th, %i.ti                    ; 2 uses
  %i.tk = shl nsw i64 %i.tj, 1                    ; 2 uses
  %i.tl = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i380 = icmp eq i64 %i.tj, -1
  br i1 %.not.i.i.i380, label %bb.bi, label %bb.bj, !prof !5

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.tm = and i64 %i.tk, -8
  %i.tn = add i64 %i.tm, 8                        ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tp = load i64, ptr %i.to, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16 ; 3 uses
  %i.tr = load i64, ptr %i.tq, align 8            ; 2 uses
  %i.ts = sub i64 %i.tp, %i.tr
  %i.tt = icmp ugt i64 %i.tn, %i.ts
  br i1 %i.tt, label %bb.bk, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i381, !prof !5

bb.bk:                                            ; preds = %bb.bj
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.tl, i64 noundef %i.tn) #10
  %.pre.i.i.i.i382 = load i64, ptr %i.tq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i381

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i381: ; preds = %bb.bk, %bb.bj
  %i.tu = phi i64 [ %.pre.i.i.i.i382, %bb.bk ], [ %i.tr, %bb.bj ] ; 2 uses
  %i.tv = inttoptr i64 %i.tu to ptr               ; 4 uses
  %i.tw = add i64 %i.tu, %i.tn
  store i64 %i.tw, ptr %i.tq, align 8
  %i.tx = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.ty = load ptr, ptr %i.a, align 8
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tx to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tv, ptr align 1 %i.tx, i64 %i.ub, i1 false)
  %i.uc = load ptr, ptr %i.a, align 8
  %i.ud = load ptr, ptr %i.cz, align 8
  %i.ue = ptrtoint ptr %i.uc to i64
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = sub i64 %i.ue, %i.uf
  %i.uh = getelementptr inbounds i8, ptr %i.tv, i64 %i.ug
  store ptr %i.tv, ptr %i.cz, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tk
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  store ptr %i.uj, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit383

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit383: ; preds = %bb.bg, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i381
  %i.uk = phi ptr [ %i.tc, %bb.bg ], [ %i.uh, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i381 ] ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 1
  store ptr %i.ul, ptr %i.a, align 8
  store i8 95, ptr %i.uk, align 1
  %i.um = load i16, ptr %i.tb, align 8
  %i.un = zext i16 %i.um to i64
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.un)
  %i.uo = load i16, ptr %i.tb, align 8
  %.not960 = icmp eq i16 %i.uo, 0
  br i1 %.not960, label %.loopexit835, label %.lr.ph872

.lr.ph872:                                        ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit383
  %i.up = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph872, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit388
  %indvars.iv = phi i64 [ 0, %.lr.ph872 ], [ %indvars.iv.next, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit388 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ur = load ptr, ptr %i.up, align 8
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.us, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ut = load ptr, ptr %i.uq, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv
  %i.uv = load i8, ptr %i.uu, align 1, !range !21, !noundef !22
  %i.uw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 1
  %i.uy = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.uz = icmp ugt ptr %i.ux, %i.uy
  br i1 %i.uz, label %bb.bm, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit388

bb.bm:                                            ; preds = %bb.bl
  %i.va = load ptr, ptr %i.cz, align 8
  %i.vb = ptrtoint ptr %i.uy to i64
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = sub i64 %i.vb, %i.vc                    ; 2 uses
  %i.ve = shl nsw i64 %i.vd, 1                    ; 2 uses
  %i.vf = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i385 = icmp eq i64 %i.vd, -1
  br i1 %.not.i.i.i385, label %bb.bn, label %bb.bo, !prof !5

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.vg = and i64 %i.ve, -8
  %i.vh = add i64 %i.vg, 8                        ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vj = load i64, ptr %i.vi, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 3 uses
  %i.vl = load i64, ptr %i.vk, align 8            ; 2 uses
  %i.vm = sub i64 %i.vj, %i.vl
  %i.vn = icmp ugt i64 %i.vh, %i.vm
  br i1 %i.vn, label %bb.bp, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i386, !prof !5

bb.bp:                                            ; preds = %bb.bo
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.vf, i64 noundef %i.vh) #10
  %.pre.i.i.i.i387 = load i64, ptr %i.vk, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i386

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i386: ; preds = %bb.bp, %bb.bo
  %i.vo = phi i64 [ %.pre.i.i.i.i387, %bb.bp ], [ %i.vl, %bb.bo ] ; 2 uses
  %i.vp = inttoptr i64 %i.vo to ptr               ; 4 uses
  %i.vq = add i64 %i.vo, %i.vh
  store i64 %i.vq, ptr %i.vk, align 8
  %i.vr = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.vs = load ptr, ptr %i.a, align 8
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = ptrtoint ptr %i.vr to i64
  %i.vv = sub i64 %i.vt, %i.vu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vp, ptr align 1 %i.vr, i64 %i.vv, i1 false)
  %i.vw = load ptr, ptr %i.a, align 8
  %i.vx = load ptr, ptr %i.cz, align 8
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = sub i64 %i.vy, %i.vz
  %i.wb = getelementptr inbounds i8, ptr %i.vp, i64 %i.wa
  store ptr %i.vp, ptr %i.cz, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.ve
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 1
  store ptr %i.wd, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit388

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit388: ; preds = %bb.bl, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i386
  %i.we = phi ptr [ %i.uw, %bb.bl ], [ %i.wb, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i386 ] ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  store ptr %i.wf, ptr %i.a, align 8
  store i8 %i.uv, ptr %i.we, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.wg = load i16, ptr %i.tb, align 8
  %i.wh = zext i16 %i.wg to i64
  %i.wi = icmp samesign ult i64 %indvars.iv.next, %i.wh
  br i1 %i.wi, label %bb.bl, label %.loopexit835, !llvm.loop !23

bb.bq:                                            ; preds = %bb.ba
  %i.wj = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.wk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  %i.wm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.wn = icmp ugt ptr %i.wl, %i.wm
  br i1 %i.wn, label %bb.br, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit393

bb.br:                                            ; preds = %bb.bq
  %i.wo = load ptr, ptr %i.cz, align 8
  %i.wp = ptrtoint ptr %i.wm to i64
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = sub i64 %i.wp, %i.wq                    ; 2 uses
  %i.ws = shl nsw i64 %i.wr, 1                    ; 2 uses
  %i.wt = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i390 = icmp eq i64 %i.wr, -1
  br i1 %.not.i.i.i390, label %bb.bs, label %bb.bt, !prof !5

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.wu = and i64 %i.ws, -8
  %i.wv = add i64 %i.wu, 8                        ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.wx = load i64, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 16 ; 3 uses
  %i.wz = load i64, ptr %i.wy, align 8            ; 2 uses
  %i.xa = sub i64 %i.wx, %i.wz
  %i.xb = icmp ugt i64 %i.wv, %i.xa
  br i1 %i.xb, label %bb.bu, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i391, !prof !5

bb.bu:                                            ; preds = %bb.bt
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.wt, i64 noundef %i.wv) #10
  %.pre.i.i.i.i392 = load i64, ptr %i.wy, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i391

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i391: ; preds = %bb.bu, %bb.bt
  %i.xc = phi i64 [ %.pre.i.i.i.i392, %bb.bu ], [ %i.wz, %bb.bt ] ; 2 uses
  %i.xd = inttoptr i64 %i.xc to ptr               ; 4 uses
  %i.xe = add i64 %i.xc, %i.wv
  store i64 %i.xe, ptr %i.wy, align 8
  %i.xf = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.xg = load ptr, ptr %i.a, align 8
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %i.xf to i64
  %i.xj = sub i64 %i.xh, %i.xi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xd, ptr align 1 %i.xf, i64 %i.xj, i1 false)
  %i.xk = load ptr, ptr %i.a, align 8
  %i.xl = load ptr, ptr %i.cz, align 8
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = getelementptr inbounds i8, ptr %i.xd, i64 %i.xo
  store ptr %i.xd, ptr %i.cz, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.ws
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 1
  store ptr %i.xr, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit393

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit393: ; preds = %bb.bq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i391
  %i.xs = phi ptr [ %i.wk, %bb.bq ], [ %i.xp, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i391 ] ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 1
  store ptr %i.xt, ptr %i.a, align 8
  store i8 94, ptr %i.xs, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.xu, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %5, align 4
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.xv = load i8, ptr %i.wj, align 4, !range !21, !noundef !22
  %i.xw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 1
  %i.xy = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.xz = icmp ugt ptr %i.xx, %i.xy
  br i1 %i.xz, label %bb.bv, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit398

bb.bv:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit393
  %i.ya = load ptr, ptr %i.cz, align 8
  %i.yb = ptrtoint ptr %i.xy to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc                    ; 2 uses
  %i.ye = shl nsw i64 %i.yd, 1                    ; 2 uses
  %i.yf = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i395 = icmp eq i64 %i.yd, -1
  br i1 %.not.i.i.i395, label %bb.bw, label %bb.bx, !prof !5

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.yg = and i64 %i.ye, -8
  %i.yh = add i64 %i.yg, 8                        ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.yj = load i64, ptr %i.yi, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yf, i64 16 ; 3 uses
  %i.yl = load i64, ptr %i.yk, align 8            ; 2 uses
  %i.ym = sub i64 %i.yj, %i.yl
  %i.yn = icmp ugt i64 %i.yh, %i.ym
  br i1 %i.yn, label %bb.by, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i396, !prof !5

bb.by:                                            ; preds = %bb.bx
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.yf, i64 noundef %i.yh) #10
  %.pre.i.i.i.i397 = load i64, ptr %i.yk, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i396

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i396: ; preds = %bb.by, %bb.bx
  %i.yo = phi i64 [ %.pre.i.i.i.i397, %bb.by ], [ %i.yl, %bb.bx ] ; 2 uses
  %i.yp = inttoptr i64 %i.yo to ptr               ; 4 uses
  %i.yq = add i64 %i.yo, %i.yh
  store i64 %i.yq, ptr %i.yk, align 8
  %i.yr = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.ys = load ptr, ptr %i.a, align 8
  %i.yt = ptrtoint ptr %i.ys to i64
  %i.yu = ptrtoint ptr %i.yr to i64
  %i.yv = sub i64 %i.yt, %i.yu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yp, ptr align 1 %i.yr, i64 %i.yv, i1 false)
  %i.yw = load ptr, ptr %i.a, align 8
  %i.yx = load ptr, ptr %i.cz, align 8
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = getelementptr inbounds i8, ptr %i.yp, i64 %i.za
  store ptr %i.yp, ptr %i.cz, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.ye
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  store ptr %i.zd, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit398

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit398: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit393, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i396
  %i.ze = phi ptr [ %i.xw, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit393 ], [ %i.zb, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i396 ] ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  store ptr %i.zf, ptr %i.a, align 8
  store i8 %i.xv, ptr %i.ze, align 1
  br label %.loopexit835

bb.bz:                                            ; preds = %bb.ba
  %i.zg = load ptr, ptr %i.gs, align 8
  %i.zh = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 1
  %i.zj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.zk = icmp ugt ptr %i.zi, %i.zj
  br i1 %i.zk, label %bb.ca, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit403

bb.ca:                                            ; preds = %bb.bz
  %i.zl = load ptr, ptr %i.cz, align 8
  %i.zm = ptrtoint ptr %i.zj to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn                    ; 2 uses
  %i.zp = shl nsw i64 %i.zo, 1                    ; 2 uses
  %i.zq = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i400 = icmp eq i64 %i.zo, -1
  br i1 %.not.i.i.i400, label %bb.cb, label %bb.cc, !prof !5

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.zr = and i64 %i.zp, -8
  %i.zs = add i64 %i.zr, 8                        ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.zu = load i64, ptr %i.zt, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 16 ; 3 uses
  %i.zw = load i64, ptr %i.zv, align 8            ; 2 uses
  %i.zx = sub i64 %i.zu, %i.zw
  %i.zy = icmp ugt i64 %i.zs, %i.zx
  br i1 %i.zy, label %bb.cd, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i401, !prof !5

bb.cd:                                            ; preds = %bb.cc
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.zq, i64 noundef %i.zs) #10
  %.pre.i.i.i.i402 = load i64, ptr %i.zv, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i401

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i401: ; preds = %bb.cd, %bb.cc
  %i.zz = phi i64 [ %.pre.i.i.i.i402, %bb.cd ], [ %i.zw, %bb.cc ] ; 2 uses
  %i.aaa = inttoptr i64 %i.zz to ptr              ; 4 uses
  %i.aab = add i64 %i.zz, %i.zs
  store i64 %i.aab, ptr %i.zv, align 8
  %i.aac = load ptr, ptr %i.cz, align 8           ; 2 uses
  %i.aad = load ptr, ptr %i.a, align 8
  %i.aae = ptrtoint ptr %i.aad to i64
  %i.aaf = ptrtoint ptr %i.aac to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aaa, ptr align 1 %i.aac, i64 %i.aag, i1 false)
  %i.aah = load ptr, ptr %i.a, align 8
  %i.aai = load ptr, ptr %i.cz, align 8
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  %i.aam = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aal
  store ptr %i.aaa, ptr %i.cz, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.zp
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 1
  store ptr %i.aao, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit403

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit403: ; preds = %bb.bz, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i401
  %i.aap = phi ptr [ %i.zh, %bb.bz ], [ %i.aam, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i401 ] ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  store ptr %i.aaq, ptr %i.a, align 8
  store i8 93, ptr %i.aap, align 1
  %.sroa.0.0.copyload.i404 = load i32, ptr %i.zg, align 4
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.0.0.copyload.i404)
  br label %.loopexit835

.loopexit835:                                     ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit388, %.lr.ph880, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit383, %._crit_edge876, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit403, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit398, %bb.ba
  %i.aar = add i32 %.0252881, 1                   ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 2 uses
  %i.aat = load ptr, ptr %i.bz, align 8
  %i.aau = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  %i.aay = sdiv exact i64 %i.aax, 24
  %i.aaz = icmp ugt i64 %i.aay, %i.aas
  br i1 %i.aaz, label %select.unfold.preheader, label %.preheader, !llvm.loop !24

bb.ce:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415, %.lr.ph886
  %.2885 = phi ptr [ %.0251.lcssa, %.lr.ph886 ], [ %i.adx, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415 ] ; 2 uses
  %i.aba = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 1
  %i.abc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.abd = icmp ugt ptr %i.abb, %i.abc
  br i1 %i.abd, label %bb.cf, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit409

bb.cf:                                            ; preds = %bb.ce
  %i.abe = load ptr, ptr %i.df, align 8
  %i.abf = ptrtoint ptr %i.abc to i64
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = sub i64 %i.abf, %i.abg                 ; 2 uses
  %i.abi = shl nsw i64 %i.abh, 1                  ; 2 uses
  %i.abj = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i406 = icmp eq i64 %i.abh, -1
  br i1 %.not.i.i.i406, label %bb.cg, label %bb.ch, !prof !5

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.abk = and i64 %i.abi, -8
  %i.abl = add i64 %i.abk, 8                      ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 24
  %i.abn = load i64, ptr %i.abm, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 16 ; 3 uses
  %i.abp = load i64, ptr %i.abo, align 8          ; 2 uses
  %i.abq = sub i64 %i.abn, %i.abp
  %i.abr = icmp ugt i64 %i.abl, %i.abq
  br i1 %i.abr, label %bb.ci, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i407, !prof !5

bb.ci:                                            ; preds = %bb.ch
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.abj, i64 noundef %i.abl) #10
  %.pre.i.i.i.i408 = load i64, ptr %i.abo, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i407

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i407: ; preds = %bb.ci, %bb.ch
  %i.abs = phi i64 [ %.pre.i.i.i.i408, %bb.ci ], [ %i.abp, %bb.ch ] ; 2 uses
  %i.abt = inttoptr i64 %i.abs to ptr             ; 4 uses
  %i.abu = add i64 %i.abs, %i.abl
  store i64 %i.abu, ptr %i.abo, align 8
  %i.abv = load ptr, ptr %i.df, align 8           ; 2 uses
  %i.abw = load ptr, ptr %i.a, align 8
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = ptrtoint ptr %i.abv to i64
  %i.abz = sub i64 %i.abx, %i.aby
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abt, ptr align 1 %i.abv, i64 %i.abz, i1 false)
  %i.aca = load ptr, ptr %i.a, align 8
  %i.acb = load ptr, ptr %i.df, align 8
  %i.acc = ptrtoint ptr %i.aca to i64
  %i.acd = ptrtoint ptr %i.acb to i64
  %i.ace = sub i64 %i.acc, %i.acd
  %i.acf = getelementptr inbounds i8, ptr %i.abt, i64 %i.ace
  store ptr %i.abt, ptr %i.df, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abi
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 1
  store ptr %i.ach, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit409

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit409: ; preds = %bb.ce, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i407
  %i.aci = phi ptr [ %i.aba, %bb.ce ], [ %i.acf, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i407 ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 1
  store ptr %i.acj, ptr %i.a, align 8
  store i8 78, ptr %i.aci, align 1
  %i.ack = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 5
  %i.acm = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.acn = icmp ugt ptr %i.acl, %i.acm
  br i1 %i.acn, label %bb.cj, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415

bb.cj:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit409
  %i.aco = load ptr, ptr %i.df, align 8
  %i.acp = ptrtoint ptr %i.acm to i64
  %i.acq = ptrtoint ptr %i.aco to i64
  %i.acr = sub i64 %i.acp, %i.acq
  %i.acs = shl nsw i64 %i.acr, 1                  ; 2 uses
  %i.act = add i64 %i.acs, 5                      ; 2 uses
  %i.acu = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i412 = icmp eq i64 %i.act, -1
  br i1 %.not.i.i.i412, label %bb.ck, label %bb.cl, !prof !5

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.acv = add i64 %i.acs, 12
  %i.acw = and i64 %i.acv, -8                     ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %i.acy = load i64, ptr %i.acx, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 3 uses
  %i.ada = load i64, ptr %i.acz, align 8          ; 2 uses
  %i.adb = sub i64 %i.acy, %i.ada
  %i.adc = icmp ugt i64 %i.acw, %i.adb
  br i1 %i.adc, label %bb.cm, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i413, !prof !5

bb.cm:                                            ; preds = %bb.cl
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.acu, i64 noundef %i.acw) #10
  %.pre.i.i.i.i414 = load i64, ptr %i.acz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i413

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i413: ; preds = %bb.cm, %bb.cl
  %i.add = phi i64 [ %.pre.i.i.i.i414, %bb.cm ], [ %i.ada, %bb.cl ] ; 2 uses
  %i.ade = inttoptr i64 %i.add to ptr             ; 4 uses
  %i.adf = add i64 %i.add, %i.acw
  store i64 %i.adf, ptr %i.acz, align 8
  %i.adg = load ptr, ptr %i.df, align 8           ; 2 uses
  %i.adh = load ptr, ptr %i.a, align 8
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = ptrtoint ptr %i.adg to i64
  %i.adk = sub i64 %i.adi, %i.adj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ade, ptr align 1 %i.adg, i64 %i.adk, i1 false)
  %i.adl = load ptr, ptr %i.a, align 8
  %i.adm = load ptr, ptr %i.df, align 8
  %i.adn = ptrtoint ptr %i.adl to i64
  %i.ado = ptrtoint ptr %i.adm to i64
  %i.adp = sub i64 %i.adn, %i.ado
  %i.adq = getelementptr inbounds i8, ptr %i.ade, i64 %i.adp
  store ptr %i.ade, ptr %i.df, align 8
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.act
  store ptr %i.adr, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit409, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i413
  %i.ads = phi ptr [ %i.ack, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit409 ], [ %i.adq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i413 ] ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 1
  store ptr %i.adt, ptr %i.a, align 8
  store i8 0, ptr %i.ads, align 1
  %i.adu = load ptr, ptr %i.cl, align 8
  %i.adv = getelementptr inbounds i8, ptr %i.adu, i64 -8
  %i.adw = icmp eq ptr %.2885, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %.2885, i64 8
  br i1 %i.adw, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415._crit_edge, label %bb.ce

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415._crit_edge: ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415, %.preheader
  %i.ady = getelementptr i8, ptr %1, i64 8
  %.val319 = load ptr, ptr %i.ady, align 8        ; 2 uses
  %.val320 = load ptr, ptr %i.a, align 8
  %i.adz = ptrtoint ptr %.val320 to i64
  %i.aea = ptrtoint ptr %.val319 to i64
  %i.aeb = add i64 %i.ce, %i.aea
  %i.aec = sub i64 %i.adz, %i.aeb
  %i.aed = trunc i64 %i.aec to i32
  %i.aee = add i32 %i.aed, -5                     ; 5 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.ce ; 5 uses
  %i.aeg = lshr i32 %i.aee, 7
  %i.aeh = trunc i32 %i.aee to i8
  %i.aei = or i8 %i.aeh, -128
  %.112.i.i = getelementptr inbounds nuw i8, ptr %i.aef, i64 1
  store i8 %i.aei, ptr %i.aef, align 1
  %i.aej = lshr i32 %i.aee, 14
  %i.aek = trunc i32 %i.aeg to i8
  %i.ael = or i8 %i.aek, -128
  %.112.1.i.i = getelementptr inbounds nuw i8, ptr %i.aef, i64 2
  store i8 %i.ael, ptr %.112.i.i, align 1
  %i.aem = lshr i32 %i.aee, 21
  %i.aen = trunc i32 %i.aej to i8
  %i.aeo = or i8 %i.aen, -128
  %.112.2.i.i = getelementptr inbounds nuw i8, ptr %i.aef, i64 3
  store i8 %i.aeo, ptr %.112.1.i.i, align 1
  %i.aep = lshr i32 %i.aee, 28
  %i.aeq = trunc i32 %i.aem to i8
  %i.aer = or i8 %i.aeq, -128
  %.112.3.i.i = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  store i8 %i.aer, ptr %.112.2.i.i, align 1
  %i.aes = trunc nuw nsw i32 %i.aep to i8
  store i8 %i.aes, ptr %.112.3.i.i, align 1
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415._crit_edge, %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.aeu = load ptr, ptr %i.aet, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = ptrtoint ptr %i.aeu to i64
  %i.aey = ptrtoint ptr %i.aew to i64
  %i.aez = sub i64 %i.aex, %i.aey
  %i.afa = sdiv exact i64 %i.aez, 40
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.afc = load ptr, ptr %i.afb, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.afe = load ptr, ptr %i.afd, align 8
  %i.aff = ptrtoint ptr %i.afc to i64
  %i.afg = ptrtoint ptr %i.afe to i64
  %i.afh = sub i64 %i.aff, %i.afg
  %.neg = sdiv exact i64 %i.afh, -40
  %.not279 = icmp eq i64 %i.afa, %.neg
  br i1 %.not279, label %bb.dh, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.afi = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 2, ptr noundef nonnull %1) ; 2 uses
  %i.afj = load ptr, ptr %i.aet, align 8
  %i.afk = load ptr, ptr %i.aev, align 8
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = ptrtoint ptr %i.afk to i64
  %i.afn = sub i64 %i.afl, %i.afm
  %i.afo = sdiv exact i64 %i.afn, 40
end_hunk_1
begin_hunk_2_@_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE:bb.a
  %i.alj = ptrtoint ptr %i.alh to i64
  %i.alk = sub i64 %i.ali, %i.alj                 ; 2 uses
  %i.all = shl nsw i64 %i.alk, 1                  ; 2 uses
  %i.alm = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i436 = icmp eq i64 %i.alk, -1
  br i1 %.not.i.i.i436, label %bb.de, label %bb.df, !prof !5

bb.de:                                            ; preds = %bb.dd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.aln = and i64 %i.all, -8
  %i.alo = add i64 %i.aln, 8                      ; 3 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alm, i64 24
  %i.alq = load i64, ptr %i.alp, align 8
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alm, i64 16 ; 3 uses
  %i.als = load i64, ptr %i.alr, align 8          ; 2 uses
  %i.alt = sub i64 %i.alq, %i.als
  %i.alu = icmp ugt i64 %i.alo, %i.alt
  br i1 %i.alu, label %bb.dg, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i437, !prof !5

bb.dg:                                            ; preds = %bb.df
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.alm, i64 noundef %i.alo) #10
  %.pre.i.i.i.i438 = load i64, ptr %i.alr, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i437

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i437: ; preds = %bb.dg, %bb.df
  %i.alv = phi i64 [ %.pre.i.i.i.i438, %bb.dg ], [ %i.als, %bb.df ] ; 2 uses
  %i.alw = inttoptr i64 %i.alv to ptr             ; 4 uses
  %i.alx = add i64 %i.alv, %i.alo
  store i64 %i.alx, ptr %i.alr, align 8
  %i.aly = load ptr, ptr %i.agb, align 8          ; 2 uses
  %i.alz = load ptr, ptr %i.a, align 8
  %i.ama = ptrtoint ptr %i.alz to i64
  %i.amb = ptrtoint ptr %i.aly to i64
  %i.amc = sub i64 %i.ama, %i.amb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alw, ptr align 1 %i.aly, i64 %i.amc, i1 false)
  %i.amd = load ptr, ptr %i.a, align 8
  %i.ame = load ptr, ptr %i.agb, align 8
  %i.amf = ptrtoint ptr %i.amd to i64
  %i.amg = ptrtoint ptr %i.ame to i64
  %i.amh = sub i64 %i.amf, %i.amg
  %i.ami = getelementptr inbounds i8, ptr %i.alw, i64 %i.amh
  store ptr %i.alw, ptr %i.agb, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.all
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 1
  store ptr %i.amk, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit439

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit439: ; preds = %bb.dc, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i437
  %i.aml = phi ptr [ %i.ald, %bb.dc ], [ %i.ami, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i437 ] ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 1
  store ptr %i.amm, ptr %i.a, align 8
  store i8 0, ptr %i.aml, align 1
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.7158.0.copyload)
  %i.amn = getelementptr inbounds nuw i8, ptr %.0260894, i64 40 ; 2 uses
  %.not281 = icmp eq ptr %i.amn, %i.aga
  br i1 %.not281, label %._crit_edge897, label %bb.dc

bb.dh:                                            ; preds = %._crit_edge897, %bb.cn
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.amp = load ptr, ptr %i.amo, align 8
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.amr = load ptr, ptr %i.amq, align 8
  %i.ams = icmp eq ptr %i.amp, %i.amr
  br i1 %i.ams, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.amt = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 3, ptr noundef nonnull %1) ; 2 uses
  %i.amu = load ptr, ptr %i.amo, align 8
  %i.amv = load ptr, ptr %i.amq, align 8
  %i.amw = ptrtoint ptr %i.amu to i64
  %i.amx = ptrtoint ptr %i.amv to i64
  %i.amy = sub i64 %i.amw, %i.amx
  %i.amz = ashr exact i64 %i.amy, 3
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.amz)
  %i.ana = load ptr, ptr %i.amq, align 8          ; 2 uses
  %i.anb = load ptr, ptr %i.amo, align 8          ; 2 uses
  %.not282898 = icmp eq ptr %i.ana, %i.anb
  br i1 %.not282898, label %._crit_edge903, label %.lr.ph902

._crit_edge903:                                   ; preds = %.lr.ph902, %bb.di
  %.0261.lcssa = phi i32 [ 0, %bb.di ], [ %spec.select, %.lr.ph902 ]
  %i.anc = getelementptr i8, ptr %1, i64 8
  %.val315 = load ptr, ptr %i.anc, align 8        ; 2 uses
  %.val316 = load ptr, ptr %i.a, align 8
  %i.and = ptrtoint ptr %.val316 to i64
  %i.ane = ptrtoint ptr %.val315 to i64
  %i.anf = add i64 %i.amt, %i.ane
  %i.ang = sub i64 %i.and, %i.anf
  %i.anh = trunc i64 %i.ang to i32
  %i.ani = add i32 %i.anh, -5                     ; 5 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.amt ; 5 uses
  %i.ank = lshr i32 %i.ani, 7
  %i.anl = trunc i32 %i.ani to i8
  %i.anm = or i8 %i.anl, -128
  %.112.i.i440 = getelementptr inbounds nuw i8, ptr %i.anj, i64 1
  store i8 %i.anm, ptr %i.anj, align 1
  %i.ann = lshr i32 %i.ani, 14
  %i.ano = trunc i32 %i.ank to i8
  %i.anp = or i8 %i.ano, -128
  %.112.1.i.i441 = getelementptr inbounds nuw i8, ptr %i.anj, i64 2
  store i8 %i.anp, ptr %.112.i.i440, align 1
  %i.anq = lshr i32 %i.ani, 21
  %i.anr = trunc i32 %i.ann to i8
  %i.ans = or i8 %i.anr, -128
  %.112.2.i.i442 = getelementptr inbounds nuw i8, ptr %i.anj, i64 3
  store i8 %i.ans, ptr %.112.1.i.i441, align 1
  %i.ant = lshr i32 %i.ani, 28
  %i.anu = trunc i32 %i.anq to i8
  %i.anv = or i8 %i.anu, -128
  %.112.3.i.i443 = getelementptr inbounds nuw i8, ptr %i.anj, i64 4
  store i8 %i.anv, ptr %.112.2.i.i442, align 1
  %i.anw = trunc nuw nsw i32 %i.ant to i8
  store i8 %i.anw, ptr %.112.3.i.i443, align 1
  br label %bb.dj

.lr.ph902:                                        ; preds = %bb.di, %.lr.ph902
  %.0261900 = phi i32 [ %spec.select, %.lr.ph902 ], [ 0, %bb.di ]
  %.0264899 = phi ptr [ %i.aod, %.lr.ph902 ], [ %i.ana, %bb.di ] ; 2 uses
  %i.anx = load ptr, ptr %.0264899, align 8       ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 56
  %.sroa.0.0.copyload.i444 = load i32, ptr %i.any, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.0.0.copyload.i444)
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 104
  %i.aoa = load i64, ptr %i.anz, align 8
  %i.aob = icmp ne i64 %i.aoa, 0
  %i.aoc = zext i1 %i.aob to i32
  %spec.select = add i32 %.0261900, %i.aoc        ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.0264899, i64 8 ; 2 uses
  %.not282 = icmp eq ptr %i.aod, %i.anb
  br i1 %.not282, label %._crit_edge903, label %.lr.ph902

bb.dj:                                            ; preds = %._crit_edge903, %bb.dh
  %.2263 = phi i32 [ 0, %bb.dh ], [ %.0261.lcssa, %._crit_edge903 ] ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.aoh = load ptr, ptr %i.aog, align 8
  %i.aoi = icmp eq ptr %i.aof, %i.aoh
  br i1 %i.aoi, label %bb.ep, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aoj = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 4, ptr noundef nonnull %1) ; 2 uses
  %i.aok = load ptr, ptr %i.aoe, align 8
  %i.aol = load ptr, ptr %i.aog, align 8
  %i.aom = ptrtoint ptr %i.aok to i64
  %i.aon = ptrtoint ptr %i.aol to i64
  %i.aoo = sub i64 %i.aom, %i.aon
  %i.aop = sdiv exact i64 %i.aoo, 56
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aop)
  %i.aoq = load ptr, ptr %i.aog, align 8          ; 2 uses
  %i.aor = load ptr, ptr %i.aoe, align 8          ; 2 uses
  %.not283905 = icmp eq ptr %i.aoq, %i.aor
  br i1 %.not283905, label %._crit_edge909, label %.lr.ph908

.lr.ph908:                                        ; preds = %bb.dk
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 24 uses
  br label %bb.dl

._crit_edge909:                                   ; preds = %bb.eo, %bb.dk
  %i.aot = getelementptr i8, ptr %1, i64 8
  %.val313 = load ptr, ptr %i.aot, align 8        ; 2 uses
  %.val314 = load ptr, ptr %i.a, align 8
  %i.aou = ptrtoint ptr %.val314 to i64
  %i.aov = ptrtoint ptr %.val313 to i64
  %i.aow = add i64 %i.aoj, %i.aov
  %i.aox = sub i64 %i.aou, %i.aow
  %i.aoy = trunc i64 %i.aox to i32
  %i.aoz = add i32 %i.aoy, -5                     ; 5 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.aoj ; 5 uses
  %i.apb = lshr i32 %i.aoz, 7
  %i.apc = trunc i32 %i.aoz to i8
  %i.apd = or i8 %i.apc, -128
  %.112.i.i445 = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  store i8 %i.apd, ptr %i.apa, align 1
  %i.ape = lshr i32 %i.aoz, 14
  %i.apf = trunc i32 %i.apb to i8
  %i.apg = or i8 %i.apf, -128
  %.112.1.i.i446 = getelementptr inbounds nuw i8, ptr %i.apa, i64 2
  store i8 %i.apg, ptr %.112.i.i445, align 1
  %i.aph = lshr i32 %i.aoz, 21
  %i.api = trunc i32 %i.ape to i8
  %i.apj = or i8 %i.api, -128
  %.112.2.i.i447 = getelementptr inbounds nuw i8, ptr %i.apa, i64 3
  store i8 %i.apj, ptr %.112.1.i.i446, align 1
  %i.apk = lshr i32 %i.aoz, 28
  %i.apl = trunc i32 %i.aph to i8
  %i.apm = or i8 %i.apl, -128
  %.112.3.i.i448 = getelementptr inbounds nuw i8, ptr %i.apa, i64 4
  store i8 %i.apm, ptr %.112.2.i.i447, align 1
  %i.apn = trunc nuw nsw i32 %i.apk to i8
  store i8 %i.apn, ptr %.112.3.i.i448, align 1
  br label %bb.ep

bb.dl:                                            ; preds = %.lr.ph908, %bb.eo
  %.0265906 = phi ptr [ %i.aoq, %.lr.ph908 ], [ %i.azp, %bb.eo ] ; 9 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %.0265906, i64 16
  %i.app = getelementptr inbounds nuw i8, ptr %.0265906, i64 48 ; 2 uses
  %i.apq = load i8, ptr %i.app, align 8, !range !21, !noundef !22
  %i.apr = trunc nuw i8 %i.apq to i1
  br i1 %i.apr, label %bb.dm, label %bb.dv

bb.dm:                                            ; preds = %bb.dl
  %i.aps = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 1
  %i.apu = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.apv = icmp ugt ptr %i.apt, %i.apu
  br i1 %i.apv, label %bb.dn, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453

bb.dn:                                            ; preds = %bb.dm
  %i.apw = load ptr, ptr %i.aos, align 8
  %i.apx = ptrtoint ptr %i.apu to i64
  %i.apy = ptrtoint ptr %i.apw to i64
  %i.apz = sub i64 %i.apx, %i.apy                 ; 2 uses
  %i.aqa = shl nsw i64 %i.apz, 1                  ; 2 uses
  %i.aqb = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i450 = icmp eq i64 %i.apz, -1
  br i1 %.not.i.i.i450, label %bb.do, label %bb.dp, !prof !5

bb.do:                                            ; preds = %bb.dn
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.dp:                                            ; preds = %bb.dn
  %i.aqc = and i64 %i.aqa, -8
  %i.aqd = add i64 %i.aqc, 8                      ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqb, i64 24
  %i.aqf = load i64, ptr %i.aqe, align 8
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16 ; 3 uses
  %i.aqh = load i64, ptr %i.aqg, align 8          ; 2 uses
  %i.aqi = sub i64 %i.aqf, %i.aqh
  %i.aqj = icmp ugt i64 %i.aqd, %i.aqi
  br i1 %i.aqj, label %bb.dq, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451, !prof !5

bb.dq:                                            ; preds = %bb.dp
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aqb, i64 noundef %i.aqd) #10
  %.pre.i.i.i.i452 = load i64, ptr %i.aqg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451: ; preds = %bb.dq, %bb.dp
  %i.aqk = phi i64 [ %.pre.i.i.i.i452, %bb.dq ], [ %i.aqh, %bb.dp ] ; 2 uses
  %i.aql = inttoptr i64 %i.aqk to ptr             ; 4 uses
  %i.aqm = add i64 %i.aqk, %i.aqd
  store i64 %i.aqm, ptr %i.aqg, align 8
  %i.aqn = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.aqo = load ptr, ptr %i.a, align 8
  %i.aqp = ptrtoint ptr %i.aqo to i64
  %i.aqq = ptrtoint ptr %i.aqn to i64
  %i.aqr = sub i64 %i.aqp, %i.aqq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aql, ptr align 1 %i.aqn, i64 %i.aqr, i1 false)
  %i.aqs = load ptr, ptr %i.a, align 8
  %i.aqt = load ptr, ptr %i.aos, align 8
  %i.aqu = ptrtoint ptr %i.aqs to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  %i.aqx = getelementptr inbounds i8, ptr %i.aql, i64 %i.aqw
  store ptr %i.aql, ptr %i.aos, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqa
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 1
  store ptr %i.aqz, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453: ; preds = %bb.dm, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451
  %i.ara = phi ptr [ %i.aps, %bb.dm ], [ %i.aqx, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451 ] ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 1
  store ptr %i.arb, ptr %i.a, align 8
  store i8 64, ptr %i.ara, align 1
  %i.arc = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 1
  %i.are = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.arf = icmp ugt ptr %i.ard, %i.are
  br i1 %i.arf, label %bb.dr, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458

bb.dr:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453
  %i.arg = load ptr, ptr %i.aos, align 8
  %i.arh = ptrtoint ptr %i.are to i64
  %i.ari = ptrtoint ptr %i.arg to i64
  %i.arj = sub i64 %i.arh, %i.ari                 ; 2 uses
  %i.ark = shl nsw i64 %i.arj, 1                  ; 2 uses
  %i.arl = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i455 = icmp eq i64 %i.arj, -1
  br i1 %.not.i.i.i455, label %bb.ds, label %bb.dt, !prof !5

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.arm = and i64 %i.ark, -8
  %i.arn = add i64 %i.arm, 8                      ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.arp = load i64, ptr %i.aro, align 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arl, i64 16 ; 3 uses
  %i.arr = load i64, ptr %i.arq, align 8          ; 2 uses
  %i.ars = sub i64 %i.arp, %i.arr
  %i.art = icmp ugt i64 %i.arn, %i.ars
  br i1 %i.art, label %bb.du, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456, !prof !5

bb.du:                                            ; preds = %bb.dt
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.arl, i64 noundef %i.arn) #10
  %.pre.i.i.i.i457 = load i64, ptr %i.arq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456: ; preds = %bb.du, %bb.dt
  %i.aru = phi i64 [ %.pre.i.i.i.i457, %bb.du ], [ %i.arr, %bb.dt ] ; 2 uses
  %i.arv = inttoptr i64 %i.aru to ptr             ; 4 uses
  %i.arw = add i64 %i.aru, %i.arn
  store i64 %i.arw, ptr %i.arq, align 8
  %i.arx = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.ary = load ptr, ptr %i.a, align 8
  %i.arz = ptrtoint ptr %i.ary to i64
  %i.asa = ptrtoint ptr %i.arx to i64
  %i.asb = sub i64 %i.arz, %i.asa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arv, ptr align 1 %i.arx, i64 %i.asb, i1 false)
  %i.asc = load ptr, ptr %i.a, align 8
  %i.asd = load ptr, ptr %i.aos, align 8
  %i.ase = ptrtoint ptr %i.asc to i64
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = sub i64 %i.ase, %i.asf
  %i.ash = getelementptr inbounds i8, ptr %i.arv, i64 %i.asg
  store ptr %i.arv, ptr %i.aos, align 8
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.ark
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 1
  store ptr %i.asj, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456
  %i.ask = phi ptr [ %i.arc, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453 ], [ %i.ash, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456 ] ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 1
  store ptr %i.asl, ptr %i.a, align 8
  store i8 0, ptr %i.ask, align 1
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458, %bb.dl
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %.0265906)
  %i.asm = getelementptr inbounds nuw i8, ptr %.0265906, i64 14 ; 3 uses
  %i.asn = load i8, ptr %i.asm, align 2
  %i.aso = icmp eq i8 %i.asn, 1
  %i.asp = select i1 %i.aso, i8 4, i8 0
  %i.asq = getelementptr inbounds nuw i8, ptr %.0265906, i64 13
  %i.asr = load i8, ptr %i.asq, align 1, !range !21, !noundef !22
  %i.ass = shl nuw nsw i8 %i.asr, 1
  %i.ast = or disjoint i8 %i.asp, %i.ass
  %i.asu = getelementptr inbounds nuw i8, ptr %.0265906, i64 12 ; 2 uses
  %i.asv = load i8, ptr %i.asu, align 4, !range !21, !noundef !22
  %i.asw = or disjoint i8 %i.ast, %i.asv
  %i.asx = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 1
  %i.asz = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ata = icmp ugt ptr %i.asy, %i.asz
  br i1 %i.ata, label %bb.dw, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463

bb.dw:                                            ; preds = %bb.dv
  %i.atb = load ptr, ptr %i.aos, align 8
  %i.atc = ptrtoint ptr %i.asz to i64
  %i.atd = ptrtoint ptr %i.atb to i64
  %i.ate = sub i64 %i.atc, %i.atd                 ; 2 uses
  %i.atf = shl nsw i64 %i.ate, 1                  ; 2 uses
  %i.atg = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i460 = icmp eq i64 %i.ate, -1
  br i1 %.not.i.i.i460, label %bb.dx, label %bb.dy, !prof !5

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.ath = and i64 %i.atf, -8
  %i.ati = add i64 %i.ath, 8                      ; 3 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  %i.atk = load i64, ptr %i.atj, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 16 ; 3 uses
  %i.atm = load i64, ptr %i.atl, align 8          ; 2 uses
  %i.atn = sub i64 %i.atk, %i.atm
  %i.ato = icmp ugt i64 %i.ati, %i.atn
  br i1 %i.ato, label %bb.dz, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461, !prof !5

bb.dz:                                            ; preds = %bb.dy
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.atg, i64 noundef %i.ati) #10
  %.pre.i.i.i.i462 = load i64, ptr %i.atl, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461: ; preds = %bb.dz, %bb.dy
  %i.atp = phi i64 [ %.pre.i.i.i.i462, %bb.dz ], [ %i.atm, %bb.dy ] ; 2 uses
  %i.atq = inttoptr i64 %i.atp to ptr             ; 4 uses
  %i.atr = add i64 %i.atp, %i.ati
  store i64 %i.atr, ptr %i.atl, align 8
  %i.ats = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.att = load ptr, ptr %i.a, align 8
  %i.atu = ptrtoint ptr %i.att to i64
  %i.atv = ptrtoint ptr %i.ats to i64
  %i.atw = sub i64 %i.atu, %i.atv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atq, ptr align 1 %i.ats, i64 %i.atw, i1 false)
  %i.atx = load ptr, ptr %i.a, align 8
  %i.aty = load ptr, ptr %i.aos, align 8
  %i.atz = ptrtoint ptr %i.atx to i64
  %i.aua = ptrtoint ptr %i.aty to i64
  %i.aub = sub i64 %i.atz, %i.aua
  %i.auc = getelementptr inbounds i8, ptr %i.atq, i64 %i.aub
  store ptr %i.atq, ptr %i.aos, align 8
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atq, i64 %i.atf
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 1
  store ptr %i.aue, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463: ; preds = %bb.dv, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461
  %i.auf = phi ptr [ %i.asx, %bb.dv ], [ %i.auc, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461 ] ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 1
  store ptr %i.aug, ptr %i.a, align 8
  store i8 %i.asw, ptr %i.auf, align 1
  %i.auh = getelementptr inbounds nuw i8, ptr %.0265906, i64 4
  %i.aui = load i32, ptr %i.auh, align 4          ; 3 uses
  %.val323.val = load i8, ptr %i.asm, align 2
  %i.auj = icmp eq i8 %.val323.val, 1
  br i1 %i.auj, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463
  %i.auk = zext i32 %i.aui to i64                 ; 2 uses
  %i.aul = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 10
  %i.aun = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.auo = icmp ugt ptr %i.aum, %i.aun
  br i1 %i.auo, label %bb.eb, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.aup = load ptr, ptr %i.aos, align 8
  %i.auq = ptrtoint ptr %i.aun to i64
  %i.aur = ptrtoint ptr %i.aup to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = shl nsw i64 %i.aus, 1                  ; 2 uses
  %i.auu = load ptr, ptr %1, align 8              ; 3 uses
  %i.auv = and i64 %i.aut, -8
  %i.auw = add i64 %i.auv, 16                     ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auu, i64 24
  %i.auy = load i64, ptr %i.aux, align 8
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auu, i64 16 ; 3 uses
  %i.ava = load i64, ptr %i.auz, align 8          ; 2 uses
  %i.avb = sub i64 %i.auy, %i.ava
  %i.avc = icmp ugt i64 %i.auw, %i.avb
  br i1 %i.avc, label %bb.ec, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i, !prof !5

bb.ec:                                            ; preds = %bb.eb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.auu, i64 noundef %i.auw) #10
  %.pre.i.i.i.i.i = load i64, ptr %i.auz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i: ; preds = %bb.ec, %bb.eb
  %i.avd = phi i64 [ %.pre.i.i.i.i.i, %bb.ec ], [ %i.ava, %bb.eb ] ; 2 uses
  %i.ave = inttoptr i64 %i.avd to ptr             ; 4 uses
  %i.avf = add i64 %i.avd, %i.auw
  store i64 %i.avf, ptr %i.auz, align 8
  %i.avg = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.avh = load ptr, ptr %i.a, align 8
  %i.avi = ptrtoint ptr %i.avh to i64
  %i.avj = ptrtoint ptr %i.avg to i64
  %i.avk = sub i64 %i.avi, %i.avj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ave, ptr align 1 %i.avg, i64 %i.avk, i1 false)
  %i.avl = load ptr, ptr %i.a, align 8
  %i.avm = load ptr, ptr %i.aos, align 8
  %i.avn = ptrtoint ptr %i.avl to i64
  %i.avo = ptrtoint ptr %i.avm to i64
  %i.avp = sub i64 %i.avn, %i.avo
  %i.avq = getelementptr inbounds i8, ptr %i.ave, i64 %i.avp ; 2 uses
  store ptr %i.avq, ptr %i.a, align 8
  store ptr %i.ave, ptr %i.aos, align 8
  %i.avr = getelementptr i8, ptr %i.ave, i64 %i.aut
  %i.avs = getelementptr i8, ptr %i.avr, i64 10
  store ptr %i.avs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i, %bb.ea
  %i.avt = phi ptr [ %i.aul, %bb.ea ], [ %i.avq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i ]
  %i.avu = icmp ugt i32 %i.aui, 127
  br i1 %i.avu, label %.lr.ph.i.i.i, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.avz, %.lr.ph.i.i.i ], [ %i.auk, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i ] ; 3 uses
  %i.avv = trunc i64 %.05.i.i.i to i8
  %i.avw = or i8 %i.avv, -128
  %i.avx = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 1
  store ptr %i.avy, ptr %i.a, align 8
  store i8 %i.avw, ptr %i.avx, align 1
  %i.avz = lshr i64 %.05.i.i.i, 7                 ; 2 uses
  %i.awa = icmp samesign ugt i64 %.05.i.i.i, 16383
  br i1 %i.awa, label %.lr.ph.i.i.i, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i
  %i.awb = phi ptr [ %i.avt, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i ], [ %.pre.i.i, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.auk, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i ], [ %i.avz, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i ]
  %i.awc = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awb, i64 1
  store ptr %i.awd, ptr %i.a, align 8
  store i8 %i.awc, ptr %i.awb, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"

bb.ed:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.aui)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit": ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i, %bb.ed
  %i.awe = load i8, ptr %i.asu, align 4, !range !21, !noundef !22
  %i.awf = trunc nuw i8 %i.awe to i1
  br i1 %i.awf, label %bb.ee, label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"

bb.ee:                                            ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"
  %i.awg = getelementptr inbounds nuw i8, ptr %.0265906, i64 8
  %i.awh = load i32, ptr %i.awg, align 8          ; 3 uses
  %.val321.val = load i8, ptr %i.asm, align 2
  %i.awi = icmp eq i8 %.val321.val, 1
  br i1 %i.awi, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.awj = zext i32 %i.awh to i64                 ; 2 uses
  %i.awk = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 10
  %i.awm = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.awn = icmp ugt ptr %i.awl, %i.awm
  br i1 %i.awn, label %bb.eg, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464

bb.eg:                                            ; preds = %bb.ef
  %i.awo = load ptr, ptr %i.aos, align 8
  %i.awp = ptrtoint ptr %i.awm to i64
  %i.awq = ptrtoint ptr %i.awo to i64
  %i.awr = sub i64 %i.awp, %i.awq
  %i.aws = shl nsw i64 %i.awr, 1                  ; 2 uses
  %i.awt = load ptr, ptr %1, align 8              ; 3 uses
  %i.awu = and i64 %i.aws, -8
  %i.awv = add i64 %i.awu, 16                     ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  %i.awx = load i64, ptr %i.aww, align 8
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awt, i64 16 ; 3 uses
  %i.awz = load i64, ptr %i.awy, align 8          ; 2 uses
  %i.axa = sub i64 %i.awx, %i.awz
  %i.axb = icmp ugt i64 %i.awv, %i.axa
  br i1 %i.axb, label %bb.eh, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471, !prof !5

bb.eh:                                            ; preds = %bb.eg
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.awt, i64 noundef %i.awv) #10
  %.pre.i.i.i.i.i472 = load i64, ptr %i.awy, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471: ; preds = %bb.eh, %bb.eg
  %i.axc = phi i64 [ %.pre.i.i.i.i.i472, %bb.eh ], [ %i.awz, %bb.eg ] ; 2 uses
  %i.axd = inttoptr i64 %i.axc to ptr             ; 4 uses
  %i.axe = add i64 %i.axc, %i.awv
  store i64 %i.axe, ptr %i.awy, align 8
  %i.axf = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.axg = load ptr, ptr %i.a, align 8
  %i.axh = ptrtoint ptr %i.axg to i64
  %i.axi = ptrtoint ptr %i.axf to i64
  %i.axj = sub i64 %i.axh, %i.axi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axd, ptr align 1 %i.axf, i64 %i.axj, i1 false)
  %i.axk = load ptr, ptr %i.a, align 8
  %i.axl = load ptr, ptr %i.aos, align 8
  %i.axm = ptrtoint ptr %i.axk to i64
  %i.axn = ptrtoint ptr %i.axl to i64
  %i.axo = sub i64 %i.axm, %i.axn
  %i.axp = getelementptr inbounds i8, ptr %i.axd, i64 %i.axo ; 2 uses
  store ptr %i.axp, ptr %i.a, align 8
  store ptr %i.axd, ptr %i.aos, align 8
  %i.axq = getelementptr i8, ptr %i.axd, i64 %i.aws
  %i.axr = getelementptr i8, ptr %i.axq, i64 10
  store ptr %i.axr, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471, %bb.ef
  %i.axs = phi ptr [ %i.awk, %bb.ef ], [ %i.axp, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471 ]
  %i.axt = icmp ugt i32 %i.awh, 127
  br i1 %i.axt, label %.lr.ph.i.i.i467, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465

.lr.ph.i.i.i467:                                  ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464, %.lr.ph.i.i.i467
  %.05.i.i.i468 = phi i64 [ %i.axy, %.lr.ph.i.i.i467 ], [ %i.awj, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464 ] ; 3 uses
  %i.axu = trunc i64 %.05.i.i.i468 to i8
  %i.axv = or i8 %i.axu, -128
  %i.axw = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 1
  store ptr %i.axx, ptr %i.a, align 8
  store i8 %i.axv, ptr %i.axw, align 1
  %i.axy = lshr i64 %.05.i.i.i468, 7              ; 2 uses
  %i.axz = icmp samesign ugt i64 %.05.i.i.i468, 16383
  br i1 %i.axz, label %.lr.ph.i.i.i467, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469: ; preds = %.lr.ph.i.i.i467
  %.pre.i.i470 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464
  %i.aya = phi ptr [ %i.axs, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464 ], [ %.pre.i.i470, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469 ] ; 2 uses
  %.0.lcssa.i.i.i466 = phi i64 [ %i.awj, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464 ], [ %i.axy, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469 ]
  %i.ayb = trunc nuw nsw i64 %.0.lcssa.i.i.i466 to i8
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 1
  store ptr %i.ayc, ptr %i.a, align 8
  store i8 %i.ayb, ptr %i.aya, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"

bb.ei:                                            ; preds = %bb.ee
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.awh)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473": ; preds = %bb.ei, %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"
  %i.ayd = load i8, ptr %i.app, align 8, !range !21, !noundef !22
  %i.aye = trunc nuw i8 %i.ayd to i1
  br i1 %i.aye, label %bb.ej, label %bb.eo

bb.ej:                                            ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_136WriteInitializerExpressionWithoutEndEPNS1_10ZoneBufferERKNS1_12WasmInitExprE(ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.apo)
  %i.ayf = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 1
  %i.ayh = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ayi = icmp ugt ptr %i.ayg, %i.ayh
  br i1 %i.ayi, label %bb.ek, label %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit

bb.ek:                                            ; preds = %bb.ej
  %i.ayj = load ptr, ptr %i.aos, align 8
  %i.ayk = ptrtoint ptr %i.ayh to i64
  %i.ayl = ptrtoint ptr %i.ayj to i64
  %i.aym = sub i64 %i.ayk, %i.ayl                 ; 2 uses
  %i.ayn = shl nsw i64 %i.aym, 1                  ; 2 uses
  %i.ayo = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aym, -1
  br i1 %.not.i.i.i.i, label %bb.el, label %bb.em, !prof !5

bb.el:                                            ; preds = %bb.ek
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.ayp = and i64 %i.ayn, -8
  %i.ayq = add i64 %i.ayp, 8                      ; 3 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayo, i64 24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayo, i64 16 ; 3 uses
  %i.ayu = load i64, ptr %i.ayt, align 8          ; 2 uses
  %i.ayv = sub i64 %i.ays, %i.ayu
  %i.ayw = icmp ugt i64 %i.ayq, %i.ayv
  br i1 %i.ayw, label %bb.en, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474, !prof !5

bb.en:                                            ; preds = %bb.em
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ayo, i64 noundef %i.ayq) #10
  %.pre.i.i.i.i.i475 = load i64, ptr %i.ayt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474: ; preds = %bb.en, %bb.em
  %i.ayx = phi i64 [ %.pre.i.i.i.i.i475, %bb.en ], [ %i.ayu, %bb.em ] ; 2 uses
  %i.ayy = inttoptr i64 %i.ayx to ptr             ; 4 uses
  %i.ayz = add i64 %i.ayx, %i.ayq
  store i64 %i.ayz, ptr %i.ayt, align 8
  %i.aza = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.azb = load ptr, ptr %i.a, align 8
  %i.azc = ptrtoint ptr %i.azb to i64
  %i.azd = ptrtoint ptr %i.aza to i64
  %i.aze = sub i64 %i.azc, %i.azd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayy, ptr align 1 %i.aza, i64 %i.aze, i1 false)
  %i.azf = load ptr, ptr %i.a, align 8
  %i.azg = load ptr, ptr %i.aos, align 8
  %i.azh = ptrtoint ptr %i.azf to i64
  %i.azi = ptrtoint ptr %i.azg to i64
  %i.azj = sub i64 %i.azh, %i.azi
  %i.azk = getelementptr inbounds i8, ptr %i.ayy, i64 %i.azj
  store ptr %i.ayy, ptr %i.aos, align 8
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayy, i64 %i.ayn
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 1
  store ptr %i.azm, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit

_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit: ; preds = %bb.ej, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474
  %i.azn = phi ptr [ %i.ayf, %bb.ej ], [ %i.azk, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474 ] ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 1
  store ptr %i.azo, ptr %i.a, align 8
  store i8 11, ptr %i.azn, align 1
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"
  %i.azp = getelementptr inbounds nuw i8, ptr %.0265906, i64 56 ; 2 uses
  %.not283 = icmp eq ptr %i.azp, %i.aor
  br i1 %.not283, label %._crit_edge909, label %bb.dl

bb.ep:                                            ; preds = %._crit_edge909, %bb.dj
  %i.azq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.azr = load ptr, ptr %i.azq, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.azt = load ptr, ptr %i.azs, align 8
  %i.azu = icmp eq ptr %i.azr, %i.azt
  br i1 %i.azu, label %bb.ff, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.azv = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 5, ptr noundef nonnull %1) ; 2 uses
  %i.azw = load ptr, ptr %i.azq, align 8
  %i.azx = load ptr, ptr %i.azs, align 8
  %i.azy = ptrtoint ptr %i.azw to i64
  %i.azz = ptrtoint ptr %i.azx to i64
  %i.baa = sub i64 %i.azy, %i.azz
  %i.bab = sdiv exact i64 %i.baa, 12
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bab)
  %i.bac = load ptr, ptr %i.azs, align 8          ; 2 uses
  %i.bad = load ptr, ptr %i.azq, align 8          ; 2 uses
  %.not284910 = icmp eq ptr %i.bac, %i.bad
  br i1 %.not284910, label %._crit_edge914, label %.lr.ph913

.lr.ph913:                                        ; preds = %bb.eq
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  br label %bb.er

._crit_edge914:                                   ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503", %bb.eq
  %i.baf = getelementptr i8, ptr %1, i64 8
  %.val311 = load ptr, ptr %i.baf, align 8        ; 2 uses
  %.val312 = load ptr, ptr %i.a, align 8
  %i.bag = ptrtoint ptr %.val312 to i64
  %i.bah = ptrtoint ptr %.val311 to i64
  %i.bai = add i64 %i.azv, %i.bah
  %i.baj = sub i64 %i.bag, %i.bai
  %i.bak = trunc i64 %i.baj to i32
  %i.bal = add i32 %i.bak, -5                     ; 5 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.azv ; 5 uses
  %i.ban = lshr i32 %i.bal, 7
  %i.bao = trunc i32 %i.bal to i8
  %i.bap = or i8 %i.bao, -128
  %.112.i.i476 = getelementptr inbounds nuw i8, ptr %i.bam, i64 1
  store i8 %i.bap, ptr %i.bam, align 1
  %i.baq = lshr i32 %i.bal, 14
  %i.bar = trunc i32 %i.ban to i8
  %i.bas = or i8 %i.bar, -128
  %.112.1.i.i477 = getelementptr inbounds nuw i8, ptr %i.bam, i64 2
  store i8 %i.bas, ptr %.112.i.i476, align 1
  %i.bat = lshr i32 %i.bal, 21
  %i.bau = trunc i32 %i.baq to i8
  %i.bav = or i8 %i.bau, -128
  %.112.2.i.i478 = getelementptr inbounds nuw i8, ptr %i.bam, i64 3
  store i8 %i.bav, ptr %.112.1.i.i477, align 1
  %i.baw = lshr i32 %i.bal, 28
  %i.bax = trunc i32 %i.bat to i8
  %i.bay = or i8 %i.bax, -128
  %.112.3.i.i479 = getelementptr inbounds nuw i8, ptr %i.bam, i64 4
  store i8 %i.bay, ptr %.112.2.i.i478, align 1
  %i.baz = trunc nuw nsw i32 %i.baw to i8
  store i8 %i.baz, ptr %.112.3.i.i479, align 1
  br label %bb.ff

bb.er:                                            ; preds = %.lr.ph913, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"
  %.0266911 = phi ptr [ %i.bac, %.lr.ph913 ], [ %i.bgq, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503" ] ; 6 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.0266911, i64 10 ; 3 uses
  %i.bbb = load i8, ptr %i.bba, align 2
  %i.bbc = icmp eq i8 %i.bbb, 1
  %i.bbd = select i1 %i.bbc, i8 4, i8 0
  %i.bbe = getelementptr inbounds nuw i8, ptr %.0266911, i64 9
  %i.bbf = load i8, ptr %i.bbe, align 1, !range !21, !noundef !22
  %i.bbg = shl nuw nsw i8 %i.bbf, 1
  %i.bbh = or disjoint i8 %i.bbd, %i.bbg
  %i.bbi = getelementptr inbounds nuw i8, ptr %.0266911, i64 8 ; 2 uses
  %i.bbj = load i8, ptr %i.bbi, align 4, !range !21, !noundef !22
  %i.bbk = or disjoint i8 %i.bbh, %i.bbj
  %i.bbl = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 1
  %i.bbn = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bbo = icmp ugt ptr %i.bbm, %i.bbn
  br i1 %i.bbo, label %bb.es, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484

bb.es:                                            ; preds = %bb.er
  %i.bbp = load ptr, ptr %i.bae, align 8
  %i.bbq = ptrtoint ptr %i.bbn to i64
  %i.bbr = ptrtoint ptr %i.bbp to i64
  %i.bbs = sub i64 %i.bbq, %i.bbr                 ; 2 uses
  %i.bbt = shl nsw i64 %i.bbs, 1                  ; 2 uses
  %i.bbu = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i481 = icmp eq i64 %i.bbs, -1
  br i1 %.not.i.i.i481, label %bb.et, label %bb.eu, !prof !5

bb.et:                                            ; preds = %bb.es
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.bbv = and i64 %i.bbt, -8
  %i.bbw = add i64 %i.bbv, 8                      ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbu, i64 24
  %i.bby = load i64, ptr %i.bbx, align 8
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16 ; 3 uses
  %i.bca = load i64, ptr %i.bbz, align 8          ; 2 uses
  %i.bcb = sub i64 %i.bby, %i.bca
  %i.bcc = icmp ugt i64 %i.bbw, %i.bcb
  br i1 %i.bcc, label %bb.ev, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482, !prof !5

bb.ev:                                            ; preds = %bb.eu
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bbu, i64 noundef %i.bbw) #10
  %.pre.i.i.i.i483 = load i64, ptr %i.bbz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482: ; preds = %bb.ev, %bb.eu
  %i.bcd = phi i64 [ %.pre.i.i.i.i483, %bb.ev ], [ %i.bca, %bb.eu ] ; 2 uses
  %i.bce = inttoptr i64 %i.bcd to ptr             ; 4 uses
  %i.bcf = add i64 %i.bcd, %i.bbw
  store i64 %i.bcf, ptr %i.bbz, align 8
  %i.bcg = load ptr, ptr %i.bae, align 8          ; 2 uses
  %i.bch = load ptr, ptr %i.a, align 8
  %i.bci = ptrtoint ptr %i.bch to i64
  %i.bcj = ptrtoint ptr %i.bcg to i64
  %i.bck = sub i64 %i.bci, %i.bcj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bce, ptr align 1 %i.bcg, i64 %i.bck, i1 false)
  %i.bcl = load ptr, ptr %i.a, align 8
  %i.bcm = load ptr, ptr %i.bae, align 8
  %i.bcn = ptrtoint ptr %i.bcl to i64
  %i.bco = ptrtoint ptr %i.bcm to i64
  %i.bcp = sub i64 %i.bcn, %i.bco
  %i.bcq = getelementptr inbounds i8, ptr %i.bce, i64 %i.bcp
  store ptr %i.bce, ptr %i.bae, align 8
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.bbt
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 1
  store ptr %i.bcs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484: ; preds = %bb.er, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482
  %i.bct = phi ptr [ %i.bbl, %bb.er ], [ %i.bcq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482 ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 1
  store ptr %i.bcu, ptr %i.a, align 8
  store i8 %i.bbk, ptr %i.bct, align 1
  %i.bcv = load i32, ptr %.0266911, align 4       ; 3 uses
  %.val327.val = load i8, ptr %i.bba, align 2
  %i.bcw = icmp eq i8 %.val327.val, 1
  br i1 %i.bcw, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484
  %i.bcx = zext i32 %i.bcv to i64                 ; 2 uses
  %i.bcy = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 10
  %i.bda = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bdb = icmp ugt ptr %i.bcz, %i.bda
  br i1 %i.bdb, label %bb.ex, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485

bb.ex:                                            ; preds = %bb.ew
  %i.bdc = load ptr, ptr %i.bae, align 8
  %i.bdd = ptrtoint ptr %i.bda to i64
  %i.bde = ptrtoint ptr %i.bdc to i64
  %i.bdf = sub i64 %i.bdd, %i.bde
  %i.bdg = shl nsw i64 %i.bdf, 1                  ; 2 uses
  %i.bdh = load ptr, ptr %1, align 8              ; 3 uses
  %i.bdi = and i64 %i.bdg, -8
  %i.bdj = add i64 %i.bdi, 16                     ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24
  %i.bdl = load i64, ptr %i.bdk, align 8
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16 ; 3 uses
  %i.bdn = load i64, ptr %i.bdm, align 8          ; 2 uses
  %i.bdo = sub i64 %i.bdl, %i.bdn
  %i.bdp = icmp ugt i64 %i.bdj, %i.bdo
  br i1 %i.bdp, label %bb.ey, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492, !prof !5

bb.ey:                                            ; preds = %bb.ex
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bdh, i64 noundef %i.bdj) #10
  %.pre.i.i.i.i.i493 = load i64, ptr %i.bdm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492: ; preds = %bb.ey, %bb.ex
  %i.bdq = phi i64 [ %.pre.i.i.i.i.i493, %bb.ey ], [ %i.bdn, %bb.ex ] ; 2 uses
  %i.bdr = inttoptr i64 %i.bdq to ptr             ; 4 uses
  %i.bds = add i64 %i.bdq, %i.bdj
  store i64 %i.bds, ptr %i.bdm, align 8
  %i.bdt = load ptr, ptr %i.bae, align 8          ; 2 uses
  %i.bdu = load ptr, ptr %i.a, align 8
  %i.bdv = ptrtoint ptr %i.bdu to i64
  %i.bdw = ptrtoint ptr %i.bdt to i64
  %i.bdx = sub i64 %i.bdv, %i.bdw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdr, ptr align 1 %i.bdt, i64 %i.bdx, i1 false)
  %i.bdy = load ptr, ptr %i.a, align 8
  %i.bdz = load ptr, ptr %i.bae, align 8
  %i.bea = ptrtoint ptr %i.bdy to i64
  %i.beb = ptrtoint ptr %i.bdz to i64
  %i.bec = sub i64 %i.bea, %i.beb
  %i.bed = getelementptr inbounds i8, ptr %i.bdr, i64 %i.bec ; 2 uses
  store ptr %i.bed, ptr %i.a, align 8
  store ptr %i.bdr, ptr %i.bae, align 8
  %i.bee = getelementptr i8, ptr %i.bdr, i64 %i.bdg
  %i.bef = getelementptr i8, ptr %i.bee, i64 10
  store ptr %i.bef, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492, %bb.ew
  %i.beg = phi ptr [ %i.bcy, %bb.ew ], [ %i.bed, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492 ]
  %i.beh = icmp ugt i32 %i.bcv, 127
  br i1 %i.beh, label %.lr.ph.i.i.i488, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486

.lr.ph.i.i.i488:                                  ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485, %.lr.ph.i.i.i488
  %.05.i.i.i489 = phi i64 [ %i.bem, %.lr.ph.i.i.i488 ], [ %i.bcx, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485 ] ; 3 uses
  %i.bei = trunc i64 %.05.i.i.i489 to i8
  %i.bej = or i8 %i.bei, -128
  %i.bek = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 1
  store ptr %i.bel, ptr %i.a, align 8
  store i8 %i.bej, ptr %i.bek, align 1
  %i.bem = lshr i64 %.05.i.i.i489, 7              ; 2 uses
  %i.ben = icmp samesign ugt i64 %.05.i.i.i489, 16383
  br i1 %i.ben, label %.lr.ph.i.i.i488, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490: ; preds = %.lr.ph.i.i.i488
  %.pre.i.i491 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485
  %i.beo = phi ptr [ %i.beg, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485 ], [ %.pre.i.i491, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490 ] ; 2 uses
  %.0.lcssa.i.i.i487 = phi i64 [ %i.bcx, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485 ], [ %i.bem, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490 ]
  %i.bep = trunc nuw nsw i64 %.0.lcssa.i.i.i487 to i8
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 1
  store ptr %i.beq, ptr %i.a, align 8
  store i8 %i.bep, ptr %i.beo, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"

bb.ez:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bcv)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit": ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486, %bb.ez
  %i.ber = load i8, ptr %i.bbi, align 4, !range !21, !noundef !22
  %i.bes = trunc nuw i8 %i.ber to i1
  br i1 %i.bes, label %bb.fa, label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"

bb.fa:                                            ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"
  %i.bet = getelementptr inbounds nuw i8, ptr %.0266911, i64 4
  %i.beu = load i32, ptr %i.bet, align 4          ; 3 uses
  %.val325.val = load i8, ptr %i.bba, align 2
  %i.bev = icmp eq i8 %.val325.val, 1
  br i1 %i.bev, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.bew = zext i32 %i.beu to i64                 ; 2 uses
  %i.bex = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 10
  %i.bez = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bfa = icmp ugt ptr %i.bey, %i.bez
  br i1 %i.bfa, label %bb.fc, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494

bb.fc:                                            ; preds = %bb.fb
  %i.bfb = load ptr, ptr %i.bae, align 8
  %i.bfc = ptrtoint ptr %i.bez to i64
  %i.bfd = ptrtoint ptr %i.bfb to i64
  %i.bfe = sub i64 %i.bfc, %i.bfd
  %i.bff = shl nsw i64 %i.bfe, 1                  ; 2 uses
  %i.bfg = load ptr, ptr %1, align 8              ; 3 uses
  %i.bfh = and i64 %i.bff, -8
  %i.bfi = add i64 %i.bfh, 16                     ; 3 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfg, i64 24
  %i.bfk = load i64, ptr %i.bfj, align 8
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16 ; 3 uses
  %i.bfm = load i64, ptr %i.bfl, align 8          ; 2 uses
  %i.bfn = sub i64 %i.bfk, %i.bfm
  %i.bfo = icmp ugt i64 %i.bfi, %i.bfn
  br i1 %i.bfo, label %bb.fd, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501, !prof !5

bb.fd:                                            ; preds = %bb.fc
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bfg, i64 noundef %i.bfi) #10
  %.pre.i.i.i.i.i502 = load i64, ptr %i.bfl, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501: ; preds = %bb.fd, %bb.fc
  %i.bfp = phi i64 [ %.pre.i.i.i.i.i502, %bb.fd ], [ %i.bfm, %bb.fc ] ; 2 uses
  %i.bfq = inttoptr i64 %i.bfp to ptr             ; 4 uses
  %i.bfr = add i64 %i.bfp, %i.bfi
  store i64 %i.bfr, ptr %i.bfl, align 8
  %i.bfs = load ptr, ptr %i.bae, align 8          ; 2 uses
  %i.bft = load ptr, ptr %i.a, align 8
  %i.bfu = ptrtoint ptr %i.bft to i64
  %i.bfv = ptrtoint ptr %i.bfs to i64
  %i.bfw = sub i64 %i.bfu, %i.bfv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfq, ptr align 1 %i.bfs, i64 %i.bfw, i1 false)
  %i.bfx = load ptr, ptr %i.a, align 8
  %i.bfy = load ptr, ptr %i.bae, align 8
  %i.bfz = ptrtoint ptr %i.bfx to i64
  %i.bga = ptrtoint ptr %i.bfy to i64
  %i.bgb = sub i64 %i.bfz, %i.bga
  %i.bgc = getelementptr inbounds i8, ptr %i.bfq, i64 %i.bgb ; 2 uses
  store ptr %i.bgc, ptr %i.a, align 8
  store ptr %i.bfq, ptr %i.bae, align 8
  %i.bgd = getelementptr i8, ptr %i.bfq, i64 %i.bff
  %i.bge = getelementptr i8, ptr %i.bgd, i64 10
  store ptr %i.bge, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501, %bb.fb
  %i.bgf = phi ptr [ %i.bex, %bb.fb ], [ %i.bgc, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501 ]
  %i.bgg = icmp ugt i32 %i.beu, 127
  br i1 %i.bgg, label %.lr.ph.i.i.i497, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495

.lr.ph.i.i.i497:                                  ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494, %.lr.ph.i.i.i497
  %.05.i.i.i498 = phi i64 [ %i.bgl, %.lr.ph.i.i.i497 ], [ %i.bew, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494 ] ; 3 uses
  %i.bgh = trunc i64 %.05.i.i.i498 to i8
  %i.bgi = or i8 %i.bgh, -128
  %i.bgj = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 1
  store ptr %i.bgk, ptr %i.a, align 8
  store i8 %i.bgi, ptr %i.bgj, align 1
  %i.bgl = lshr i64 %.05.i.i.i498, 7              ; 2 uses
  %i.bgm = icmp samesign ugt i64 %.05.i.i.i498, 16383
  br i1 %i.bgm, label %.lr.ph.i.i.i497, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499: ; preds = %.lr.ph.i.i.i497
  %.pre.i.i500 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494
  %i.bgn = phi ptr [ %i.bgf, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494 ], [ %.pre.i.i500, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499 ] ; 2 uses
  %.0.lcssa.i.i.i496 = phi i64 [ %i.bew, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494 ], [ %i.bgl, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499 ]
  %i.bgo = trunc nuw nsw i64 %.0.lcssa.i.i.i496 to i8
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgn, i64 1
  store ptr %i.bgp, ptr %i.a, align 8
  store i8 %i.bgo, ptr %i.bgn, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"

bb.fe:                                            ; preds = %bb.fa
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.beu)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503": ; preds = %bb.fe, %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0266911, i64 12 ; 2 uses
  %.not284 = icmp eq ptr %i.bgq, %i.bad
  br i1 %.not284, label %._crit_edge914, label %bb.er

bb.ff:                                            ; preds = %._crit_edge914, %bb.ep
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.bgs = load ptr, ptr %i.bgr, align 8
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.bgu = load ptr, ptr %i.bgt, align 8
  %i.bgv = icmp eq ptr %i.bgs, %i.bgu
  br i1 %i.bgv, label %bb.fm, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bgw = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 13, ptr noundef nonnull %1) ; 2 uses
  %i.bgx = load ptr, ptr %i.bgr, align 8
  %i.bgy = load ptr, ptr %i.bgt, align 8
  %i.bgz = ptrtoint ptr %i.bgx to i64
  %i.bha = ptrtoint ptr %i.bgy to i64
  %i.bhb = sub i64 %i.bgz, %i.bha
  %i.bhc = ashr exact i64 %i.bhb, 2
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bhc)
  %i.bhd = load ptr, ptr %i.bgt, align 8          ; 2 uses
  %i.bhe = load ptr, ptr %i.bgr, align 8          ; 2 uses
  %.not285915 = icmp eq ptr %i.bhd, %i.bhe
  br i1 %.not285915, label %._crit_edge919, label %.lr.ph918

.lr.ph918:                                        ; preds = %bb.fg
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.fh

._crit_edge919:                                   ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513, %bb.fg
  %i.bhg = getelementptr i8, ptr %1, i64 8
  %.val309 = load ptr, ptr %i.bhg, align 8        ; 2 uses
  %.val310 = load ptr, ptr %i.a, align 8
  %i.bhh = ptrtoint ptr %.val310 to i64
  %i.bhi = ptrtoint ptr %.val309 to i64
  %i.bhj = add i64 %i.bgw, %i.bhi
  %i.bhk = sub i64 %i.bhh, %i.bhj
  %i.bhl = trunc i64 %i.bhk to i32
  %i.bhm = add i32 %i.bhl, -5                     ; 5 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.bgw ; 5 uses
  %i.bho = lshr i32 %i.bhm, 7
  %i.bhp = trunc i32 %i.bhm to i8
  %i.bhq = or i8 %i.bhp, -128
  %.112.i.i504 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 1
  store i8 %i.bhq, ptr %i.bhn, align 1
  %i.bhr = lshr i32 %i.bhm, 14
  %i.bhs = trunc i32 %i.bho to i8
  %i.bht = or i8 %i.bhs, -128
  %.112.1.i.i505 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 2
  store i8 %i.bht, ptr %.112.i.i504, align 1
  %i.bhu = lshr i32 %i.bhm, 21
  %i.bhv = trunc i32 %i.bhr to i8
  %i.bhw = or i8 %i.bhv, -128
  %.112.2.i.i506 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 3
  store i8 %i.bhw, ptr %.112.1.i.i505, align 1
  %i.bhx = lshr i32 %i.bhm, 28
  %i.bhy = trunc i32 %i.bhu to i8
  %i.bhz = or i8 %i.bhy, -128
  %.112.3.i.i507 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 4
  store i8 %i.bhz, ptr %.112.2.i.i506, align 1
  %i.bia = trunc nuw nsw i32 %i.bhx to i8
  store i8 %i.bia, ptr %.112.3.i.i507, align 1
  br label %bb.fm

bb.fh:                                            ; preds = %.lr.ph918, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513
  %.0268916 = phi ptr [ %i.bhd, %.lr.ph918 ], [ %i.bjl, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513 ] ; 2 uses
  %.sroa.094.0.copyload = load i32, ptr %.0268916, align 4
  %i.bib = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 5
  %i.bid = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bie = icmp ugt ptr %i.bic, %i.bid
  br i1 %i.bie, label %bb.fi, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513

bb.fi:                                            ; preds = %bb.fh
  %i.bif = load ptr, ptr %i.bhf, align 8
  %i.big = ptrtoint ptr %i.bid to i64
  %i.bih = ptrtoint ptr %i.bif to i64
  %i.bii = sub i64 %i.big, %i.bih
  %i.bij = shl nsw i64 %i.bii, 1                  ; 2 uses
  %i.bik = add i64 %i.bij, 5                      ; 2 uses
  %i.bil = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i510 = icmp eq i64 %i.bik, -1
  br i1 %.not.i.i.i510, label %bb.fj, label %bb.fk, !prof !5

bb.fj:                                            ; preds = %bb.fi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %i.bim = add i64 %i.bij, 12
  %i.bin = and i64 %i.bim, -8                     ; 3 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bil, i64 24
  %i.bip = load i64, ptr %i.bio, align 8
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bil, i64 16 ; 3 uses
  %i.bir = load i64, ptr %i.biq, align 8          ; 2 uses
  %i.bis = sub i64 %i.bip, %i.bir
  %i.bit = icmp ugt i64 %i.bin, %i.bis
  br i1 %i.bit, label %bb.fl, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511, !prof !5

bb.fl:                                            ; preds = %bb.fk
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bil, i64 noundef %i.bin) #10
  %.pre.i.i.i.i512 = load i64, ptr %i.biq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511: ; preds = %bb.fl, %bb.fk
  %i.biu = phi i64 [ %.pre.i.i.i.i512, %bb.fl ], [ %i.bir, %bb.fk ] ; 2 uses
  %i.biv = inttoptr i64 %i.biu to ptr             ; 4 uses
  %i.biw = add i64 %i.biu, %i.bin
  store i64 %i.biw, ptr %i.biq, align 8
  %i.bix = load ptr, ptr %i.bhf, align 8          ; 2 uses
  %i.biy = load ptr, ptr %i.a, align 8
  %i.biz = ptrtoint ptr %i.biy to i64
  %i.bja = ptrtoint ptr %i.bix to i64
  %i.bjb = sub i64 %i.biz, %i.bja
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.biv, ptr align 1 %i.bix, i64 %i.bjb, i1 false)
  %i.bjc = load ptr, ptr %i.a, align 8
  %i.bjd = load ptr, ptr %i.bhf, align 8
  %i.bje = ptrtoint ptr %i.bjc to i64
  %i.bjf = ptrtoint ptr %i.bjd to i64
  %i.bjg = sub i64 %i.bje, %i.bjf
  %i.bjh = getelementptr inbounds i8, ptr %i.biv, i64 %i.bjg
  store ptr %i.biv, ptr %i.bhf, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.biv, i64 %i.bik
  store ptr %i.bji, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513: ; preds = %bb.fh, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511
  %i.bjj = phi ptr [ %i.bib, %bb.fh ], [ %i.bjh, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511 ] ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 1
  store ptr %i.bjk, ptr %i.a, align 8
  store i8 0, ptr %i.bjj, align 1
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.094.0.copyload)
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0268916, i64 4 ; 2 uses
  %.not285 = icmp eq ptr %i.bjl, %i.bhe
  br i1 %.not285, label %._crit_edge919, label %bb.fh

bb.fm:                                            ; preds = %._crit_edge919, %bb.ff
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bjn = load ptr, ptr %i.bjm, align 8
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.bjp = load ptr, ptr %i.bjo, align 8
  %i.bjq = icmp eq ptr %i.bjn, %i.bjp
  br i1 %i.bjq, label %bb.fx, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.bjr = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 6, ptr noundef nonnull %1) ; 2 uses
  %i.bjs = load ptr, ptr %i.bjm, align 8
  %i.bjt = load ptr, ptr %i.bjo, align 8
  %i.bju = ptrtoint ptr %i.bjs to i64
  %i.bjv = ptrtoint ptr %i.bjt to i64
  %i.bjw = sub i64 %i.bju, %i.bjv
  %i.bjx = sdiv exact i64 %i.bjw, 40
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bjx)
  %i.bjy = load ptr, ptr %i.bjo, align 8          ; 2 uses
  %i.bjz = load ptr, ptr %i.bjm, align 8          ; 2 uses
  %.not286920 = icmp eq ptr %i.bjy, %i.bjz
  br i1 %.not286920, label %._crit_edge924, label %.lr.ph923

.lr.ph923:                                        ; preds = %bb.fn
  %i.bka = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.fo

._crit_edge924:                                   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526, %bb.fn
  %i.bkb = getelementptr i8, ptr %1, i64 8
  %.val307 = load ptr, ptr %i.bkb, align 8        ; 2 uses
  %.val308 = load ptr, ptr %i.a, align 8
  %i.bkc = ptrtoint ptr %.val308 to i64
  %i.bkd = ptrtoint ptr %.val307 to i64
  %i.bke = add i64 %i.bjr, %i.bkd
  %i.bkf = sub i64 %i.bkc, %i.bke
  %i.bkg = trunc i64 %i.bkf to i32
  %i.bkh = add i32 %i.bkg, -5                     ; 5 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.bjr ; 5 uses
  %i.bkj = lshr i32 %i.bkh, 7
  %i.bkk = trunc i32 %i.bkh to i8
  %i.bkl = or i8 %i.bkk, -128
  %.112.i.i514 = getelementptr inbounds nuw i8, ptr %i.bki, i64 1
  store i8 %i.bkl, ptr %i.bki, align 1
  %i.bkm = lshr i32 %i.bkh, 14
  %i.bkn = trunc i32 %i.bkj to i8
  %i.bko = or i8 %i.bkn, -128
  %.112.1.i.i515 = getelementptr inbounds nuw i8, ptr %i.bki, i64 2
  store i8 %i.bko, ptr %.112.i.i514, align 1
  %i.bkp = lshr i32 %i.bkh, 21
  %i.bkq = trunc i32 %i.bkm to i8
  %i.bkr = or i8 %i.bkq, -128
  %.112.2.i.i516 = getelementptr inbounds nuw i8, ptr %i.bki, i64 3
  store i8 %i.bkr, ptr %.112.1.i.i515, align 1
  %i.bks = lshr i32 %i.bkh, 28
  %i.bkt = trunc i32 %i.bkp to i8
  %i.bku = or i8 %i.bkt, -128
  %.112.3.i.i517 = getelementptr inbounds nuw i8, ptr %i.bki, i64 4
  store i8 %i.bku, ptr %.112.2.i.i516, align 1
  %i.bkv = trunc nuw nsw i32 %i.bks to i8
  store i8 %i.bkv, ptr %.112.3.i.i517, align 1
  br label %bb.fx

bb.fo:                                            ; preds = %.lr.ph923, %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526
  %.0269921 = phi ptr [ %i.bjy, %.lr.ph923 ], [ %i.bnt, %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526 ] ; 4 uses
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %.0269921)
  %i.bkw = getelementptr inbounds nuw i8, ptr %.0269921, i64 4
  %i.bkx = load i8, ptr %i.bkw, align 4, !range !21, !noundef !22
  %i.bky = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 1
  %i.bla = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.blb = icmp ugt ptr %i.bkz, %i.bla
  br i1 %i.blb, label %bb.fp, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit522

bb.fp:                                            ; preds = %bb.fo
  %i.blc = load ptr, ptr %i.bka, align 8
  %i.bld = ptrtoint ptr %i.bla to i64
  %i.ble = ptrtoint ptr %i.blc to i64
  %i.blf = sub i64 %i.bld, %i.ble                 ; 2 uses
  %i.blg = shl nsw i64 %i.blf, 1                  ; 2 uses
  %i.blh = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i519 = icmp eq i64 %i.blf, -1
  br i1 %.not.i.i.i519, label %bb.fq, label %bb.fr, !prof !5

bb.fq:                                            ; preds = %bb.fp
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.bli = and i64 %i.blg, -8
  %i.blj = add i64 %i.bli, 8                      ; 3 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blh, i64 24
  %i.bll = load i64, ptr %i.blk, align 8
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blh, i64 16 ; 3 uses
  %i.bln = load i64, ptr %i.blm, align 8          ; 2 uses
  %i.blo = sub i64 %i.bll, %i.bln
  %i.blp = icmp ugt i64 %i.blj, %i.blo
  br i1 %i.blp, label %bb.fs, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i520, !prof !5

bb.fs:                                            ; preds = %bb.fr
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.blh, i64 noundef %i.blj) #10
  %.pre.i.i.i.i521 = load i64, ptr %i.blm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i520

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i520: ; preds = %bb.fs, %bb.fr
  %i.blq = phi i64 [ %.pre.i.i.i.i521, %bb.fs ], [ %i.bln, %bb.fr ] ; 2 uses
  %i.blr = inttoptr i64 %i.blq to ptr             ; 4 uses
  %i.bls = add i64 %i.blq, %i.blj
  store i64 %i.bls, ptr %i.blm, align 8
  %i.blt = load ptr, ptr %i.bka, align 8          ; 2 uses
  %i.blu = load ptr, ptr %i.a, align 8
  %i.blv = ptrtoint ptr %i.blu to i64
  %i.blw = ptrtoint ptr %i.blt to i64
  %i.blx = sub i64 %i.blv, %i.blw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.blr, ptr align 1 %i.blt, i64 %i.blx, i1 false)
  %i.bly = load ptr, ptr %i.a, align 8
  %i.blz = load ptr, ptr %i.bka, align 8
  %i.bma = ptrtoint ptr %i.bly to i64
  %i.bmb = ptrtoint ptr %i.blz to i64
  %i.bmc = sub i64 %i.bma, %i.bmb
  %i.bmd = getelementptr inbounds i8, ptr %i.blr, i64 %i.bmc
  store ptr %i.blr, ptr %i.bka, align 8
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blr, i64 %i.blg
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 1
  store ptr %i.bmf, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit522

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit522: ; preds = %bb.fo, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i520
  %i.bmg = phi ptr [ %i.bky, %bb.fo ], [ %i.bmd, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i520 ] ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 1
  store ptr %i.bmh, ptr %i.a, align 8
  store i8 %i.bkx, ptr %i.bmg, align 1
  %i.bmi = getelementptr inbounds nuw i8, ptr %.0269921, i64 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_136WriteInitializerExpressionWithoutEndEPNS1_10ZoneBufferERKNS1_12WasmInitExprE(ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bmi)
  %i.bmj = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 1
  %i.bml = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bmm = icmp ugt ptr %i.bmk, %i.bml
  br i1 %i.bmm, label %bb.ft, label %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526

bb.ft:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit522
  %i.bmn = load ptr, ptr %i.bka, align 8
  %i.bmo = ptrtoint ptr %i.bml to i64
  %i.bmp = ptrtoint ptr %i.bmn to i64
  %i.bmq = sub i64 %i.bmo, %i.bmp                 ; 2 uses
  %i.bmr = shl nsw i64 %i.bmq, 1                  ; 2 uses
  %i.bms = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i.i523 = icmp eq i64 %i.bmq, -1
  br i1 %.not.i.i.i.i523, label %bb.fu, label %bb.fv, !prof !5

bb.fu:                                            ; preds = %bb.ft
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.fv:                                            ; preds = %bb.ft
  %i.bmt = and i64 %i.bmr, -8
  %i.bmu = add i64 %i.bmt, 8                      ; 3 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bms, i64 24
  %i.bmw = load i64, ptr %i.bmv, align 8
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bms, i64 16 ; 3 uses
  %i.bmy = load i64, ptr %i.bmx, align 8          ; 2 uses
  %i.bmz = sub i64 %i.bmw, %i.bmy
  %i.bna = icmp ugt i64 %i.bmu, %i.bmz
  br i1 %i.bna, label %bb.fw, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i524, !prof !5

bb.fw:                                            ; preds = %bb.fv
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bms, i64 noundef %i.bmu) #10
  %.pre.i.i.i.i.i525 = load i64, ptr %i.bmx, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i524

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i524: ; preds = %bb.fw, %bb.fv
  %i.bnb = phi i64 [ %.pre.i.i.i.i.i525, %bb.fw ], [ %i.bmy, %bb.fv ] ; 2 uses
  %i.bnc = inttoptr i64 %i.bnb to ptr             ; 4 uses
  %i.bnd = add i64 %i.bnb, %i.bmu
  store i64 %i.bnd, ptr %i.bmx, align 8
  %i.bne = load ptr, ptr %i.bka, align 8          ; 2 uses
  %i.bnf = load ptr, ptr %i.a, align 8
  %i.bng = ptrtoint ptr %i.bnf to i64
  %i.bnh = ptrtoint ptr %i.bne to i64
  %i.bni = sub i64 %i.bng, %i.bnh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bnc, ptr align 1 %i.bne, i64 %i.bni, i1 false)
  %i.bnj = load ptr, ptr %i.a, align 8
  %i.bnk = load ptr, ptr %i.bka, align 8
  %i.bnl = ptrtoint ptr %i.bnj to i64
  %i.bnm = ptrtoint ptr %i.bnk to i64
  %i.bnn = sub i64 %i.bnl, %i.bnm
  %i.bno = getelementptr inbounds i8, ptr %i.bnc, i64 %i.bnn
  store ptr %i.bnc, ptr %i.bka, align 8
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnc, i64 %i.bmr
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 1
  store ptr %i.bnq, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526

_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit522, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i524
  %i.bnr = phi ptr [ %i.bmj, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit522 ], [ %i.bno, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i524 ] ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnr, i64 1
  store ptr %i.bns, ptr %i.a, align 8
  store i8 11, ptr %i.bnr, align 1
  %i.bnt = getelementptr inbounds nuw i8, ptr %.0269921, i64 40 ; 2 uses
  %.not286 = icmp eq ptr %i.bnt, %i.bjz
  br i1 %.not286, label %._crit_edge924, label %bb.fo

bb.fx:                                            ; preds = %._crit_edge924, %bb.fm
  %i.bnu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bnv = load ptr, ptr %i.bnu, align 8
  %i.bnw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bnx = load ptr, ptr %i.bnw, align 8
  %i.bny = icmp eq ptr %i.bnv, %i.bnx
  br i1 %i.bny, label %bb.gj, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bnz = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 7, ptr noundef nonnull %1) ; 2 uses
  %i.boa = load ptr, ptr %i.bnu, align 8
  %i.bob = load ptr, ptr %i.bnw, align 8
  %i.boc = ptrtoint ptr %i.boa to i64
  %i.bod = ptrtoint ptr %i.bob to i64
  %i.boe = sub i64 %i.boc, %i.bod
  %i.bof = sdiv exact i64 %i.boe, 24
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bof)
  %i.bog = load ptr, ptr %i.bnw, align 8          ; 2 uses
  %i.boh = load ptr, ptr %i.bnu, align 8          ; 2 uses
  %.not287925 = icmp eq ptr %i.bog, %i.boh
  br i1 %.not287925, label %._crit_edge929, label %.lr.ph928

.lr.ph928:                                        ; preds = %bb.fy
  %i.boi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.fz

._crit_edge929:                                   ; preds = %bb.gi, %bb.fy
  %i.boj = getelementptr i8, ptr %1, i64 8
  %.val305 = load ptr, ptr %i.boj, align 8        ; 2 uses
  %.val306 = load ptr, ptr %i.a, align 8
  %i.bok = ptrtoint ptr %.val306 to i64
  %i.bol = ptrtoint ptr %.val305 to i64
  %i.bom = add i64 %i.bnz, %i.bol
  %i.bon = sub i64 %i.bok, %i.bom
  %i.boo = trunc i64 %i.bon to i32
  %i.bop = add i32 %i.boo, -5                     ; 5 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.bnz ; 5 uses
  %i.bor = lshr i32 %i.bop, 7
  %i.bos = trunc i32 %i.bop to i8
  %i.bot = or i8 %i.bos, -128
  %.112.i.i527 = getelementptr inbounds nuw i8, ptr %i.boq, i64 1
  store i8 %i.bot, ptr %i.boq, align 1
  %i.bou = lshr i32 %i.bop, 14
  %i.bov = trunc i32 %i.bor to i8
  %i.bow = or i8 %i.bov, -128
  %.112.1.i.i528 = getelementptr inbounds nuw i8, ptr %i.boq, i64 2
  store i8 %i.bow, ptr %.112.i.i527, align 1
  %i.box = lshr i32 %i.bop, 21
  %i.boy = trunc i32 %i.bou to i8
  %i.boz = or i8 %i.boy, -128
  %.112.2.i.i529 = getelementptr inbounds nuw i8, ptr %i.boq, i64 3
  store i8 %i.boz, ptr %.112.1.i.i528, align 1
  %i.bpa = lshr i32 %i.bop, 28
  %i.bpb = trunc i32 %i.box to i8
  %i.bpc = or i8 %i.bpb, -128
  %.112.3.i.i530 = getelementptr inbounds nuw i8, ptr %i.boq, i64 4
  store i8 %i.bpc, ptr %.112.2.i.i529, align 1
  %i.bpd = trunc nuw nsw i32 %i.bpa to i8
  store i8 %i.bpd, ptr %.112.3.i.i530, align 1
  br label %bb.gj

bb.fz:                                            ; preds = %.lr.ph928, %bb.gi
  %.0270926 = phi ptr [ %i.bog, %.lr.ph928 ], [ %i.brf, %bb.gi ] ; 5 uses
  %.sroa.071.0.copyload = load ptr, ptr %.0270926, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0270926, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE:bb.a
  %i.byz = load ptr, ptr %i.a, align 8
  %i.bza = ptrtoint ptr %i.byz to i64
  %i.bzb = ptrtoint ptr %i.byy to i64
  %i.bzc = sub i64 %i.bza, %i.bzb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.byw, ptr align 1 %i.byy, i64 %i.bzc, i1 false)
  %i.bzd = load ptr, ptr %i.a, align 8
  %i.bze = load ptr, ptr %i.btc, align 8
  %i.bzf = ptrtoint ptr %i.bzd to i64
  %i.bzg = ptrtoint ptr %i.bze to i64
  %i.bzh = sub i64 %i.bzf, %i.bzg
  %i.bzi = getelementptr inbounds i8, ptr %i.byw, i64 %i.bzh
  store ptr %i.byw, ptr %i.btc, align 8
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.byw, i64 %i.byl
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzj, i64 1
  store ptr %i.bzk, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit557

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit557: ; preds = %bb.ha, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i555
  %i.bzl = phi ptr [ %i.byd, %bb.ha ], [ %i.bzi, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i555 ] ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 1
  store ptr %i.bzm, ptr %i.a, align 8
  store i8 %i.bxq, ptr %i.bzl, align 1
  %i.bzn = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzn, i64 5
  %i.bzp = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bzq = icmp ugt ptr %i.bzo, %i.bzp
  br i1 %i.bzq, label %bb.hf, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558

bb.hf:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit557
  %i.bzr = load ptr, ptr %i.btc, align 8
  %i.bzs = ptrtoint ptr %i.bzp to i64
  %i.bzt = ptrtoint ptr %i.bzr to i64
  %i.bzu = sub i64 %i.bzs, %i.bzt
  %i.bzv = shl nsw i64 %i.bzu, 1                  ; 2 uses
  %i.bzw = add i64 %i.bzv, 5                      ; 2 uses
  %i.bzx = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i564 = icmp eq i64 %i.bzw, -1
  br i1 %.not.i.i.i564, label %bb.hg, label %bb.hh, !prof !5

bb.hg:                                            ; preds = %bb.hf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.bzy = add i64 %i.bzv, 12
  %i.bzz = and i64 %i.bzy, -8                     ; 3 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzx, i64 24
  %i.cab = load i64, ptr %i.caa, align 8
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzx, i64 16 ; 3 uses
  %i.cad = load i64, ptr %i.cac, align 8          ; 2 uses
  %i.cae = sub i64 %i.cab, %i.cad
  %i.caf = icmp ugt i64 %i.bzz, %i.cae
  br i1 %i.caf, label %bb.hi, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i565, !prof !5

bb.hi:                                            ; preds = %bb.hh
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bzx, i64 noundef %i.bzz) #10
  %.pre.i.i.i.i566 = load i64, ptr %i.cac, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i565

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i565: ; preds = %bb.hi, %bb.hh
  %i.cag = phi i64 [ %.pre.i.i.i.i566, %bb.hi ], [ %i.cad, %bb.hh ] ; 2 uses
  %i.cah = inttoptr i64 %i.cag to ptr             ; 4 uses
  %i.cai = add i64 %i.cag, %i.bzz
  store i64 %i.cai, ptr %i.cac, align 8
  %i.caj = load ptr, ptr %i.btc, align 8          ; 2 uses
  %i.cak = load ptr, ptr %i.a, align 8
  %i.cal = ptrtoint ptr %i.cak to i64
  %i.cam = ptrtoint ptr %i.caj to i64
  %i.can = sub i64 %i.cal, %i.cam
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cah, ptr align 1 %i.caj, i64 %i.can, i1 false)
  %i.cao = load ptr, ptr %i.a, align 8
  %i.cap = load ptr, ptr %i.btc, align 8
  %i.caq = ptrtoint ptr %i.cao to i64
  %i.car = ptrtoint ptr %i.cap to i64
  %i.cas = sub i64 %i.caq, %i.car
  %i.cat = getelementptr inbounds i8, ptr %i.cah, i64 %i.cas ; 2 uses
  store ptr %i.cat, ptr %i.a, align 8
  store ptr %i.cah, ptr %i.btc, align 8
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cah, i64 %i.bzw
  store ptr %i.cau, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i565, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit557
  %i.cav = phi ptr [ %i.bzn, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit557 ], [ %i.cat, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i565 ]
  %i.caw = icmp ugt i32 %i.byc, 127
  br i1 %i.caw, label %.lr.ph.i.i560, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit567

.lr.ph.i.i560:                                    ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558, %.lr.ph.i.i560
  %.05.i.i561 = phi i32 [ %i.cbb, %.lr.ph.i.i560 ], [ %i.byc, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558 ] ; 3 uses
  %i.cax = trunc i32 %.05.i.i561 to i8
  %i.cay = or i8 %i.cax, -128
  %i.caz = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 1
  store ptr %i.cba, ptr %i.a, align 8
  store i8 %i.cay, ptr %i.caz, align 1
  %i.cbb = lshr i32 %.05.i.i561, 7                ; 2 uses
  %i.cbc = icmp ugt i32 %.05.i.i561, 16383
  br i1 %i.cbc, label %.lr.ph.i.i560, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i562, !llvm.loop !9

_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i562: ; preds = %.lr.ph.i.i560
  %.pre.i563 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit567

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit567: ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i562
  %i.cbd = phi ptr [ %i.cav, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558 ], [ %.pre.i563, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i562 ] ; 2 uses
  %.0.lcssa.i.i559 = phi i32 [ %i.byc, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i558 ], [ %i.cbb, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit.i562 ]
  %i.cbe = trunc nuw nsw i32 %.0.lcssa.i.i559 to i8
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbd, i64 1
  store ptr %i.cbf, ptr %i.a, align 8
  store i8 %i.cbe, ptr %i.cbd, align 1
  %i.cbg = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbg, i64 1
  %i.cbi = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cbj = icmp ugt ptr %i.cbh, %i.cbi
  br i1 %i.cbj, label %bb.hj, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit572

bb.hj:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit567
  %i.cbk = load ptr, ptr %i.btc, align 8
  %i.cbl = ptrtoint ptr %i.cbi to i64
  %i.cbm = ptrtoint ptr %i.cbk to i64
  %i.cbn = sub i64 %i.cbl, %i.cbm                 ; 2 uses
  %i.cbo = shl nsw i64 %i.cbn, 1                  ; 2 uses
  %i.cbp = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i569 = icmp eq i64 %i.cbn, -1
  br i1 %.not.i.i.i569, label %bb.hk, label %bb.hl, !prof !5

bb.hk:                                            ; preds = %bb.hj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.cbq = and i64 %i.cbo, -8
  %i.cbr = add i64 %i.cbq, 8                      ; 3 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbp, i64 24
  %i.cbt = load i64, ptr %i.cbs, align 8
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbp, i64 16 ; 3 uses
  %i.cbv = load i64, ptr %i.cbu, align 8          ; 2 uses
  %i.cbw = sub i64 %i.cbt, %i.cbv
  %i.cbx = icmp ugt i64 %i.cbr, %i.cbw
  br i1 %i.cbx, label %bb.hm, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i570, !prof !5

bb.hm:                                            ; preds = %bb.hl
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cbp, i64 noundef %i.cbr) #10
  %.pre.i.i.i.i571 = load i64, ptr %i.cbu, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i570

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i570: ; preds = %bb.hm, %bb.hl
  %i.cby = phi i64 [ %.pre.i.i.i.i571, %bb.hm ], [ %i.cbv, %bb.hl ] ; 2 uses
  %i.cbz = inttoptr i64 %i.cby to ptr             ; 4 uses
  %i.cca = add i64 %i.cby, %i.cbr
  store i64 %i.cca, ptr %i.cbu, align 8
  %i.ccb = load ptr, ptr %i.btc, align 8          ; 2 uses
  %i.ccc = load ptr, ptr %i.a, align 8
  %i.ccd = ptrtoint ptr %i.ccc to i64
  %i.cce = ptrtoint ptr %i.ccb to i64
  %i.ccf = sub i64 %i.ccd, %i.cce
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cbz, ptr align 1 %i.ccb, i64 %i.ccf, i1 false)
  %i.ccg = load ptr, ptr %i.a, align 8
  %i.cch = load ptr, ptr %i.btc, align 8
  %i.cci = ptrtoint ptr %i.ccg to i64
  %i.ccj = ptrtoint ptr %i.cch to i64
  %i.cck = sub i64 %i.cci, %i.ccj
  %i.ccl = getelementptr inbounds i8, ptr %i.cbz, i64 %i.cck
  store ptr %i.cbz, ptr %i.btc, align 8
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.cbz, i64 %i.cbo
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 1
  store ptr %i.ccn, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit572

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit572: ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit567, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i570
  %i.cco = phi ptr [ %i.cbg, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit567 ], [ %i.ccl, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i570 ] ; 2 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cco, i64 1
  store ptr %i.ccp, ptr %i.a, align 8
  store i8 11, ptr %i.cco, align 1
  %i.ccq = getelementptr inbounds nuw i8, ptr %.0273931, i64 8 ; 2 uses
  %.not289 = icmp eq ptr %i.ccq, %i.bxk
  br i1 %.not289, label %._crit_edge934, label %bb.gy

bb.hn:                                            ; preds = %._crit_edge939, %bb.gl
  %i.ccr = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.ccs = load ptr, ptr %i.ccr, align 8          ; 4 uses
  %i.cct = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ccu = load ptr, ptr %i.cct, align 8          ; 2 uses
  %i.ccv = ptrtoint ptr %i.ccu to i64             ; 2 uses
  %i.ccw = ptrtoint ptr %i.ccs to i64
  %i.ccx = sub i64 %i.ccv, %i.ccw                 ; 2 uses
  %i.ccy = sdiv exact i64 %i.ccx, 40
  %i.ccz = ashr i64 %i.ccy, 2                     ; 3 uses
  %i.cda = icmp sgt i64 %i.ccz, 0
  br i1 %i.cda, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.hn
  %i.cdb = mul nuw nsw i64 %i.ccz, 160
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ccs, i64 %i.cdb ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.hr, %.lr.ph.preheader.i.i.i.i.i
  %.044.i.i.i.i.i = phi i64 [ %i.cdl, %bb.hr ], [ %i.ccz, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.cdk, %bb.hr ], [ %i.ccs, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.cdc = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 36
  %.029.val32.i.i.i.i.i = load i8, ptr %i.cdc, align 4, !range !21, !noundef !22
  %i.cdd = trunc nuw i8 %.029.val32.i.i.i.i.i to i1
  br i1 %i.cdd, label %bb.ho, label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

bb.ho:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.cde = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 76
  %.val31.i.i.i.i.i = load i8, ptr %i.cde, align 4, !range !21, !noundef !22
  %i.cdf = trunc nuw i8 %.val31.i.i.i.i.i to i1
  br i1 %i.cdf, label %bb.hp, label %.loopexit.split.loop.exit34.i.i.i.i.i

bb.hp:                                            ; preds = %bb.ho
  %i.cdg = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 116
  %.val30.i.i.i.i.i = load i8, ptr %i.cdg, align 4, !range !21, !noundef !22
  %i.cdh = trunc nuw i8 %.val30.i.i.i.i.i to i1
  br i1 %i.cdh, label %bb.hq, label %.loopexit.split.loop.exit36.i.i.i.i.i

bb.hq:                                            ; preds = %bb.hp
  %i.cdi = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 156
  %.val.i.i.i.i.i = load i8, ptr %i.cdi, align 4, !range !21, !noundef !22
  %i.cdj = trunc nuw i8 %.val.i.i.i.i.i to i1
  br i1 %i.cdj, label %bb.hr, label %.loopexit.split.loop.exit38.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hq
  %i.cdk = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 160
  %i.cdl = add nsw i64 %.044.i.i.i.i.i, -1
  %i.cdm = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.cdm, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !25

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.hr
  %.pre.i.i.i.i.i573 = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre49.i.i.i.i.i = sub i64 %i.ccv, %.pre.i.i.i.i.i573
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.hn
  %.pre-phi50.i.i.i.i.i = phi i64 [ %.pre49.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ccx, %bb.hn ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ccs, %bb.hn ] ; 5 uses
  %i.cdn = sdiv exact i64 %.pre-phi50.i.i.i.i.i, 40
  switch i64 %i.cdn, label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread" [
    i64 3, label %bb.hs
    i64 2, label %bb.hu
    i64 1, label %bb.hw
  ]

bb.hs:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cdo = getelementptr i8, ptr %.029.lcssa.i.i.i.i.i, i64 36
  %.029.val.i.i.i.i.i = load i8, ptr %i.cdo, align 4, !range !21, !noundef !22
  %i.cdp = trunc nuw i8 %.029.val.i.i.i.i.i to i1
  br i1 %i.cdp, label %bb.ht, label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

bb.ht:                                            ; preds = %bb.hs
  %i.cdq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 40
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.cdq, %bb.ht ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.cdr = getelementptr i8, ptr %.1.i.i.i.i.i, i64 36
  %.1.val.i.i.i.i.i = load i8, ptr %i.cdr, align 4, !range !21, !noundef !22
  %i.cds = trunc nuw i8 %.1.val.i.i.i.i.i to i1
  br i1 %i.cds, label %bb.hv, label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

bb.hv:                                            ; preds = %bb.hu
  %i.cdt = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.cdt, %bb.hv ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.cdu = getelementptr i8, ptr %.2.i.i.i.i.i, i64 36
  %.2.val.i.i.i.i.i = load i8, ptr %i.cdu, align 4, !range !21, !noundef !22
  %i.cdv = trunc nuw i8 %.2.val.i.i.i.i.i to i1
  br i1 %i.cdv, label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread", label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

.loopexit.split.loop.exit34.i.i.i.i.i:            ; preds = %bb.ho
  %i.cdw = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 40
  br label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

.loopexit.split.loop.exit36.i.i.i.i.i:            ; preds = %bb.hp
  %i.cdx = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 80
  br label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

.loopexit.split.loop.exit38.i.i.i.i.i:            ; preds = %bb.hq
  %i.cdy = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 120
  br label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"

"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %bb.hs, %bb.hu, %bb.hw, %.loopexit.split.loop.exit34.i.i.i.i.i, %.loopexit.split.loop.exit36.i.i.i.i.i, %.loopexit.split.loop.exit38.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.hu ], [ %i.cdy, %.loopexit.split.loop.exit38.i.i.i.i.i ], [ %.2.i.i.i.i.i, %bb.hw ], [ %.029.lcssa.i.i.i.i.i, %bb.hs ], [ %i.cdx, %.loopexit.split.loop.exit36.i.i.i.i.i ], [ %i.cdw, %.loopexit.split.loop.exit34.i.i.i.i.i ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.not792 = icmp eq ptr %i.ccu, %.028.i.i.i.i.i
  br i1 %.not792, label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread", label %bb.hx

bb.hx:                                            ; preds = %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"
  %i.cdz = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdz, i64 1
  %i.ceb = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cec = icmp ugt ptr %i.cea, %i.ceb
  br i1 %i.cec, label %bb.hy, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit578

bb.hy:                                            ; preds = %bb.hx
  %i.ced = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cee = load ptr, ptr %i.ced, align 8
  %i.cef = ptrtoint ptr %i.ceb to i64
  %i.ceg = ptrtoint ptr %i.cee to i64
  %i.ceh = sub i64 %i.cef, %i.ceg                 ; 2 uses
  %i.cei = shl nsw i64 %i.ceh, 1                  ; 2 uses
  %i.cej = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i575 = icmp eq i64 %i.ceh, -1
  br i1 %.not.i.i.i575, label %bb.hz, label %bb.ia, !prof !5

bb.hz:                                            ; preds = %bb.hy
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.cek = and i64 %i.cei, -8
  %i.cel = add i64 %i.cek, 8                      ; 3 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cej, i64 24
  %i.cen = load i64, ptr %i.cem, align 8
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cej, i64 16 ; 3 uses
  %i.cep = load i64, ptr %i.ceo, align 8          ; 2 uses
  %i.ceq = sub i64 %i.cen, %i.cep
  %i.cer = icmp ugt i64 %i.cel, %i.ceq
  br i1 %i.cer, label %bb.ib, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i576, !prof !5

bb.ib:                                            ; preds = %bb.ia
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cej, i64 noundef %i.cel) #10
  %.pre.i.i.i.i577 = load i64, ptr %i.ceo, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i576

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i576: ; preds = %bb.ib, %bb.ia
  %i.ces = phi i64 [ %.pre.i.i.i.i577, %bb.ib ], [ %i.cep, %bb.ia ] ; 2 uses
  %i.cet = inttoptr i64 %i.ces to ptr             ; 4 uses
  %i.ceu = add i64 %i.ces, %i.cel
  store i64 %i.ceu, ptr %i.ceo, align 8
  %i.cev = load ptr, ptr %i.ced, align 8          ; 2 uses
  %i.cew = load ptr, ptr %i.a, align 8
  %i.cex = ptrtoint ptr %i.cew to i64
  %i.cey = ptrtoint ptr %i.cev to i64
  %i.cez = sub i64 %i.cex, %i.cey
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cet, ptr align 1 %i.cev, i64 %i.cez, i1 false)
  %i.cfa = load ptr, ptr %i.a, align 8
  %i.cfb = load ptr, ptr %i.ced, align 8
  %i.cfc = ptrtoint ptr %i.cfa to i64
  %i.cfd = ptrtoint ptr %i.cfb to i64
  %i.cfe = sub i64 %i.cfc, %i.cfd
  %i.cff = getelementptr inbounds i8, ptr %i.cet, i64 %i.cfe
  store ptr %i.cet, ptr %i.ced, align 8
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cet, i64 %i.cei
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfg, i64 1
  store ptr %i.cfh, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit578

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit578: ; preds = %bb.hx, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i576
  %i.cfi = phi ptr [ %i.cdz, %bb.hx ], [ %i.cff, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i576 ] ; 2 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cfi, i64 1
  store ptr %i.cfj, ptr %i.a, align 8
  store i8 12, ptr %i.cfi, align 1
  %i.cfk = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfk, i64 5
  %i.cfm = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cfn = icmp ugt ptr %i.cfl, %i.cfm
  br i1 %i.cfn, label %bb.ic, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit584

bb.ic:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit578
  %i.cfo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cfp = load ptr, ptr %i.cfo, align 8
  %i.cfq = ptrtoint ptr %i.cfm to i64
  %i.cfr = ptrtoint ptr %i.cfp to i64
  %i.cfs = sub i64 %i.cfq, %i.cfr
  %i.cft = shl nsw i64 %i.cfs, 1                  ; 2 uses
  %i.cfu = add i64 %i.cft, 5                      ; 2 uses
  %i.cfv = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i581 = icmp eq i64 %i.cfu, -1
  br i1 %.not.i.i.i581, label %bb.id, label %bb.ie, !prof !5

bb.id:                                            ; preds = %bb.ic
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ie:                                            ; preds = %bb.ic
  %i.cfw = add i64 %i.cft, 12
  %i.cfx = and i64 %i.cfw, -8                     ; 3 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfv, i64 24
  %i.cfz = load i64, ptr %i.cfy, align 8
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfv, i64 16 ; 3 uses
  %i.cgb = load i64, ptr %i.cga, align 8          ; 2 uses
  %i.cgc = sub i64 %i.cfz, %i.cgb
  %i.cgd = icmp ugt i64 %i.cfx, %i.cgc
  br i1 %i.cgd, label %bb.if, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i582, !prof !5

bb.if:                                            ; preds = %bb.ie
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cfv, i64 noundef %i.cfx) #10
  %.pre.i.i.i.i583 = load i64, ptr %i.cga, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i582

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i582: ; preds = %bb.if, %bb.ie
  %i.cge = phi i64 [ %.pre.i.i.i.i583, %bb.if ], [ %i.cgb, %bb.ie ] ; 2 uses
  %i.cgf = inttoptr i64 %i.cge to ptr             ; 4 uses
  %i.cgg = add i64 %i.cge, %i.cfx
  store i64 %i.cgg, ptr %i.cga, align 8
  %i.cgh = load ptr, ptr %i.cfo, align 8          ; 2 uses
  %i.cgi = load ptr, ptr %i.a, align 8
  %i.cgj = ptrtoint ptr %i.cgi to i64
  %i.cgk = ptrtoint ptr %i.cgh to i64
  %i.cgl = sub i64 %i.cgj, %i.cgk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cgf, ptr align 1 %i.cgh, i64 %i.cgl, i1 false)
  %i.cgm = load ptr, ptr %i.a, align 8
  %i.cgn = load ptr, ptr %i.cfo, align 8
  %i.cgo = ptrtoint ptr %i.cgm to i64
  %i.cgp = ptrtoint ptr %i.cgn to i64
  %i.cgq = sub i64 %i.cgo, %i.cgp
  %i.cgr = getelementptr inbounds i8, ptr %i.cgf, i64 %i.cgq
  store ptr %i.cgf, ptr %i.cfo, align 8
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgf, i64 %i.cfu
  store ptr %i.cgs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit584

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit584: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit578, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i582
  %i.cgt = phi ptr [ %i.cfk, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit578 ], [ %i.cgr, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i582 ] ; 2 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgt, i64 1
  store ptr %i.cgu, ptr %i.a, align 8
  store i8 1, ptr %i.cgt, align 1
  %i.cgv = load ptr, ptr %i.cct, align 8
  %i.cgw = load ptr, ptr %i.ccr, align 8
  %i.cgx = ptrtoint ptr %i.cgv to i64
  %i.cgy = ptrtoint ptr %i.cgw to i64
  %i.cgz = sub i64 %i.cgx, %i.cgy
  %i.cha = sdiv exact i64 %i.cgz, 40
  %i.chb = trunc i64 %i.cha to i32
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.chb)
  br label %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread"

"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread": ; preds = %bb.hw, %._crit_edge.i.i.i.i.i, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit584, %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit"
  %i.chc = load ptr, ptr %i.amo, align 8
  %i.chd = load ptr, ptr %i.amq, align 8
  %i.che = icmp eq ptr %i.chc, %i.chd
  br i1 %i.che, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread"
  %i.chf = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 10, ptr noundef %1) ; 2 uses
  %i.chg = load ptr, ptr %i.amo, align 8
  %i.chh = load ptr, ptr %i.amq, align 8
  %i.chi = ptrtoint ptr %i.chg to i64
  %i.chj = ptrtoint ptr %i.chh to i64
  %i.chk = sub i64 %i.chi, %i.chj
  %i.chl = ashr exact i64 %i.chk, 3
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.chl)
  %i.chm = load ptr, ptr %i.amq, align 8          ; 2 uses
  %i.chn = load ptr, ptr %i.amo, align 8          ; 2 uses
  %.not290940 = icmp eq ptr %i.chm, %i.chn
  br i1 %.not290940, label %._crit_edge944, label %.lr.ph943

._crit_edge944:                                   ; preds = %.lr.ph943, %bb.ig
  %i.cho = getelementptr i8, ptr %1, i64 8
  %.val299 = load ptr, ptr %i.cho, align 8        ; 2 uses
  %.val300 = load ptr, ptr %i.a, align 8
  %i.chp = ptrtoint ptr %.val300 to i64
  %i.chq = ptrtoint ptr %.val299 to i64
  %i.chr = add i64 %i.chf, %i.chq
  %i.chs = sub i64 %i.chp, %i.chr
  %i.cht = trunc i64 %i.chs to i32
  %i.chu = add i32 %i.cht, -5                     ; 5 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.chf ; 5 uses
  %i.chw = lshr i32 %i.chu, 7
  %i.chx = trunc i32 %i.chu to i8
  %i.chy = or i8 %i.chx, -128
  %.112.i.i585 = getelementptr inbounds nuw i8, ptr %i.chv, i64 1
  store i8 %i.chy, ptr %i.chv, align 1
  %i.chz = lshr i32 %i.chu, 14
  %i.cia = trunc i32 %i.chw to i8
  %i.cib = or i8 %i.cia, -128
  %.112.1.i.i586 = getelementptr inbounds nuw i8, ptr %i.chv, i64 2
  store i8 %i.cib, ptr %.112.i.i585, align 1
  %i.cic = lshr i32 %i.chu, 21
  %i.cid = trunc i32 %i.chz to i8
  %i.cie = or i8 %i.cid, -128
  %.112.2.i.i587 = getelementptr inbounds nuw i8, ptr %i.chv, i64 3
  store i8 %i.cie, ptr %.112.1.i.i586, align 1
  %i.cif = lshr i32 %i.chu, 28
  %i.cig = trunc i32 %i.cic to i8
  %i.cih = or i8 %i.cig, -128
  %.112.3.i.i588 = getelementptr inbounds nuw i8, ptr %i.chv, i64 4
  store i8 %i.cih, ptr %.112.2.i.i587, align 1
  %i.cii = trunc nuw nsw i32 %i.cif to i8
  store i8 %i.cii, ptr %.112.3.i.i588, align 1
  br label %bb.ih

.lr.ph943:                                        ; preds = %bb.ig, %.lr.ph943
  %.0272941 = phi ptr [ %i.cik, %.lr.ph943 ], [ %i.chm, %bb.ig ] ; 2 uses
  %i.cij = load ptr, ptr %.0272941, align 8
  call void @_ZNK2v88internal4wasm19WasmFunctionBuilder9WriteBodyEPNS1_10ZoneBufferE(ptr noundef nonnull align 8 dereferenceable(316) %i.cij, ptr noundef nonnull %1)
  %i.cik = getelementptr inbounds nuw i8, ptr %.0272941, i64 8 ; 2 uses
  %.not290 = icmp eq ptr %i.cik, %i.chn
  br i1 %.not290, label %._crit_edge944, label %.lr.ph943

bb.ih:                                            ; preds = %._crit_edge944, %"_ZSt6any_ofIPKN2v88internal4wasm17WasmModuleBuilder15WasmDataSegmentEZNKS3_7WriteToEPNS2_10ZoneBufferEE3$_0EbT_SA_T0_.exit.thread"
  %i.cil = load ptr, ptr %i.cct, align 8
  %i.cim = load ptr, ptr %i.ccr, align 8
  %i.cin = icmp eq ptr %i.cil, %i.cim
  br i1 %i.cin, label %bb.jo, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.cio = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 11, ptr noundef %1) ; 2 uses
  %i.cip = load ptr, ptr %i.cct, align 8
  %i.ciq = load ptr, ptr %i.ccr, align 8
  %i.cir = ptrtoint ptr %i.cip to i64
  %i.cis = ptrtoint ptr %i.ciq to i64
  %i.cit = sub i64 %i.cir, %i.cis
  %i.ciu = sdiv exact i64 %i.cit, 40
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ciu)
  %i.civ = load ptr, ptr %i.ccr, align 8          ; 2 uses
  %i.ciw = load ptr, ptr %i.cct, align 8          ; 2 uses
  %.not291945 = icmp eq ptr %i.civ, %i.ciw
  br i1 %.not291945, label %._crit_edge949, label %.lr.ph948

.lr.ph948:                                        ; preds = %bb.ii
  %i.cix = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 20 uses
  br label %bb.ij

._crit_edge949:                                   ; preds = %_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit, %bb.ii
  %i.ciy = getelementptr i8, ptr %1, i64 8
  %.val297 = load ptr, ptr %i.ciy, align 8        ; 2 uses
  %.val298 = load ptr, ptr %i.a, align 8
  %i.ciz = ptrtoint ptr %.val298 to i64
  %i.cja = ptrtoint ptr %.val297 to i64
  %i.cjb = add i64 %i.cio, %i.cja
  %i.cjc = sub i64 %i.ciz, %i.cjb
  %i.cjd = trunc i64 %i.cjc to i32
  %i.cje = add i32 %i.cjd, -5                     ; 5 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.cio ; 5 uses
  %i.cjg = lshr i32 %i.cje, 7
  %i.cjh = trunc i32 %i.cje to i8
  %i.cji = or i8 %i.cjh, -128
  %.112.i.i589 = getelementptr inbounds nuw i8, ptr %i.cjf, i64 1
  store i8 %i.cji, ptr %i.cjf, align 1
  %i.cjj = lshr i32 %i.cje, 14
  %i.cjk = trunc i32 %i.cjg to i8
  %i.cjl = or i8 %i.cjk, -128
  %.112.1.i.i590 = getelementptr inbounds nuw i8, ptr %i.cjf, i64 2
  store i8 %i.cjl, ptr %.112.i.i589, align 1
  %i.cjm = lshr i32 %i.cje, 21
  %i.cjn = trunc i32 %i.cjj to i8
  %i.cjo = or i8 %i.cjn, -128
  %.112.2.i.i591 = getelementptr inbounds nuw i8, ptr %i.cjf, i64 3
  store i8 %i.cjo, ptr %.112.1.i.i590, align 1
  %i.cjp = lshr i32 %i.cje, 28
  %i.cjq = trunc i32 %i.cjm to i8
  %i.cjr = or i8 %i.cjq, -128
  %.112.3.i.i592 = getelementptr inbounds nuw i8, ptr %i.cjf, i64 4
  store i8 %i.cjr, ptr %.112.2.i.i591, align 1
  %i.cjs = trunc nuw nsw i32 %i.cjp to i8
  store i8 %i.cjs, ptr %.112.3.i.i592, align 1
  br label %bb.jo

bb.ij:                                            ; preds = %.lr.ph948, %_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit
  %.0267946 = phi ptr [ %i.civ, %.lr.ph948 ], [ %i.crz, %_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit ] ; 7 uses
  %i.cjt = load ptr, ptr %.0267946, align 8       ; 3 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %.0267946, i64 8 ; 3 uses
  %i.cjv = load ptr, ptr %i.cju, align 8          ; 3 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %.0267946, i64 16 ; 3 uses
  %i.cjx = load ptr, ptr %i.cjw, align 8          ; 2 uses
  %.not.i.not = icmp eq ptr %i.cjx, %i.cjv
  br i1 %.not.i.not, label %_ZN2v88internal10ZoneVectorIhEaSERKS2_.exit, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.cjy = ptrtoint ptr %i.cjv to i64             ; 2 uses
  %i.cjz = getelementptr inbounds nuw i8, ptr %.0267946, i64 24
  %i.cka = load ptr, ptr %i.cjz, align 8          ; 2 uses
  %i.ckb = ptrtoint ptr %i.cka to i64
  %i.ckc = sub i64 %i.ckb, %i.cjy                 ; 2 uses
  %.not23.i = icmp eq ptr %i.cka, %i.cjv
  br i1 %.not23.i, label %bb.ip, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %.not.i.i = icmp eq i64 %i.ckc, -1
  br i1 %.not.i.i, label %bb.im, label %bb.in, !prof !5

bb.im:                                            ; preds = %bb.il
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.in:                                            ; preds = %bb.il
  %i.ckd = add i64 %i.ckc, 7
  %i.cke = and i64 %i.ckd, -8                     ; 3 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cjt, i64 24
  %i.ckg = load i64, ptr %i.ckf, align 8
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.cjt, i64 16 ; 3 uses
  %i.cki = load i64, ptr %i.ckh, align 8          ; 2 uses
  %i.ckj = sub i64 %i.ckg, %i.cki
  %i.ckk = icmp ugt i64 %i.cke, %i.ckj
  br i1 %i.ckk, label %bb.io, label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i, !prof !5

bb.io:                                            ; preds = %bb.in
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cjt, i64 noundef %i.cke) #10
  %.pre.i.i.i = load i64, ptr %i.ckh, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i: ; preds = %bb.io, %bb.in
  %i.ckl = phi i64 [ %.pre.i.i.i, %bb.io ], [ %i.cki, %bb.in ] ; 2 uses
  %i.ckm = inttoptr i64 %i.ckl to ptr             ; 2 uses
  %i.ckn = add i64 %i.ckl, %i.cke
  store i64 %i.ckn, ptr %i.ckh, align 8
  %i.cko = load ptr, ptr %i.cju, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.ckp = load ptr, ptr %i.cjw, align 8
  %i.ckq = ptrtoint ptr %i.ckp to i64
  %i.ckr = ptrtoint ptr %i.cko to i64
  %i.cks = sub i64 %i.ckq, %i.ckr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ckm, ptr nonnull align 1 %i.cko, i64 %i.cks, i1 false)
  %.pre993 = load ptr, ptr %i.cjw, align 8
  %.pre994 = load ptr, ptr %i.cju, align 8
  %.pre995 = ptrtoint ptr %.pre994 to i64
  br label %bb.ip

bb.ip:                                            ; preds = %bb.ik, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i
  %.pre-phi = phi i64 [ %i.cjy, %bb.ik ], [ %.pre995, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i ]
  %i.ckt = phi ptr [ %i.cjx, %bb.ik ], [ %.pre993, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i ]
  %.sroa.5.0 = phi ptr [ null, %bb.ik ], [ %i.ckm, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit.i ] ; 2 uses
  %i.cku = ptrtoint ptr %i.ckt to i64
  %i.ckv = sub i64 %i.cku, %.pre-phi
  %i.ckw = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 %i.ckv
  br label %_ZN2v88internal10ZoneVectorIhEaSERKS2_.exit

_ZN2v88internal10ZoneVectorIhEaSERKS2_.exit:      ; preds = %bb.ij, %bb.ip
  %.sroa.13.0 = phi ptr [ %i.ckw, %bb.ip ], [ null, %bb.ij ] ; 2 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %bb.ip ], [ null, %bb.ij ] ; 3 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %.0267946, i64 32
  %.sroa.19.32.copyload = load i32, ptr %i.ckx, align 8
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.0267946, i64 36
  %.sroa.21.32.copyload = load i8, ptr %.sroa.21.32..sroa_idx, align 4
  %i.cky = trunc nuw i8 %.sroa.21.32.copyload to i1
  %i.ckz = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 1
  %i.clb = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.clc = icmp ugt ptr %i.cla, %i.clb            ; 2 uses
  br i1 %i.cky, label %bb.iq, label %bb.jd

bb.iq:                                            ; preds = %_ZN2v88internal10ZoneVectorIhEaSERKS2_.exit
  br i1 %i.clc, label %bb.ir, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit597

bb.ir:                                            ; preds = %bb.iq
  %i.cld = load ptr, ptr %i.cix, align 8
  %i.cle = ptrtoint ptr %i.clb to i64
  %i.clf = ptrtoint ptr %i.cld to i64
  %i.clg = sub i64 %i.cle, %i.clf                 ; 2 uses
  %i.clh = shl nsw i64 %i.clg, 1                  ; 2 uses
  %i.cli = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i594 = icmp eq i64 %i.clg, -1
  br i1 %.not.i.i.i594, label %bb.is, label %bb.it, !prof !5

bb.is:                                            ; preds = %bb.ir
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.it:                                            ; preds = %bb.ir
  %i.clj = and i64 %i.clh, -8
  %i.clk = add i64 %i.clj, 8                      ; 3 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %i.cli, i64 24
  %i.clm = load i64, ptr %i.cll, align 8
  %i.cln = getelementptr inbounds nuw i8, ptr %i.cli, i64 16 ; 3 uses
  %i.clo = load i64, ptr %i.cln, align 8          ; 2 uses
  %i.clp = sub i64 %i.clm, %i.clo
  %i.clq = icmp ugt i64 %i.clk, %i.clp
  br i1 %i.clq, label %bb.iu, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i595, !prof !5

bb.iu:                                            ; preds = %bb.it
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cli, i64 noundef %i.clk) #10
  %.pre.i.i.i.i596 = load i64, ptr %i.cln, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i595

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i595: ; preds = %bb.iu, %bb.it
  %i.clr = phi i64 [ %.pre.i.i.i.i596, %bb.iu ], [ %i.clo, %bb.it ] ; 2 uses
  %i.cls = inttoptr i64 %i.clr to ptr             ; 4 uses
  %i.clt = add i64 %i.clr, %i.clk
  store i64 %i.clt, ptr %i.cln, align 8
  %i.clu = load ptr, ptr %i.cix, align 8          ; 2 uses
  %i.clv = load ptr, ptr %i.a, align 8
  %i.clw = ptrtoint ptr %i.clv to i64
  %i.clx = ptrtoint ptr %i.clu to i64
  %i.cly = sub i64 %i.clw, %i.clx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cls, ptr align 1 %i.clu, i64 %i.cly, i1 false)
  %i.clz = load ptr, ptr %i.a, align 8
  %i.cma = load ptr, ptr %i.cix, align 8
  %i.cmb = ptrtoint ptr %i.clz to i64
  %i.cmc = ptrtoint ptr %i.cma to i64
  %i.cmd = sub i64 %i.cmb, %i.cmc
  %i.cme = getelementptr inbounds i8, ptr %i.cls, i64 %i.cmd
  store ptr %i.cls, ptr %i.cix, align 8
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cls, i64 %i.clh
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cmf, i64 1
  store ptr %i.cmg, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit597

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit597: ; preds = %bb.iq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i595
  %i.cmh = phi ptr [ %i.ckz, %bb.iq ], [ %i.cme, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i595 ] ; 2 uses
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 1
  store ptr %i.cmi, ptr %i.a, align 8
  store i8 0, ptr %i.cmh, align 1
  %i.cmj = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 1
  %i.cml = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cmm = icmp ugt ptr %i.cmk, %i.cml
  br i1 %i.cmm, label %bb.iv, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit602

bb.iv:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit597
  %i.cmn = load ptr, ptr %i.cix, align 8
  %i.cmo = ptrtoint ptr %i.cml to i64
  %i.cmp = ptrtoint ptr %i.cmn to i64
  %i.cmq = sub i64 %i.cmo, %i.cmp                 ; 2 uses
  %i.cmr = shl nsw i64 %i.cmq, 1                  ; 2 uses
  %i.cms = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i599 = icmp eq i64 %i.cmq, -1
  br i1 %.not.i.i.i599, label %bb.iw, label %bb.ix, !prof !5

bb.iw:                                            ; preds = %bb.iv
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.ix:                                            ; preds = %bb.iv
  %i.cmt = and i64 %i.cmr, -8
  %i.cmu = add i64 %i.cmt, 8                      ; 3 uses
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cms, i64 24
  %i.cmw = load i64, ptr %i.cmv, align 8
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cms, i64 16 ; 3 uses
  %i.cmy = load i64, ptr %i.cmx, align 8          ; 2 uses
  %i.cmz = sub i64 %i.cmw, %i.cmy
  %i.cna = icmp ugt i64 %i.cmu, %i.cmz
  br i1 %i.cna, label %bb.iy, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i600, !prof !5

bb.iy:                                            ; preds = %bb.ix
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cms, i64 noundef %i.cmu) #10
  %.pre.i.i.i.i601 = load i64, ptr %i.cmx, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i600

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i600: ; preds = %bb.iy, %bb.ix
  %i.cnb = phi i64 [ %.pre.i.i.i.i601, %bb.iy ], [ %i.cmy, %bb.ix ] ; 2 uses
  %i.cnc = inttoptr i64 %i.cnb to ptr             ; 4 uses
  %i.cnd = add i64 %i.cnb, %i.cmu
  store i64 %i.cnd, ptr %i.cmx, align 8
  %i.cne = load ptr, ptr %i.cix, align 8          ; 2 uses
  %i.cnf = load ptr, ptr %i.a, align 8
  %i.cng = ptrtoint ptr %i.cnf to i64
  %i.cnh = ptrtoint ptr %i.cne to i64
  %i.cni = sub i64 %i.cng, %i.cnh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cnc, ptr align 1 %i.cne, i64 %i.cni, i1 false)
  %i.cnj = load ptr, ptr %i.a, align 8
  %i.cnk = load ptr, ptr %i.cix, align 8
  %i.cnl = ptrtoint ptr %i.cnj to i64
  %i.cnm = ptrtoint ptr %i.cnk to i64
  %i.cnn = sub i64 %i.cnl, %i.cnm
  %i.cno = getelementptr inbounds i8, ptr %i.cnc, i64 %i.cnn
  store ptr %i.cnc, ptr %i.cix, align 8
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cnc, i64 %i.cmr
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 1
  store ptr %i.cnq, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit602

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit602: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit597, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i600
  %i.cnr = phi ptr [ %i.cmj, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit597 ], [ %i.cno, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i600 ] ; 2 uses
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 1
  store ptr %i.cns, ptr %i.a, align 8
  store i8 65, ptr %i.cnr, align 1
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.19.32.copyload)
  %i.cnt = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cnt, i64 1
  %i.cnv = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cnw = icmp ugt ptr %i.cnu, %i.cnv
  br i1 %i.cnw, label %bb.iz, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit607

bb.iz:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit602
  %i.cnx = load ptr, ptr %i.cix, align 8
  %i.cny = ptrtoint ptr %i.cnv to i64
  %i.cnz = ptrtoint ptr %i.cnx to i64
  %i.coa = sub i64 %i.cny, %i.cnz                 ; 2 uses
  %i.cob = shl nsw i64 %i.coa, 1                  ; 2 uses
  %i.coc = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i604 = icmp eq i64 %i.coa, -1
  br i1 %.not.i.i.i604, label %bb.ja, label %bb.jb, !prof !5

bb.ja:                                            ; preds = %bb.iz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.jb:                                            ; preds = %bb.iz
  %i.cod = and i64 %i.cob, -8
  %i.coe = add i64 %i.cod, 8                      ; 3 uses
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coc, i64 24
  %i.cog = load i64, ptr %i.cof, align 8
  %i.coh = getelementptr inbounds nuw i8, ptr %i.coc, i64 16 ; 3 uses
  %i.coi = load i64, ptr %i.coh, align 8          ; 2 uses
  %i.coj = sub i64 %i.cog, %i.coi
  %i.cok = icmp ugt i64 %i.coe, %i.coj
  br i1 %i.cok, label %bb.jc, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i605, !prof !5

bb.jc:                                            ; preds = %bb.jb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.coc, i64 noundef %i.coe) #10
  %.pre.i.i.i.i606 = load i64, ptr %i.coh, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i605

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i605: ; preds = %bb.jc, %bb.jb
  %i.col = phi i64 [ %.pre.i.i.i.i606, %bb.jc ], [ %i.coi, %bb.jb ] ; 2 uses
  %i.com = inttoptr i64 %i.col to ptr             ; 4 uses
  %i.con = add i64 %i.col, %i.coe
  store i64 %i.con, ptr %i.coh, align 8
end_hunk_3
begin_hunk_4_@_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE:bb.a
  %i.cud = load i64, ptr %i.cuc, align 8
  %i.cue = getelementptr inbounds nuw i8, ptr %i.ctz, i64 16 ; 3 uses
  %i.cuf = load i64, ptr %i.cue, align 8          ; 2 uses
  %i.cug = sub i64 %i.cud, %i.cuf
  %i.cuh = icmp ugt i64 %i.cub, %i.cug
  br i1 %i.cuh, label %bb.jy, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i624, !prof !5

bb.jy:                                            ; preds = %bb.jx
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ctz, i64 noundef %i.cub) #10
  %.pre.i.i.i.i625 = load i64, ptr %i.cue, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i624

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i624: ; preds = %bb.jy, %bb.jx
  %i.cui = phi i64 [ %.pre.i.i.i.i625, %bb.jy ], [ %i.cuf, %bb.jx ] ; 2 uses
  %i.cuj = inttoptr i64 %i.cui to ptr             ; 4 uses
  %i.cuk = add i64 %i.cui, %i.cub
  store i64 %i.cuk, ptr %i.cue, align 8
  %i.cul = load ptr, ptr %i.ctp, align 8          ; 2 uses
  %i.cum = load ptr, ptr %i.a, align 8
  %i.cun = ptrtoint ptr %i.cum to i64
  %i.cuo = ptrtoint ptr %i.cul to i64
  %i.cup = sub i64 %i.cun, %i.cuo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cuj, ptr align 1 %i.cul, i64 %i.cup, i1 false)
  %i.cuq = load ptr, ptr %i.a, align 8
  %i.cur = load ptr, ptr %i.ctp, align 8
  %i.cus = ptrtoint ptr %i.cuq to i64
  %i.cut = ptrtoint ptr %i.cur to i64
  %i.cuu = sub i64 %i.cus, %i.cut
  %i.cuv = getelementptr inbounds i8, ptr %i.cuj, i64 %i.cuu
  store ptr %i.cuj, ptr %i.ctp, align 8
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuj, i64 %i.cty
  store ptr %i.cuw, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit

_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit621, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i624
  %i.cux = phi ptr [ %i.cto, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit621 ], [ %i.cuv, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i624 ]
  %i.cuy = ptrtoint ptr %i.cto to i64
  %i.cuz = sub i64 %i.cuy, %i.ctr                 ; 2 uses
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cux, i64 5
  store ptr %i.cva, ptr %i.a, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer12write_stringENS_4base6VectorIKcEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.1, i64 4)
  %i.cvb = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cvb, i64 1
  %i.cvd = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cve = icmp ugt ptr %i.cvc, %i.cvd
  br i1 %i.cve, label %bb.jz, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit631

bb.jz:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit
  %i.cvf = load ptr, ptr %i.ctp, align 8
  %i.cvg = ptrtoint ptr %i.cvd to i64
  %i.cvh = ptrtoint ptr %i.cvf to i64
  %i.cvi = sub i64 %i.cvg, %i.cvh                 ; 2 uses
  %i.cvj = shl nsw i64 %i.cvi, 1                  ; 2 uses
  %i.cvk = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i628 = icmp eq i64 %i.cvi, -1
  br i1 %.not.i.i.i628, label %bb.ka, label %bb.kb, !prof !5

bb.ka:                                            ; preds = %bb.jz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.kb:                                            ; preds = %bb.jz
  %i.cvl = and i64 %i.cvj, -8
  %i.cvm = add i64 %i.cvl, 8                      ; 3 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvk, i64 24
  %i.cvo = load i64, ptr %i.cvn, align 8
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvk, i64 16 ; 3 uses
  %i.cvq = load i64, ptr %i.cvp, align 8          ; 2 uses
  %i.cvr = sub i64 %i.cvo, %i.cvq
  %i.cvs = icmp ugt i64 %i.cvm, %i.cvr
  br i1 %i.cvs, label %bb.kc, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i629, !prof !5

bb.kc:                                            ; preds = %bb.kb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cvk, i64 noundef %i.cvm) #10
  %.pre.i.i.i.i630 = load i64, ptr %i.cvp, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i629

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i629: ; preds = %bb.kc, %bb.kb
  %i.cvt = phi i64 [ %.pre.i.i.i.i630, %bb.kc ], [ %i.cvq, %bb.kb ] ; 2 uses
  %i.cvu = inttoptr i64 %i.cvt to ptr             ; 4 uses
  %i.cvv = add i64 %i.cvt, %i.cvm
  store i64 %i.cvv, ptr %i.cvp, align 8
  %i.cvw = load ptr, ptr %i.ctp, align 8          ; 2 uses
  %i.cvx = load ptr, ptr %i.a, align 8
  %i.cvy = ptrtoint ptr %i.cvx to i64
  %i.cvz = ptrtoint ptr %i.cvw to i64
  %i.cwa = sub i64 %i.cvy, %i.cvz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cvu, ptr align 1 %i.cvw, i64 %i.cwa, i1 false)
  %i.cwb = load ptr, ptr %i.a, align 8
  %i.cwc = load ptr, ptr %i.ctp, align 8
  %i.cwd = ptrtoint ptr %i.cwb to i64
  %i.cwe = ptrtoint ptr %i.cwc to i64
  %i.cwf = sub i64 %i.cwd, %i.cwe
  %i.cwg = getelementptr inbounds i8, ptr %i.cvu, i64 %i.cwf
  store ptr %i.cvu, ptr %i.ctp, align 8
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cvu, i64 %i.cvj
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwh, i64 1
  store ptr %i.cwi, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit631

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit631: ; preds = %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i629
  %i.cwj = phi ptr [ %i.cvb, %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit ], [ %i.cwg, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i629 ] ; 2 uses
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwj, i64 1
  store ptr %i.cwk, ptr %i.a, align 8
  store i8 1, ptr %i.cwj, align 1
  %i.cwl = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.cwm = load ptr, ptr %i.ctp, align 8
  %i.cwn = ptrtoint ptr %i.cwm to i64             ; 2 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwl, i64 5
  %i.cwp = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cwq = icmp ugt ptr %i.cwo, %i.cwp
  br i1 %i.cwq, label %bb.kd, label %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit636

bb.kd:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit631
  %i.cwr = ptrtoint ptr %i.cwp to i64
  %i.cws = sub i64 %i.cwr, %i.cwn
  %i.cwt = shl nsw i64 %i.cws, 1                  ; 2 uses
  %i.cwu = add i64 %i.cwt, 5                      ; 2 uses
  %i.cwv = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i633 = icmp eq i64 %i.cwu, -1
  br i1 %.not.i.i.i633, label %bb.ke, label %bb.kf, !prof !5

bb.ke:                                            ; preds = %bb.kd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.kf:                                            ; preds = %bb.kd
  %i.cww = add i64 %i.cwt, 12
  %i.cwx = and i64 %i.cww, -8                     ; 3 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwv, i64 24
  %i.cwz = load i64, ptr %i.cwy, align 8
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwv, i64 16 ; 3 uses
  %i.cxb = load i64, ptr %i.cxa, align 8          ; 2 uses
  %i.cxc = sub i64 %i.cwz, %i.cxb
  %i.cxd = icmp ugt i64 %i.cwx, %i.cxc
  br i1 %i.cxd, label %bb.kg, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i634, !prof !5

bb.kg:                                            ; preds = %bb.kf
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cwv, i64 noundef %i.cwx) #10
  %.pre.i.i.i.i635 = load i64, ptr %i.cxa, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i634

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i634: ; preds = %bb.kg, %bb.kf
  %i.cxe = phi i64 [ %.pre.i.i.i.i635, %bb.kg ], [ %i.cxb, %bb.kf ] ; 2 uses
  %i.cxf = inttoptr i64 %i.cxe to ptr             ; 4 uses
  %i.cxg = add i64 %i.cxe, %i.cwx
  store i64 %i.cxg, ptr %i.cxa, align 8
  %i.cxh = load ptr, ptr %i.ctp, align 8          ; 2 uses
  %i.cxi = load ptr, ptr %i.a, align 8
  %i.cxj = ptrtoint ptr %i.cxi to i64
  %i.cxk = ptrtoint ptr %i.cxh to i64
  %i.cxl = sub i64 %i.cxj, %i.cxk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cxf, ptr align 1 %i.cxh, i64 %i.cxl, i1 false)
  %i.cxm = load ptr, ptr %i.a, align 8
  %i.cxn = load ptr, ptr %i.ctp, align 8
  %i.cxo = ptrtoint ptr %i.cxm to i64
  %i.cxp = ptrtoint ptr %i.cxn to i64
  %i.cxq = sub i64 %i.cxo, %i.cxp
  %i.cxr = getelementptr inbounds i8, ptr %i.cxf, i64 %i.cxq
  store ptr %i.cxf, ptr %i.ctp, align 8
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxf, i64 %i.cwu
  store ptr %i.cxs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit636

_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit636: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit631, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i634
  %i.cxt = phi ptr [ %i.cwl, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit631 ], [ %i.cxr, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i634 ]
  %i.cxu = ptrtoint ptr %i.cwl to i64
  %i.cxv = sub i64 %i.cxu, %i.cwn                 ; 2 uses
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cxt, i64 5
  store ptr %i.cxw, ptr %i.a, align 8
  %i.cxx = load ptr, ptr %i.afb, align 8
  %i.cxy = load ptr, ptr %i.afd, align 8
  %i.cxz = ptrtoint ptr %i.cxx to i64
  %i.cya = ptrtoint ptr %i.cxy to i64
  %i.cyb = sub i64 %i.cxz, %i.cya
  %i.cyc = sdiv exact i64 %i.cyb, 40              ; 2 uses
  %i.cyd = trunc i64 %i.cyc to i32                ; 3 uses
  %i.cye = add i32 %.2263, %i.cyd
  %i.cyf = zext i32 %i.cye to i64
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cyf)
  %.not962 = icmp eq i32 %i.cyd, 0
  br i1 %.not962, label %._crit_edge952, label %.lr.ph951.preheader

.lr.ph951.preheader:                              ; preds = %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit636
  %wide.trip.count = and i64 %i.cyc, 4294967295
  br label %.lr.ph951

.lr.ph951:                                        ; preds = %.lr.ph951.preheader, %.lr.ph951
  %indvars.iv989 = phi i64 [ 0, %.lr.ph951.preheader ], [ %indvars.iv.next990, %.lr.ph951 ] ; 3 uses
  %i.cyg = load ptr, ptr %i.afd, align 8
  %i.cyh = getelementptr inbounds nuw [40 x i8], ptr %i.cyg, i64 %indvars.iv989 ; 2 uses
  %i.cyi = trunc nuw i64 %indvars.iv989 to i32
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.cyi)
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cyh, i64 16
  %.sroa.08.0.copyload = load ptr, ptr %i.cyj, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cyh, i64 24
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer12write_stringENS_4base6VectorIKcEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload)
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next990, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge952, label %.lr.ph951, !llvm.loop !26

._crit_edge952:                                   ; preds = %.lr.ph951, %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit636
  br i1 %.not292, label %.loopexit, label %bb.kh

bb.kh:                                            ; preds = %._crit_edge952
  %i.cyk = load ptr, ptr %i.amq, align 8          ; 2 uses
  %i.cyl = load ptr, ptr %i.amo, align 8          ; 2 uses
  %.not293954 = icmp eq ptr %i.cyk, %i.cyl
  br i1 %.not293954, label %.loopexit, label %.lr.ph958

.lr.ph958:                                        ; preds = %bb.kh, %bb.kj
  %.0253956 = phi ptr [ %i.cys, %bb.kj ], [ %i.cyk, %bb.kh ] ; 2 uses
  %.1258955 = phi i32 [ %i.cyr, %bb.kj ], [ %i.cyd, %bb.kh ] ; 2 uses
  %i.cym = load ptr, ptr %.0253956, align 8       ; 2 uses
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 104 ; 2 uses
  %i.cyo = load i64, ptr %i.cyn, align 8
  %i.cyp = icmp eq i64 %i.cyo, 0
  br i1 %i.cyp, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %.lr.ph958
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cym, i64 96
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.1258955)
  %.sroa.0.0.copyload = load ptr, ptr %i.cyq, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.cyn, align 8
  call void @_ZN2v88internal4wasm10ZoneBuffer12write_stringENS_4base6VectorIKcEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %.lr.ph958
  %i.cyr = add i32 %.1258955, 1
  %i.cys = getelementptr inbounds nuw i8, ptr %.0253956, i64 8 ; 2 uses
  %.not293 = icmp eq ptr %i.cys, %i.cyl
  br i1 %.not293, label %.loopexit, label %.lr.ph958

.loopexit:                                        ; preds = %bb.kj, %bb.kh, %._crit_edge952
  %.val295 = load ptr, ptr %i.ctp, align 8        ; 2 uses
  %.val296 = load ptr, ptr %i.a, align 8
  %i.cyt = ptrtoint ptr %.val296 to i64
  %i.cyu = ptrtoint ptr %.val295 to i64
  %i.cyv = add i64 %i.cxv, %i.cyu
  %i.cyw = sub i64 %i.cyt, %i.cyv
  %i.cyx = trunc i64 %i.cyw to i32
  %i.cyy = add i32 %i.cyx, -5                     ; 5 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.cxv ; 5 uses
  %i.cza = lshr i32 %i.cyy, 7
  %i.czb = trunc i32 %i.cyy to i8
  %i.czc = or i8 %i.czb, -128
  %.112.i.i637 = getelementptr inbounds nuw i8, ptr %i.cyz, i64 1
  store i8 %i.czc, ptr %i.cyz, align 1
  %i.czd = lshr i32 %i.cyy, 14
  %i.cze = trunc i32 %i.cza to i8
  %i.czf = or i8 %i.cze, -128
  %.112.1.i.i638 = getelementptr inbounds nuw i8, ptr %i.cyz, i64 2
  store i8 %i.czf, ptr %.112.i.i637, align 1
  %i.czg = lshr i32 %i.cyy, 21
  %i.czh = trunc i32 %i.czd to i8
  %i.czi = or i8 %i.czh, -128
  %.112.2.i.i639 = getelementptr inbounds nuw i8, ptr %i.cyz, i64 3
  store i8 %i.czi, ptr %.112.1.i.i638, align 1
  %i.czj = lshr i32 %i.cyy, 28
  %i.czk = trunc i32 %i.czg to i8
  %i.czl = or i8 %i.czk, -128
  %.112.3.i.i640 = getelementptr inbounds nuw i8, ptr %i.cyz, i64 4
  store i8 %i.czl, ptr %.112.2.i.i639, align 1
  %i.czm = trunc nuw nsw i32 %i.czj to i8
  store i8 %i.czm, ptr %.112.3.i.i640, align 1
  %.val = load ptr, ptr %i.ctp, align 8           ; 2 uses
  %.val294 = load ptr, ptr %i.a, align 8
  %i.czn = ptrtoint ptr %.val294 to i64
  %i.czo = ptrtoint ptr %.val to i64
  %i.czp = add i64 %i.cuz, %i.czo
  %i.czq = sub i64 %i.czn, %i.czp
  %i.czr = trunc i64 %i.czq to i32
  %i.czs = add i32 %i.czr, -5                     ; 5 uses
  %i.czt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cuz ; 5 uses
  %i.czu = lshr i32 %i.czs, 7
  %i.czv = trunc i32 %i.czs to i8
  %i.czw = or i8 %i.czv, -128
  %.112.i.i641 = getelementptr inbounds nuw i8, ptr %i.czt, i64 1
  store i8 %i.czw, ptr %i.czt, align 1
  %i.czx = lshr i32 %i.czs, 14
  %i.czy = trunc i32 %i.czu to i8
  %i.czz = or i8 %i.czy, -128
  %.112.1.i.i642 = getelementptr inbounds nuw i8, ptr %i.czt, i64 2
  store i8 %i.czz, ptr %.112.i.i641, align 1
  %i.daa = lshr i32 %i.czs, 21
  %i.dab = trunc i32 %i.czx to i8
  %i.dac = or i8 %i.dab, -128
  %.112.2.i.i643 = getelementptr inbounds nuw i8, ptr %i.czt, i64 3
  store i8 %i.dac, ptr %.112.1.i.i642, align 1
  %i.dad = lshr i32 %i.czs, 28
  %i.dae = trunc i32 %i.daa to i8
  %i.daf = or i8 %i.dae, -128
  %.112.3.i.i644 = getelementptr inbounds nuw i8, ptr %i.czt, i64 4
  store i8 %i.daf, ptr %.112.2.i.i643, align 1
  %i.dag = trunc nuw nsw i32 %i.dad to i8
  store i8 %i.dag, ptr %.112.3.i.i644, align 1
  br label %bb.kk

bb.kk:                                            ; preds = %.loopexit, %bb.jp
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext range(i8 1, 14) %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i.i, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = and i64 %i.l, -8
  %i.o = add i64 %i.n, 8                          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.o) #10
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i: ; preds = %bb.e, %bb.d
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 %i.ah
  store ptr %i.w, ptr %i.g, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit: ; preds = %bb.a, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i
  %i.al = phi ptr [ %i.b, %bb.a ], [ %i.ai, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.a, align 8
  store i8 %0, ptr %i.al, align 1
  %i.an = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = icmp ugt ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZN2v88internal4wasm10ZoneBuffer12reserve_u32vEv.exit

bb.f:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.au, %i.aq
  %i.aw = shl nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = add i64 %i.aw, 5                        ; 2 uses
  %i.ay = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i2 = icmp eq i64 %i.ax, -1
  br i1 %.not.i.i.i2, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.az = add i64 %i.aw, 12
  %i.ba = and i64 %i.az, -8                       ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal10ZoneVectorINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEE4GrowEm:bb.a
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEA_S5_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #10
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm19WasmFunctionBuilder15DirectCallIndexEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_4wasm19WasmFunctionBuilderEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_4wasm19WasmFunctionBuilderEA_S5_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #10
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_4wasm19WasmFunctionBuilderEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_4wasm19WasmFunctionBuilderEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_4wasm19WasmFunctionBuilderEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_4wasm19WasmFunctionBuilderEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_4wasm19WasmFunctionBuilderEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 461168601842738790
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 40                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ad = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ad, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit, %.lr.ph
  %.0.i10 = phi ptr [ %i.aq, %.lr.ph ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit ] ; 7 uses
  %.08.i9 = phi ptr [ %i.ar, %.lr.ph ], [ %i.b, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i10, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %.0.i10, i8 0, i64 32, i1 false)
  %i.ah = load ptr, ptr %.08.i9, align 8
  store ptr %i.ah, ptr %.0.i10, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i9, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i9, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i9, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i10, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i9, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ao, ptr noundef nonnull align 8 dereferenceable(5) %i.ap, i64 5, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i10, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i9, i64 40 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.d
  br i1 %i.as, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit, !llvm.loop !27

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit
  %i.at = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmDataSegmentEA_S5_EEPT_m.exit ]
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.p
  store ptr %i.au, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = shl i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq i64 %1, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.o, 7
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #10
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS7_RS8_EEES6_INSC_14_Node_iteratorIS9_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 48
  br i1 %i.g, label %bb.b, label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRS7_RS8_EEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 48) #10
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRS7_RS8_EEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit

_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRS7_RS8_EEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i.i.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 18 uses
  %i.j = add i64 %i.h, 48
  store i64 %i.j, ptr %i.d, align 8
  store ptr null, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %2, align 4
  store i32 %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.o, 0                 ; 2 uses
  br i1 %.not.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRS7_RS8_EEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.025.049 = load ptr, ptr %i.p, align 8    ; 2 uses
  %i.q = icmp eq ptr %.sroa.025.049, null
  br i1 %i.q, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit
  %.sroa.025.050 = phi ptr [ %.sroa.025.049, %.lr.ph ], [ %.sroa.025.0, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.025.050, i64 8
  %i.u = icmp eq ptr %.sroa.025.050, %i.i
  br i1 %i.u, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.050, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %.not.i.i.i = icmp eq i64 %i.v, %i.x
  br i1 %.not.i.i.i, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.k, align 8              ; 2 uses
  %i.z = load i64, ptr %i.t, align 8
  %.not8.i.i.i = icmp eq i64 %i.y, %i.z
  br i1 %.not8.i.i.i, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.s, align 8             ; 2 uses
  %.idx18.i.i.i = add i64 %i.y, %i.v
  %i.ab = shl i64 %.idx18.i.i.i, 2                ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %.not9.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.025.050, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.0711.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i, align 4
  %i.af = load i32, ptr %.0810.i.i.i.i.i.i.i, align 4
  %i.ag = icmp eq i32 %i.af, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.ag, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !28

_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f, %bb.e
  %.sroa.025.0 = load ptr, ptr %.sroa.025.050, align 8 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.025.0, null
  br i1 %i.aj, label %.critedge, label %bb.d, !llvm.loop !29

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, %bb.c, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRS7_RS8_EEEPNSC_16_Hashtable_allocINSA_INSC_10_Hash_nodeIS9_Lb1EEEEEEEDpOT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8            ; 5 uses
  %i.am = xor i64 %i.al, -1
  %i.an = shl i64 %i.al, 21
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 24
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = mul i64 %i.aq, 265                      ; 2 uses
  %i.as = lshr i64 %i.ar, 14
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, 21                       ; 2 uses
  %i.av = lshr i64 %i.au, 28
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, 8398540807049701781      ; 2 uses
  %i.ay = lshr i64 %i.ax, 47
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 3866779316627607737      ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bd = load i64, ptr %i.k, align 8             ; 3 uses
  %i.be = add i64 %i.bd, %i.al
  %.idx18.i.i.i.i.fr.i.i = freeze i64 %i.be       ; 2 uses
  %.idx.i.i.i = shl i64 %.idx18.i.i.i.i.fr.i.i, 2 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %.idx18.i.i.i.i.fr.i.i, 0
  br i1 %.not5.i.i.i.i, label %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.critedge
  %i.bg = add i64 %.idx.i.i.i, -4                 ; 2 uses
  %i.bh = and i64 %i.bg, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bi = load i32, ptr %i.bc, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul i64 %i.bj, -4132994306676758123     ; 2 uses
  %i.bl = lshr i64 %i.bk, 47
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, -4132994306676758123
  %i.bo = xor i64 %i.bn, %i.ba
  %i.bp = mul i64 %i.bo, -4132994306676758123     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %i.br = icmp eq i64 %i.bg, 0
  br i1 %i.br, label %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bs = phi i64 [ %i.cj, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.bt = load i32, ptr %.06.i.i.i.i, align 4
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul i64 %i.bu, -4132994306676758123     ; 2 uses
  %i.bw = lshr i64 %i.bv, 47
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -4132994306676758123
  %i.bz = xor i64 %i.by, %i.bs
  %i.ca = mul i64 %i.bz, -4132994306676758123
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = zext i32 %i.cc to i64
  %i.ce = mul i64 %i.cd, -4132994306676758123     ; 2 uses
  %i.cf = lshr i64 %i.ce, 47
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = mul i64 %i.cg, -4132994306676758123
  %i.ci = xor i64 %i.ch, %i.ca
  %i.cj = mul i64 %i.ci, -4132994306676758123     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.ck, %i.bf
  br i1 %.not.i.i.i.i.1, label %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %.critedge
  %.sroa.0.0.i.i = phi i64 [ %i.ba, %.critedge ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cj, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8            ; 4 uses
  %i.cn = urem i64 %.sroa.0.0.i.i, %i.cm          ; 4 uses
  br i1 %.not.not, label %.critedge18, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %.critedge18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  %.phi.trans.insert29.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %.pre30.i.i = load i64, ptr %.phi.trans.insert29.i.i, align 8 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.j, %bb.o
  %i.ct = phi i64 [ %i.dc, %bb.o ], [ %.pre30.i.i, %bb.j ]
  %.0.us.i.i = phi ptr [ %i.da, %bb.o ], [ %i.cs, %bb.j ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %i.cv = icmp eq i64 %.sroa.0.0.i.i, %i.ct
  br i1 %i.cv, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.split.us.i.i
  %i.cw = icmp eq ptr %.0.us.i.i, %i.i
  br i1 %i.cw, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.cy = load i64, ptr %i.cx, align 8
  %.not.i.i.i.i.us.i.i = icmp eq i64 %i.al, %i.cy
  br i1 %.not.i.i.i.i.us.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cz = load i64, ptr %i.cu, align 8
  %.not8.i.i.i.i.us.i.i = icmp eq i64 %i.bd, %i.cz
  br i1 %.not8.i.i.i.i.us.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.split.us.i.i
  %i.da = load ptr, ptr %.0.us.i.i, align 8       ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.da, null
  br i1 %.not18.us.i.i, label %.critedge18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = urem i64 %i.dc, %i.cm
  %.not19.us.i.i = icmp eq i64 %i.dd, %i.cn
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge18, !llvm.loop !31

.split.i.i:                                       ; preds = %bb.j, %bb.t
  %i.de = phi i64 [ %i.dt, %bb.t ], [ %.pre30.i.i, %bb.j ]
  %.0.i.i = phi ptr [ %i.dr, %bb.t ], [ %i.cs, %bb.j ] ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.dg = icmp eq i64 %.sroa.0.0.i.i, %i.de
  br i1 %i.dg, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %.split.i.i
  %i.dh = icmp eq ptr %.0.i.i, %i.i
  br i1 %i.dh, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.dj = load i64, ptr %i.di, align 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.dj
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %.loopexit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dk = load i64, ptr %i.df, align 8
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.bd, %i.dk
  br i1 %.not8.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.s, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.0711.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dq, %bb.s ], [ %i.dm, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %bb.s ], [ %i.bc, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i.i.i.i, align 4
  %i.dn = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i.i, align 4
  %i.do = icmp eq i32 %i.dn, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.do, label %bb.s, label %.loopexit.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !28

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.q, %.split.i.i
  %i.dr = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.dr, null
  br i1 %.not18.i.i, label %.critedge18, label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = urem i64 %i.dt, %i.cm
  %.not19.i.i = icmp eq i64 %i.du, %i.cn
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge18, !llvm.loop !31

_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %bb.s
  %.not16 = icmp eq ptr %.0.i.i, null
  br i1 %.not16, label %.critedge18, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36

.critedge18:                                      ; preds = %bb.t, %.loopexit.i.i, %bb.o, %bb.n, %bb.i, %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 noundef %i.cm, i64 noundef %i.o, i64 noundef 1) #10 ; 2 uses
  %i.dx = extractvalue { i8, i64 } %i.dw, 0
  %i.dy = trunc i8 %i.dx to i1
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge18
  %i.dz = extractvalue { i8, i64 } %i.dw, 1
  tail call void @_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.dz)
  %i.ea = load i64, ptr %i.cl, align 8
  %i.eb = urem i64 %.sroa.0.0.i.i, %i.ea
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge18
  %.0.i19 = phi i64 [ %i.eb, %bb.u ], [ %i.cn, %.critedge18 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.0.0.i.i, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.0.i19
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = load ptr, ptr %i.eg, align 8
  store ptr %i.eh, ptr %i.i, align 8
  %i.ei = load ptr, ptr %i.ed, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.0.i19
  %i.ek = load ptr, ptr %i.ej, align 8
  store ptr %i.i, ptr %i.ek, align 8
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit

bb.x:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8
  store ptr %i.em, ptr %i.i, align 8
  store ptr %i.i, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not11.i.i = icmp eq ptr %i.en, null
  br i1 %.not11.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eo = load ptr, ptr %i.ed, align 8
  %i.ep = load i64, ptr %i.cl, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = urem i64 %i.er, %i.ep
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.es
  store ptr %i.i, ptr %i.et, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eu = load ptr, ptr %i.ed, align 8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0.i19
  store ptr %i.el, ptr %i.ev, align 8
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit

_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit: ; preds = %bb.w, %bb.z
  %i.ew = load i64, ptr %i.n, align 8
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.n, align 8
  br label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36

_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread36: ; preds = %bb.g, %bb.d, %bb.h, %bb.p, %bb.k, %bb.m, %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit
  %.sroa.031.0 = phi ptr [ %i.i, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit ], [ %.0.i.i, %bb.p ], [ %.0.us.i.i, %bb.k ], [ %.sroa.025.050, %bb.h ], [ %.0.i.i, %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit ], [ %.0.us.i.i, %bb.m ], [ %.sroa.025.050, %bb.d ], [ %.sroa.025.050, %bb.g ]
  %.sroa.4.0 = phi i8 [ 1, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = icmp ult i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3                        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.e) #10
  %.pre.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.f, %bb.e
  %i.l = phi i64 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = add i64 %i.l, %i.e
  store i64 %i.n, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.m, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not29 = icmp eq ptr %i.p, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.q, %bb.j ], [ %i.p, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.q = load ptr, ptr %.031, align 8             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = urem i64 %i.s, %1                        ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.v, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.o, align 8
  store ptr %i.w, ptr %.031, align 8
  store ptr %.031, ptr %i.o, align 8
  store ptr %i.o, ptr %i.u, align 8
  %i.x = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.y, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.v, align 8
  store ptr %i.z, ptr %.031, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %.031, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm14TypeDefinitionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm14TypeDefinitionEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm14TypeDefinitionEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm14TypeDefinitionEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 768614336404564650
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm14TypeDefinitionEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm14TypeDefinitionEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 24                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm14TypeDefinitionEA_S4_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm14TypeDefinitionEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm14TypeDefinitionEA_S4_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm14TypeDefinitionEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm14TypeDefinitionEA_S4_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm14TypeDefinitionEA_S4_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.019 = load ptr, ptr %i.c, align 8     ; 3 uses
  %i.d = icmp eq ptr %.sroa.06.019, null
  br i1 %i.d, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = load i64, ptr %1, align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.idx18.i.i.i = add i64 %i.g, %i.f
  %.idx18.i.i.i.fr = freeze i64 %.idx18.i.i.i
  %i.j = shl i64 %.idx18.i.i.i.fr, 2              ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %.not9.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us
  %.sroa.06.020.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us ], [ %.sroa.06.019, %.lr.ph ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.020.us, i64 8 ; 2 uses
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.020.us, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %.not.i.i.i.us = icmp eq i64 %i.f, %i.o
  br i1 %.not.i.i.i.us, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.l, align 8
  %.not8.i.i.i.us = icmp eq i64 %i.g, %i.p
  br i1 %.not8.i.i.i.us, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us: ; preds = %bb.d, %bb.c
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.020.us, align 8 ; 2 uses
  %i.q = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.q, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !33

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit
  %.sroa.06.020 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit ], [ %.sroa.06.019, %.lr.ph ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.020, i64 8 ; 2 uses
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.020, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %.not.i.i.i = icmp eq i64 %i.f, %i.u
  br i1 %.not.i.i.i, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.r, align 8
  %.not8.i.i.i = icmp eq i64 %i.g, %i.v
  br i1 %.not8.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.020, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.0711.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.x, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i, align 4
  %i.y = load i32, ptr %.0810.i.i.i.i.i.i.i, align 4
  %i.z = icmp eq i32 %i.y, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.z, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !28

_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f, %bb.e
  %.sroa.06.0 = load ptr, ptr %.sroa.06.020, align 8 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.06.0, null
  br i1 %i.ac, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !33

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 5 uses
  %i.af = xor i64 %i.ae, -1
  %i.ag = shl i64 %i.ae, 21
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 24
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, 265                      ; 2 uses
  %i.al = lshr i64 %i.ak, 14
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, 21                       ; 2 uses
  %i.ao = lshr i64 %i.an, 28
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, 8398540807049701781      ; 2 uses
  %i.ar = lshr i64 %i.aq, 47
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 3866779316627607737      ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 5 uses
  %i.aw = load i64, ptr %1, align 8               ; 3 uses
  %i.ax = add i64 %i.aw, %i.ae
  %.idx18.i.i.i.i.fr.i.i = freeze i64 %i.ax       ; 2 uses
  %.idx.i.i.i = shl i64 %.idx18.i.i.i.i.fr.i.i, 2 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 %.idx.i.i.i ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %.idx18.i.i.i.i.fr.i.i, 0
  br i1 %.not5.i.i.i.i, label %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.az = add i64 %.idx.i.i.i, -4                 ; 2 uses
  %i.ba = and i64 %i.az, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bb = load i32, ptr %i.av, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.bc, -4132994306676758123     ; 2 uses
  %i.be = lshr i64 %i.bd, 47
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -4132994306676758123
  %i.bh = xor i64 %i.bg, %i.at
  %i.bi = mul i64 %i.bh, -4132994306676758123     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.prol ]
  %i.bk = icmp eq i64 %i.az, 0
  br i1 %i.bk, label %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bl = phi i64 [ %i.cc, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.bm = load i32, ptr %.06.i.i.i.i, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul i64 %i.bn, -4132994306676758123     ; 2 uses
  %i.bp = lshr i64 %i.bo, 47
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4132994306676758123
  %i.bs = xor i64 %i.br, %i.bl
  %i.bt = mul i64 %i.bs, -4132994306676758123
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul i64 %i.bw, -4132994306676758123     ; 2 uses
  %i.by = lshr i64 %i.bx, 47
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = mul i64 %i.bz, -4132994306676758123
  %i.cb = xor i64 %i.ca, %i.bt
  %i.cc = mul i64 %i.cb, -4132994306676758123     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.cd, %i.ay
  br i1 %.not.i.i.i.i.1, label %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.h
  %.sroa.0.0.i.i = phi i64 [ %i.at, %bb.h ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cc, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load i64, ptr %i.ce, align 8            ; 3 uses
  %i.cg = urem i64 %.sroa.0.0.i.i, %i.cf          ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  %.phi.trans.insert29.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %.pre30.i.i = load i64, ptr %.phi.trans.insert29.i.i, align 8 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.i, %bb.n
  %i.cm = phi i64 [ %i.cv, %bb.n ], [ %.pre30.i.i, %bb.i ]
  %.0.us.i.i = phi ptr [ %i.ct, %bb.n ], [ %i.cl, %bb.i ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8 ; 2 uses
  %i.co = icmp eq i64 %.sroa.0.0.i.i, %i.cm
  br i1 %i.co, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.split.us.i.i
  %i.cp = icmp eq ptr %1, %i.cn
  br i1 %i.cp, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8
  %.not.i.i.i.i.us.i.i = icmp eq i64 %i.ae, %i.cr
  br i1 %.not.i.i.i.i.us.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = load i64, ptr %i.cn, align 8
  %.not8.i.i.i.i.us.i.i = icmp eq i64 %i.aw, %i.cs
  br i1 %.not8.i.i.i.i.us.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.split.us.i.i
  %i.ct = load ptr, ptr %.0.us.i.i, align 8       ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ct, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = urem i64 %i.cv, %i.cf
  %.not19.us.i.i = icmp eq i64 %i.cw, %i.cg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !31

.split.i.i:                                       ; preds = %bb.i, %bb.s
  %i.cx = phi i64 [ %i.dm, %bb.s ], [ %.pre30.i.i, %bb.i ]
  %.0.i.i = phi ptr [ %i.dk, %bb.s ], [ %i.cl, %bb.i ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.0.0.i.i, %i.cx
  br i1 %i.cz, label %bb.o, label %.loopexit.i.i

bb.o:                                             ; preds = %.split.i.i
  %i.da = icmp eq ptr %1, %i.cy
  br i1 %i.da, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.dc
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %.loopexit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dd = load i64, ptr %i.cy, align 8
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.aw, %i.dd
  br i1 %.not8.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.0711.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dj, %bb.r ], [ %i.df, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %bb.r ], [ %i.av, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i.i.i.i, align 4
  %i.dg = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i.i, align 4
  %i.dh = icmp eq i32 %i.dg, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dh, label %bb.r, label %.loopexit.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.di, %i.ay
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !28

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.q, %bb.p, %.split.i.i
  %i.dk = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.dk, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = urem i64 %i.dm, %i.cf
  %.not19.i.i = icmp eq i64 %i.dn, %i.cg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !31

_ZNKSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %bb.s, %.loopexit.i.i, %bb.o, %bb.r, %bb.n, %bb.m, %bb.l, %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, %.lr.ph.split, %bb.g, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.d, %bb.b, %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.020.us, %bb.d ], [ null, %bb.b ], [ null, %bb.m ], [ %.sroa.06.020, %.lr.ph.split ], [ null, %_ZNKSt8__detail15_Hash_code_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ %.sroa.06.020, %bb.g ], [ %.0.i.i, %bb.r ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us ], [ %.sroa.06.020.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN2v88internal9SignatureINS2_4wasm9ValueTypeEEESt4pairIKS6_NS4_15ModuleTypeIndexEENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit ], [ %.0.us.i.i, %bb.l ], [ %.0.us.i.i, %bb.j ], [ null, %bb.n ], [ null, %bb.s ], [ %.0.i.i, %bb.o ], [ null, %.loopexit.i.i ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm15ModuleTypeIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm15ModuleTypeIndexEA_S4_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #10
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm15ModuleTypeIndexEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm15ModuleTypeIndexEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm15ModuleTypeIndexEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm15ModuleTypeIndexEA_S4_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm15ModuleTypeIndexEA_S4_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder9WasmTableEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder9WasmTableEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 56
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder9WasmTableEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder9WasmTableEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 329406144173384850
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder9WasmTableEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder9WasmTableEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 56                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder9WasmTableEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder9WasmTableEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder9WasmTableEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder9WasmTableEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder9WasmTableEA_S5_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder9WasmTableEA_S5_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmMemoryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmMemoryEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 12
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmMemoryEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmMemoryEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 1537228672809129301
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmMemoryEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmMemoryEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 12
  %i.t = add nuw i64 %i.s, 4
  %i.u = and i64 %i.t, -8                         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmMemoryEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.u) #10
  %.pre.i.i = load i64, ptr %i.x, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmMemoryEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmMemoryEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %.pre.i.i, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ad = add i64 %i.ab, %i.u
  store i64 %i.ad, ptr %i.x, align 8
  store ptr %i.ac, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.g
  store ptr %i.ae, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmMemoryEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmMemoryEA_S5_EEPT_m.exit
  %i.af = phi ptr [ %.pre, %bb.f ], [ %i.ac, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmMemoryEA_S5_EEPT_m.exit ]
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.p
  store ptr %i.ag, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 88
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 209622091746699450
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 88                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ad = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ad, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit, %.lr.ph
  %.0.i10 = phi ptr [ %i.at, %.lr.ph ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit ] ; 7 uses
  %.08.i9 = phi ptr [ %i.au, %.lr.ph ], [ %i.b, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.0.i10, ptr noundef nonnull align 8 dereferenceable(84) %.08.i9, i64 44, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i9, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i10, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i10, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i10, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  %i.aj = load ptr, ptr %i.af, align 8
  store ptr %i.aj, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i9, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i9, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %i.ah, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i9, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.ai, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i10, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i9, i64 80
  %i.as = load i32, ptr %i.ar, align 8
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i10, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i9, i64 88 ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.d
  br i1 %i.av, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit, !llvm.loop !34

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit
  %i.aw = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEE16MoveToNewStorageEPS4_S6_PKS4_.exit.loopexit ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegmentEA_S5_EEPT_m.exit ]
  %i.ax = getelementptr inbounds nuw [88 x i8], ptr %i.aw, i64 %i.p
  store ptr %i.ax, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEA_S6_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #10
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder15WasmElemSegment5EntryEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 461168601842738790
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 40                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEA_S5_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder18WasmFunctionImportEA_S5_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 461168601842738790
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 40                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEA_S5_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder16WasmGlobalImportEA_S5_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 768614336404564650
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 24                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmExportEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmExportEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmExportEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmExportEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmExportEA_S5_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmExportEA_S5_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 2, %bb.a ]
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %1) ; 3 uses
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = icmp ult i64 %i.p, 461168601842738790
  br i1 %i.r, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE11NewCapacityEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE11NewCapacityEm.exit
  %i.s = mul nuw i64 %i.p, 40                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmGlobalEA_S5_EEPT_m.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.s) #10
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmGlobalEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmGlobalEA_S5_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g
  store ptr %i.ac, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmGlobalEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmGlobalEA_S5_EEPT_m.exit
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm17WasmModuleBuilder10WasmGlobalEA_S5_EEPT_m.exit ]
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.p
  store ptr %i.ae, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !19, !18}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
end_hunk_5
