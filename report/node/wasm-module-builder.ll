inline.NumInlined: 914
inline.NumDeleted: 472
begin_hunk_0_@_ZN2v88internal4wasm17WasmModuleBuilder22ExportImportedFunctionENS_4base6VectorIKcEEi:bb.a
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
  %i.cu = add i64 %i.cp, -8
  %i.cv = sub i64 %i.cu, %i.cq                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 32
  br i1 %min.iters.check, label %.lr.ph.preheader1232, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %n.mod.vf = and i64 %i.cx, 3                    ; 2 uses
  %i.cy = icmp eq i64 %n.mod.vf, 0
  %i.cz = select i1 %i.cy, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.cx, %i.cz               ; 2 uses
  %i.da = shl i64 %n.vec, 3
  %i.db = getelementptr i8, ptr %i.co, i64 %i.da
  %i.dc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ct, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dc, %vector.ph ], [ %i.dh, %vector.body ]
  %vec.phi1205 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %i.dd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.dd
  %i.de = getelementptr i8, ptr %i.co, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.dg = getelementptr i8, ptr %i.de, i64 20
  %wide.vec = load <4 x i32>, ptr %i.df, align 4
  %wide.vec.a = load <4 x i32>, ptr %i.dg, align 4
  %6 = freeze <4 x i32> %wide.vec
  %7 = bitcast <4 x i32> %6 to <2 x i64>
  %8 = and <2 x i64> %7, splat (i64 4294967295)
  %9 = freeze <4 x i32> %wide.vec.a
  %10 = bitcast <4 x i32> %9 to <2 x i64>
  %11 = and <2 x i64> %10, splat (i64 4294967295)
  %i.dh = sub <2 x i64> %vec.phi, %8              ; 2 uses
  %i.di = sub <2 x i64> %vec.phi1205, %11         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.di, %i.dh
  %i.dk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader1232

.lr.ph.preheader1232:                             ; preds = %.lr.ph.preheader, %middle.block
  %.0865.ph = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %i.dk, %middle.block ]
  %.0250864.ph = phi ptr [ %i.co, %.lr.ph.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.0.lcssa = phi i64 [ %i.ct, %bb.f ], [ %i.ds, %.lr.ph ]
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.0.lcssa)
  %i.dl = load ptr, ptr %i.cl, align 8
  %i.dm = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  %spec.select787 = select i1 %i.dn, ptr null, ptr %i.dm ; 2 uses
  %i.do = load ptr, ptr %i.bz, align 8
  %i.dp = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not959 = icmp eq ptr %i.do, %i.dp
  br i1 %.not959, label %.preheader, label %select.unfold.preheader.lr.ph

select.unfold.preheader.lr.ph:                    ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 60 uses
  br label %select.unfold.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader1232, %.lr.ph
  %.0865 = phi i64 [ %i.ds, %.lr.ph ], [ %.0865.ph, %.lr.ph.preheader1232 ]
  %.0250864 = phi ptr [ %i.dt, %.lr.ph ], [ %.0250864.ph, %.lr.ph.preheader1232 ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0250864, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.dr = zext i32 %.sroa.3.0.copyload to i64
  %i.ds = sub i64 %.0865, %i.dr                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0250864, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dt, %i.cm
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

select.unfold.preheader:                          ; preds = %select.unfold.preheader.lr.ph, %.loopexit835
  %i.du = phi ptr [ %i.dp, %select.unfold.preheader.lr.ph ], [ %i.abl, %.loopexit835 ]
  %i.dv = phi i64 [ 0, %select.unfold.preheader.lr.ph ], [ %i.abj, %.loopexit835 ]
  %.0251882 = phi ptr [ %spec.select787, %select.unfold.preheader.lr.ph ], [ %.1.lcssa, %.loopexit835 ] ; 2 uses
  %.0252881 = phi i32 [ 0, %select.unfold.preheader.lr.ph ], [ %i.abi, %.loopexit835 ] ; 2 uses
  %.not276866 = icmp eq ptr %.0251882, null
  br i1 %.not276866, label %.critedge, label %.lr.ph868

.preheader:                                       ; preds = %.loopexit835, %._crit_edge
  %.0251.lcssa = phi ptr [ %spec.select787, %._crit_edge ], [ %.1.lcssa, %.loopexit835 ] ; 2 uses
  %.not275884 = icmp eq ptr %.0251.lcssa, null
  br i1 %.not275884, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415._crit_edge, label %.lr.ph886

.lr.ph886:                                        ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.ce

.lr.ph868:                                        ; preds = %select.unfold.preheader, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit
  %.1867 = phi ptr [ %i.hh, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit ], [ %.0251882, %select.unfold.preheader ] ; 5 uses
  %i.dx = load i32, ptr %.1867, align 4
  %i.dy = icmp eq i32 %.0252881, %i.dx
  br i1 %i.dy, label %bb.g, label %.critedge.loopexit

bb.g:                                             ; preds = %.lr.ph868
  %i.dz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ec = icmp ugt ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.h, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit

bb.h:                                             ; preds = %bb.g
  %i.ed = load ptr, ptr %i.dq, align 8
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 2 uses
  %i.ei = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.eg, -1
  br i1 %.not.i.i.i, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ej = and i64 %i.eh, -8
  %i.ek = add i64 %i.ej, 8                        ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 2 uses
  %i.ep = sub i64 %i.em, %i.eo
  %i.eq = icmp ugt i64 %i.ek, %i.ep
  br i1 %i.eq, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332, !prof !5

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, i64 noundef %i.ek) #10
  %.pre.i.i.i.i333 = load i64, ptr %i.en, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332: ; preds = %bb.k, %bb.j
  %i.er = phi i64 [ %.pre.i.i.i.i333, %bb.k ], [ %i.eo, %bb.j ] ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr               ; 4 uses
  %i.et = add i64 %i.er, %i.ek
  store i64 %i.et, ptr %i.en, align 8
  %i.eu = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.a, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.eu, i64 %i.ey, i1 false)
  %i.ez = load ptr, ptr %i.a, align 8
  %i.fa = load ptr, ptr %i.dq, align 8
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.es, i64 %i.fd
  store ptr %i.es, ptr %i.dq, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eh
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fg, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit: ; preds = %bb.g, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332
  %i.fh = phi ptr [ %i.dz, %bb.g ], [ %i.fe, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i332 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store ptr %i.fi, ptr %i.a, align 8
  store i8 78, ptr %i.fh, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.1867, i64 4
  %i.fk = load i32, ptr %i.fj, align 4            ; 3 uses
  %i.fl = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 5
  %i.fn = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.fo = icmp ugt ptr %i.fm, %i.fn
  br i1 %i.fo, label %bb.l, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i

bb.l:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit
  %i.fp = load ptr, ptr %i.dq, align 8
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = shl nsw i64 %i.fs, 1                    ; 2 uses
  %i.fu = add i64 %i.ft, 5                        ; 2 uses
  %i.fv = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i334 = icmp eq i64 %i.fu, -1
  br i1 %.not.i.i.i334, label %bb.m, label %bb.n, !prof !5

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.fw = add i64 %i.ft, 12
  %i.fx = and i64 %i.fw, -8                       ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 3 uses
  %i.gb = load i64, ptr %i.ga, align 8            ; 2 uses
  %i.gc = sub i64 %i.fz, %i.gb
  %i.gd = icmp ugt i64 %i.fx, %i.gc
  br i1 %i.gd, label %bb.o, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335, !prof !5

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i64 noundef %i.fx) #10
  %.pre.i.i.i.i336 = load i64, ptr %i.ga, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335: ; preds = %bb.o, %bb.n
  %i.ge = phi i64 [ %.pre.i.i.i.i336, %bb.o ], [ %i.gb, %bb.n ] ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr               ; 4 uses
  %i.gg = add i64 %i.ge, %i.fx
  store i64 %i.gg, ptr %i.ga, align 8
  %i.gh = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.gi = load ptr, ptr %i.a, align 8
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.gh, i64 %i.gl, i1 false)
  %i.gm = load ptr, ptr %i.a, align 8
  %i.gn = load ptr, ptr %i.dq, align 8
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.gf, i64 %i.gq ; 2 uses
  store ptr %i.gr, ptr %i.a, align 8
  store ptr %i.gf, ptr %i.dq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fu
  store ptr %i.gs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit
  %i.gt = phi ptr [ %i.fl, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit ], [ %i.gr, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i335 ]
  %i.gu = icmp ugt i32 %i.fk, 127
  br i1 %i.gu, label %.lr.ph.i.i, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.gz, %.lr.ph.i.i ], [ %i.fk, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i ] ; 3 uses
  %i.gv = trunc i32 %.05.i.i to i8
  %i.gw = or i8 %i.gv, -128
end_hunk_0
