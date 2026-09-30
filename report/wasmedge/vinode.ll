Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vinode?download=true
inline.NumInlined: 1230
inline.NumDeleted: 469
begin_hunk_0_@_ZN8WasmEdge4Host4WASI6VINode15pathFilestatGetESt10shared_ptrIS2_ESt17basic_string_viewIcSt11char_traitsIcEE20__wasi_lookupflags_tR17__wasi_filestat_t:bb.a
  %i.ab = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !46
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ah) #20
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i7 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i7, label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = ptrtoint ptr %i.l to i64
  %i.ak = ptrtoint ptr %i.j to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.al) #20
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.ai

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.b
  %i.am = load i16, ptr %i.i, align 8, !tbaa !55
  %i.an = zext i16 %i.am to i32
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit10

bb.l:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = and i32 %i.aa, 65280
  %i.ap = and i32 %i.aa, 255
  br label %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit10

_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit10: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %.sroa.417.025 = phi i32 [ %i.an, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %.sroa.417.0.extract.shift, %bb.l ]
  %.sroa.4.023 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.ao, %bb.l ]
  %.sroa.016.021 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.aq = shl nuw i32 %.sroa.417.025, 16
  %i.ar = or disjoint i32 %.sroa.4.023, %i.aq
  %i.as = or disjoint i32 %i.ar, %.sroa.016.021
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit10
  %.sroa.016.0.insert.insert = phi i32 [ %i.as, %_ZN5cxx206detail21expected_storage_baseISt6vectorIcSaIcEE14__wasi_errno_tLb0ELb1EED2Ev.exit10 ], [ 4980736, %bb.a ]
  ret i32 %.sroa.016.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6VINode11resolvePathERSt10shared_ptrIS2_ERSt17basic_string_viewIcSt11char_traitsIcEE20__wasi_lookupflags_tNS1_3VFS5FlagsEhbPj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected.36") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.57", align 8    ; 17 uses
  %9 = alloca %struct.__wasi_filestat_t, align 8  ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.45", align 8   ; 19 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.cxx20::expected.4", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.WasmEdge::Host::WASI::INode", align 8 ; 16 uses
  %16 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.f = and i8 %4, 4
  %i.g = icmp eq i8 %i.f, 0
  %not. = xor i1 %6, true
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = and i32 %3, 1
  %.not86 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %.not88 = icmp eq ptr %7, null                  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 160 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 168 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 176 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 192 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 176
  br label %bb.b

bb.b:                                             ; preds = %bb.eo, %bb.a
  %.sroa.27.0 = phi ptr [ null, %bb.a ], [ %i.il, %bb.eo ] ; 18 uses
  %.sroa.20.0 = phi ptr [ null, %bb.a ], [ %i.ij, %bb.eo ] ; 5 uses
  %.sroa.0229.0 = phi ptr [ null, %bb.a ], [ %i.ik, %bb.eo ] ; 22 uses
  %.0 = phi i8 [ %5, %bb.a ], [ %i.fd, %bb.eo ]
  %i.an = load i64, ptr %2, align 8, !tbaa !120
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 44, ptr %i.m, align 8, !tbaa !59
  br label %.thread252

bb.e:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !46
  %i.ar = icmp eq i8 %i.aq, 47
  br i1 %i.ar, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 63, ptr %i.m, align 8, !tbaa !59
  br label %.thread252

.thread:                                          ; preds = %bb.c, %bb.e
  %i.as = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %.not261 = icmp eq ptr %i.as, null
  br i1 %.not261, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 8, ptr %i.m, align 8, !tbaa !59
  br label %.thread252

bb.h:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = call noundef zeroext i1 @_ZNK8WasmEdge4Host4WASI5INode11isDirectoryEv(ptr noundef nonnull align 8 dereferenceable(200) %i.at) #19
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 54, ptr %i.m, align 8, !tbaa !59
  br label %.thread252

bb.j:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %1, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = call noundef zeroext i1 @_ZNK8WasmEdge4Host4WASI5INode9canBrowseEv(ptr noundef nonnull align 8 dereferenceable(200) %i.aw) #19
  br i1 %i.ax, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 2, ptr %i.m, align 8, !tbaa !59
  br label %.thread252

.preheader:                                       ; preds = %bb.j, %.preheader.backedge
  %i.ay = load i64, ptr %2, align 8, !tbaa !120   ; 5 uses
  %.not262 = icmp eq i64 %i.ay, 0
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !121 ; 15 uses
  br i1 %.not262, label %bb.m, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %.preheader
  %i.az = call ptr @memchr(ptr noundef %.pre, i32 noundef 47, i64 noundef %i.ay) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %.pre to i64
  %i.bc = sub i64 %i.ba, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %.preheader
  %.1.i = phi i64 [ -1, %.preheader ], [ %i.bc, %bb.l ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.1.i) ; 17 uses
  %i.bd = sub nuw i64 %i.ay, %.sroa.speculated.i  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.speculated.i ; 2 uses
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %scevgep = getelementptr i8, ptr %.pre, i64 %i.ay
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.pn263432 = phi ptr [ %i.bj, %bb.n ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0199.0431 = phi i64 [ %i.bi, %bb.n ], [ %i.bd, %.lr.ph.preheader ] ; 2 uses
  %i.bg = load i8, ptr %.pn263432, align 1, !tbaa !46
  %i.bh = icmp eq i8 %i.bg, 47
  br i1 %i.bh, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.lr.ph
  %i.bi = add i64 %.sroa.0199.0431, -1            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn263432, i64 1
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.pn263.lcssa = phi ptr [ %i.be, %bb.m ], [ %scevgep, %bb.n ]
  %i.bl = icmp eq i64 %.1.i, -1
  %i.bm = or i1 %i.bl, %not.
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.0199.0275 = phi i64 [ 0, %._crit_edge ], [ %.sroa.0199.0431, %.lr.ph ] ; 4 uses
  %.pn263273 = phi ptr [ %.pn263.lcssa, %._crit_edge ], [ %.pn263432, %.lr.ph ] ; 5 uses
  %i.bn = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ] ; 2 uses
  %i.bo = phi i1 [ %i.bm, %._crit_edge ], [ false, %.lr.ph ] ; 5 uses
  %18 = icmp ne i64 %.sroa.speculated.i, 0        ; 2 uses
  br i1 %18, label %bb.o, label %bb.ao

bb.o:                                             ; preds = %.critedge
  %i.bp = load i8, ptr %.pre, align 1, !tbaa !46
  %i.bq = icmp eq i8 %i.bp, 46
  br i1 %i.bq, label %bb.p, label %bb.ao

bb.p:                                             ; preds = %bb.o
  switch i64 %.sroa.speculated.i, label %bb.ao [
    i64 1, label %bb.q
    i64 2, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %i.bo, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %.not88, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.bs = load ptr, ptr %8, align 8, !tbaa !79
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 4
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %7, align 4, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i8 1, ptr %0, align 8, !tbaa !72
  store ptr %.sroa.0229.0, ptr %i.m, align 8, !tbaa !74
  store ptr %.sroa.20.0, ptr %i.n, align 8, !tbaa !80
  store ptr %.sroa.27.0, ptr %i.o, align 8, !tbaa !75
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit171

bb.u:                                             ; preds = %bb.q
  store i64 %.sroa.0199.0275, ptr %2, align 8, !tbaa !19
  store ptr %.pn263273, ptr %i.e, align 8, !tbaa !69
  br label %.preheader.backedge

bb.v:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !46
  %i.ca = icmp eq i8 %i.bz, 46
  br i1 %i.ca, label %bb.w, label %bb.ao

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %8, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !122 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 63, ptr %i.m, align 8, !tbaa !59
  br label %.thread252

bb.y:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !67  ; 8 uses
  store <2 x ptr> %i.cf, ptr %1, align 8, !tbaa !70
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ch, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !83
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #19, !inline_history !110
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #19, !inline_history !110
  br label %_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !11
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.ck, %bb.ac ], [ %i.cu, %bb.ad ]
  %i.cv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cv, label %bb.ae, label %_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit, !prof !84

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #19
  br label %_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit

_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ae
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !78  ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !78
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !67 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.da, align 8, !tbaa !82
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !83
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #19, !inline_history !111
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #19, !inline_history !111
  br label %_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit

bb.ah:                                            ; preds = %bb.af
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i115 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i115, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !11
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi i32 [ %i.dd, %bb.ai ], [ %i.dn, %bb.aj ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.do, label %bb.ak, label %_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit, !prof !84

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #19
  br label %_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEEaSEOS4_.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ak
  store i64 %.sroa.0199.0275, ptr %2, align 8, !tbaa !19
  store ptr %.pn263273, ptr %i.e, align 8, !tbaa !69
  br i1 %i.bo, label %bb.al, label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit, %bb.en, %bb.u
  br label %.preheader

bb.al:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN8WasmEdge4Host4WASI6VINodeEESaIS5_EE8pop_backEv.exit
  store i64 1, ptr %2, align 8, !tbaa !19
  store ptr @.str, ptr %i.e, align 8, !tbaa !69
  br i1 %.not88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.dq = load ptr, ptr %8, align 8, !tbaa !79
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = lshr exact i64 %i.dt, 4
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %7, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store i8 1, ptr %0, align 8, !tbaa !72
  store ptr %.sroa.0229.0, ptr %i.m, align 8, !tbaa !74
  store ptr %.sroa.20.0, ptr %i.n, align 8, !tbaa !80
  store ptr %.sroa.27.0, ptr %i.o, align 8, !tbaa !75
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit171

bb.ao:                                            ; preds = %bb.p, %bb.v, %bb.o, %.critedge
  %or.cond = and i1 %.not86, %i.bo
  br i1 %or.cond, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  store i64 %.sroa.speculated.i, ptr %2, align 8, !tbaa !19
  br i1 %.not88, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.dx = load ptr, ptr %8, align 8, !tbaa !79
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = lshr exact i64 %i.ea, 4
  %i.ec = trunc i64 %i.eb to i32
  store i32 %i.ec, ptr %7, align 4, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i8 1, ptr %0, align 8, !tbaa !72
  store ptr %.sroa.0229.0, ptr %i.m, align 8, !tbaa !74
  store ptr %.sroa.20.0, ptr %i.n, align 8, !tbaa !80
  store ptr %.sroa.27.0, ptr %i.o, align 8, !tbaa !75
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit171

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %i.ed = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %i.k, ptr %10, align 8, !tbaa !43
  %i.ee = icmp eq ptr %.pre, null
  %or.cond.i.i.i = and i1 %18, %i.ee
  br i1 %or.cond.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %.sroa.speculated.i, ptr %i.c, align 8, !tbaa !19
  %i.ef = icmp ugt i64 %.sroa.speculated.i, 15    ; 3 uses
  br i1 %i.ef, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.au
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc117 unwind label %.loopexit ; 2 uses

.noexc117:                                        ; preds = %.noexc.i.i.i
  store ptr %i.eg, ptr %10, align 8, !tbaa !44
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.eh, ptr %i.k, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc117, %bb.au
  %i.ei = phi ptr [ %i.eg, %.noexc117 ], [ %i.k, %bb.au ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ej = load i8, ptr %.pre, align 1, !tbaa !46
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !46
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %.pre, i64 %.sroa.speculated.i, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i.i.i
  %i.ek = load i64, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  store i64 %i.ek, ptr %i.l, align 8, !tbaa !45
  %i.el = load ptr, ptr %10, align 8, !tbaa !44
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eo = call i32 @_ZNK8WasmEdge4Host4WASI5INode15pathFilestatGetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER17__wasi_filestat_t(ptr noundef nonnull align 8 dereferenceable(200) %i.en, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(64) %9) #19 ; 2 uses
  %i.ep = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.k
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  %i.er = load i64, ptr %i.k, align 8, !tbaa !46
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.et = trunc i32 %i.eo to i1
  br i1 %i.et, label %.critedge104, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.bo, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  store i64 %.sroa.speculated.i, ptr %2, align 8, !tbaa !19
  store ptr %.pre, ptr %i.e, align 8, !tbaa !69
  br i1 %.not88, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.ev = load ptr, ptr %8, align 8, !tbaa !79
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = lshr exact i64 %i.ey, 4
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %7, align 4, !tbaa !11
  br label %bb.bb

.loopexit:                                        ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store i8 1, ptr %0, align 8, !tbaa !72
  store ptr %.sroa.0229.0, ptr %i.m, align 8, !tbaa !74
  store ptr %.sroa.20.0, ptr %i.n, align 8, !tbaa !80
  store ptr %.sroa.27.0, ptr %i.o, align 8, !tbaa !75
  br label %bb.ep

bb.bc:                                            ; preds = %bb.ay
  %.sroa.6197.0.extract.shift.le = lshr i32 %i.eo, 16
  %.sroa.6197.0.extract.trunc.le = trunc nuw i32 %.sroa.6197.0.extract.shift.le to i16
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 %.sroa.6197.0.extract.trunc.le, ptr %i.m, align 8, !tbaa !59
  br label %bb.ep

.critedge104:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fb = load i8, ptr %i.p, align 8, !tbaa !125  ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 7
  br i1 %i.fc, label %bb.bd, label %bb.cl

bb.bd:                                            ; preds = %.critedge104
  %i.fd = add i8 %.0, 1                           ; 2 uses
  %i.fe = icmp ugt i8 %i.fd, 7
  br i1 %i.fe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i8 0, ptr %0, align 8, !tbaa !72
  store i16 32, ptr %i.m, align 8, !tbaa !59
  br label %bb.ep

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ff = invoke noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #21
          to label %bb.bg unwind label %bb.bk     ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ff, ptr %11, align 8, !tbaa !74
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16384 ; 2 uses
  store ptr %i.fg, ptr %i.ai, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.ff, i8 0, i64 16384, i1 false)
  store ptr %i.fg, ptr %i.aj, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.fh = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %i.ak, ptr %12, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %.sroa.speculated.i, ptr %i.b, align 8, !tbaa !19
  br i1 %i.ef, label %.noexc.i.i.i125, label %._crit_edge.i.i.i.i124

.noexc.i.i.i125:                                  ; preds = %bb.bg
  %i.fi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc127 unwind label %bb.bl ; 2 uses

.noexc127:                                        ; preds = %.noexc.i.i.i125
  store ptr %i.fi, ptr %12, align 8, !tbaa !44
  %i.fj = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.fj, ptr %i.ak, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i124

._crit_edge.i.i.i.i124:                           ; preds = %.noexc127, %bb.bg
  %i.fk = phi ptr [ %i.fi, %.noexc127 ], [ %i.ak, %bb.bg ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i124
  %i.fl = load i8, ptr %.pre, align 1, !tbaa !46
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !46
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i124
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %.pre, i64 %.sroa.speculated.i, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i.i.i124
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  store i64 %i.fm, ptr %i.al, align 8, !tbaa !45
  %i.fn = load ptr, ptr %12, align 8, !tbaa !44
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  store i8 0, ptr %i.fo, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fq = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.fr = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = call i32 @_ZNK8WasmEdge4Host4WASI5INode12pathReadlinkENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5cxx204spanIcLm18446744073709551615EEERj(ptr noundef nonnull align 8 dereferenceable(200) %i.fp, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %12, ptr %i.fq, i64 %i.fu, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #19 ; 2 uses
  %i.fw = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ak
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bj
  %i.fy = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  %i.ga = trunc i32 %i.fv to i1
  br i1 %i.ga, label %.critedge106, label %bb.cf

bb.bk:                                            ; preds = %bb.bf
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit142

bb.bl:                                            ; preds = %.noexc.i.i.i125
end_hunk_0
