Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DDGPrinter?download=true
begin_hunk_0_@_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE18getSimpleNodeLabelB5cxx11EPKNS_7DDGNodeES3_:bb.a
  %i.by = load i64, ptr %i.a, align 8, !tbaa !111 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !40
  %i.ca = load ptr, ptr %0, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cc = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.b
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE19getVerboseNodeLabelB5cxx11EPKNS_7DDGNodeES3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::raw_string_ostream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !40
  store i8 0, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !89
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 18 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 6
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.13, i64 noundef 6) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store ptr %i.s, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ %4, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !91
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamENS_7DDGNode8NodeKindE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i32 noundef %i.u) #18 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull @.str.14, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 2622, ptr %i.z, align 1
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

_ZN4llvm11raw_ostreamlsEPKc.exit23:               ; preds = %bb.d, %bb.e
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !91  ; 3 uses
  %i.ai = add i32 %i.ah, -1
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i32 %i.ai, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit23
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !105 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx54 = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx54
  %.not2050 = icmp eq i32 %i.am, 0
  br i1 %.not2050, label %_ZN4llvm11raw_ostreamlsEPKc.exit32, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.f, %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %.051 = phi ptr [ %i.aw, %_ZN4llvm11raw_ostreamlsEPKc.exit26 ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %.051, align 8, !tbaa !106
  call void @_ZNK4llvm5Value5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext false) #18
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph53
  %i.at = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.9, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.h:                                             ; preds = %.lr.ph53
  store i8 10, ptr %i.ar, align 1
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %bb.g, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.aw, %i.ao
  br i1 %.not20, label %_ZN4llvm11raw_ostreamlsEPKc.exit32, label %.lr.ph53

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit23
  %i.ax = icmp eq i32 %i.ah, 3
  br i1 %i.ax, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, 35
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.15, i64 noundef 35) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.az, ptr noundef nonnull align 1 dereferenceable(35) @.str.15, i64 35, i1 false)
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 35
  store ptr %i.bg, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZN4llvm11raw_ostreamlsEPKc.exit29:               ; preds = %bb.k, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !105 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %.idx = shl nuw nsw i64 %i.bl, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  %.not47 = icmp eq i32 %i.bk, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit35, %_ZN4llvm11raw_ostreamlsEPKc.exit29
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, 33
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.bv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.16, i64 noundef 33) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.bq, ptr noundef nonnull align 1 dereferenceable(33) @.str.16, i64 33, i1 false)
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 33
  store ptr %i.bx, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

bb.o:                                             ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit35
  %.01749 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %_ZN4llvm11raw_ostreamlsEPKc.exit35 ]
  %.01848 = phi ptr [ %i.bi, %.lr.ph ], [ %i.co, %_ZN4llvm11raw_ostreamlsEPKc.exit35 ] ; 2 uses
  %i.by = load ptr, ptr %.01848, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE19getVerboseNodeLabelB5cxx11EPKNS_7DDGNodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.by, ptr noundef %2)
  %i.bz = load ptr, ptr %5, align 8, !tbaa !23
  %i.ca = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.bz, i64 noundef %i.ca) #18 ; 0 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bo
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ce = load i64, ptr %i.bo, align 8, !tbaa !28
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cg = add nuw i32 %.01749, 1                  ; 2 uses
  %i.ch = load i32, ptr %i.bj, align 8, !tbaa !105
  %.not19 = icmp eq i32 %i.ch, %i.cg
  br i1 %.not19, label %_ZN4llvm11raw_ostreamlsEPKc.exit35, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.9, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

bb.r:                                             ; preds = %bb.p
  store i8 10, ptr %i.cj, align 1
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cn, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

_ZN4llvm11raw_ostreamlsEPKc.exit35:               ; preds = %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.01848, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.bm
  br i1 %.not, label %._crit_edge, label %bb.o

bb.s:                                             ; preds = %bb.i
  %i.cp = icmp eq i32 %i.ah, 4
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.cr = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp ult i64 %i.cu, 5
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.12, i64 noundef 5) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cr, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false)
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 5
  store ptr %i.cy, ptr %i.k, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

_ZN4llvm11raw_ostreamlsEPKc.exit32:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26, %bb.f, %bb.u, %bb.t, %bb.n, %bb.m
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !108, !nonnull !19, !align !110 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !41
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !23 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !111
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %bb.v, label %._crit_edge.i.i

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.df, ptr %0, align 8, !tbaa !23
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !111
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.v, %_ZN4llvm11raw_ostreamlsEPKc.exit32
  %i.dh = phi ptr [ %i.df, %bb.v ], [ %i.da, %_ZN4llvm11raw_ostreamlsEPKc.exit32 ] ; 2 uses
  switch i64 %i.dd, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.di = load i8, ptr %i.db, align 1, !tbaa !28
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.w, %bb.x
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !111 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !40
  %i.dl = load ptr, ptr %0, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.dn = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.b
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !28
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1, ptr noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !114    ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !85, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE23getSimpleEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr poison, ptr noundef %i.a, ptr poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE24getVerboseEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %2, ptr noundef %i.a, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE23getSimpleEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !40
  store i8 0, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %4, ptr %i.h, align 8, !tbaa !89
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !116  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 8
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.17, i64 noundef 8) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i64 6566878742426313068, ptr %i.n, align 1
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.m, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %5, %bb.c ]
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamENS_7DDGEdge8EdgeKindE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i32 noundef %i.j) #18 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull @.str.18, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 8797, ptr %i.z, align 1
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

_ZN4llvm11raw_ostreamlsEPKc.exit4:                ; preds = %bb.d, %bb.e
  switch i32 %i.j, label %_ZL22writeEdgeKindColorAttrRN4llvm11raw_ostreamENS_7DDGEdge8EdgeKindE.exit [
    i32 2, label %bb.f
    i32 1, label %bb.i
  ]

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit4
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !63  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 11
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.69, i64 noundef 11) #18 ; 0 uses
  br label %_ZL22writeEdgeKindColorAttrRN4llvm11raw_ostreamENS_7DDGEdge8EdgeKindE.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ai, ptr noundef nonnull align 1 dereferenceable(11) @.str.69, i64 11, i1 false)
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 11
end_hunk_0
