Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CFG?download=true
inline.NumInlined: 8087
inline.NumDeleted: 4155
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL10print_elemRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperERKN5clang10CFGElementEb:bb.a
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %7 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"struct.clang::PrintingPolicy", align 8 ; 31 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %14 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %18 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8 ; 3 uses
  %i.c = trunc i64 %.0.copyload.i.i.i.i to i32
  %i.d = shl i32 %i.c, 2
  %i.e = and i32 %i.d, 12
  %.0.copyload.i.i.i3.i = load i64, ptr %2, align 8 ; 10 uses
  %i.f = trunc i64 %.0.copyload.i.i.i3.i to i32
  %i.g = and i32 %i.f, 3
  %i.h = or disjoint i32 %i.e, %i.g
  switch i32 %i.h, label %default.unreachable655 [
    i32 7, label %bb.b
    i32 9, label %bb.b
    i32 8, label %bb.b
    i32 0, label %bb.an
    i32 10, label %bb.ao
    i32 15, label %bb.aw
    i32 6, label %bb.be
    i32 3, label %bb.bh
    i32 2, label %bb.ca
    i32 4, label %bb.cg
    i32 5, label %bb.cn
    i32 1, label %bb.cu
    i32 11, label %bb.db
    i32 12, label %bb.dn
    i32 13, label %bb.dy
    i32 14, label %bb.ep
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.i = and i64 %.0.copyload.i.i.i3.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 11 uses
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = and i16 %i.k, 511
  %.not602 = icmp eq i16 %i.l, 10
  br i1 %.not602, label %bb.c, label %.critedge166

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !303
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74, !noalias !653
  %.not603 = icmp eq i32 %i.p, 0
  br i1 %.not603, label %.critedge166, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !307
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !308  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 9
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.8, i64 noundef 9) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.t, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !308
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !303 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !74, !noalias !654
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ai = load ptr, ptr %1, align 8, !tbaa !279
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 0 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !307
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !308 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.9, i64 noundef 3) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit177

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !308
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  store ptr %i.au, ptr %i.s, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit177

_ZN4llvm11raw_ostreamlsEPKc.exit177:              ; preds = %bb.g, %bb.h
  br i1 %3, label %bb.i, label %.critedge168

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit177
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !308 ; 3 uses
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !307
  %.not.i = icmp ult ptr %i.av, %i.aw
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 10) #24 ; 0 uses
  br label %.critedge168

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.ay, ptr %i.s, align 8, !tbaa !308
  store i8 10, ptr %i.av, align 1, !tbaa !74
  br label %.critedge168

.critedge166:                                     ; preds = %bb.c, %bb.b
  %i.az = and i16 %i.k, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.az, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.critedge166
  %i.ba = load i32, ptr %i.j, align 8
  %i.bb = and i32 %i.ba, 33030144
  %i.bc = icmp eq i32 %i.bb, 16777216
  br i1 %i.bc, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !307
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !308 ; 2 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult i64 %i.bj, 6
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.10, i64 noundef 6) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit181

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !308
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit181

_ZN4llvm11raw_ostreamlsEPKc.exit181:              ; preds = %bb.n, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = load ptr, ptr %1, align 8, !tbaa !279
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 0 uses
  br i1 %3, label %bb.p, label %.critedge168

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit181
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !308 ; 3 uses
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !307
  %.not.i182 = icmp ult ptr %i.bu, %i.bv
  br i1 %.not.i182, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 10) #24 ; 0 uses
  br label %.critedge168

bb.r:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bx, ptr %i.bf, align 8, !tbaa !308
  store i8 10, ptr %i.bu, align 1, !tbaa !74
  br label %.critedge168

bb.s:                                             ; preds = %bb.l, %.critedge166
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val173 = load ptr, ptr %i.by, align 8, !tbaa !311 ; 2 uses
  %i.bz = load i64, ptr %.val173, align 8         ; 11 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 512
  %i.cc = lshr i64 %i.bz, 5
  %i.cd = and i64 %i.cc, 8388608
  %20 = or disjoint i64 %i.cb, %i.cd
  %i.ce = or disjoint i64 %20, 4472834
  %i.cf = and i64 %i.bz, 8192
  %.not.i185 = icmp eq i64 %i.cf, 0
  %i.cg = shl i64 %i.bz, 21
  %i.ch = and i64 %i.cg, 16777216
  %i.ci = select i1 %.not.i185, i64 %i.ch, i64 16777216
  %i.cj = shl i64 %i.bz, 13
  %i.ck = and i64 %i.cj, 33554432
  %i.cl = or disjoint i64 %i.ci, %i.ck
  %i.cm = shl i64 %i.bz, 26
  %i.cn = and i64 %i.cm, 67108864
  %i.co = or disjoint i64 %i.cl, %i.cn
  %i.cp = shl i64 %i.bz, 14
  %i.cq = and i64 %i.cp, 134217728
  %i.cr = or disjoint i64 %i.co, %i.cq
  %i.cs = shl i64 %i.bz, 27
  %i.ct = and i64 %i.cs, 268435456
  %i.cu = or disjoint i64 %i.cr, %i.ct
  %i.cv = shl i64 %i.bz, 17
  %i.cw = and i64 %i.cv, 1610612736
  %i.cx = shl i64 %i.bz, 4                        ; 2 uses
  %i.cy = and i64 %i.cx, 8589934592
  %i.cz = and i64 %i.bz, 128
  %.not17.i = icmp eq i64 %i.cz, 0
  %i.da = and i64 %i.cx, 17179869184
  %i.db = xor i64 %i.da, 112201725640704
  %i.dc = select i1 %.not17.i, i64 112184545771520, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.val173, i64 80
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = shl i64 %i.de, 7
  %i.dg = and i64 %i.df, 140737488355328
  %.masked674.masked.masked = or i64 %i.cu, %i.cw
  %.masked688.masked = or i64 %.masked674.masked.masked, %i.cy
  %.masked690 = or i64 %.masked688.masked, %i.ce
  %i.dh = or i64 %.masked690, %i.dc
  %i.di = or i64 %i.dh, %i.dg
  %i.dj = xor i64 %i.di, 1610612736
  store i64 %i.dj, ptr %4, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.dk, align 8, !tbaa !314
  store ptr @.str.11, ptr %5, align 8, !tbaa !316
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.dl, align 8, !tbaa !317
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !655 ; 2 uses
  %i.dm = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.dn = shl i32 %i.dm, 2
  %i.do = and i32 %i.dn, 12
  %.0.copyload.i.i.i3.i.i.i = load i64, ptr %2, align 8, !noalias !655
  %i.dp = trunc i64 %.0.copyload.i.i.i3.i.i.i to i32
  %i.dq = and i32 %i.dp, 3
  %i.dr = or disjoint i32 %i.do, %i.dq
  %i.ds = icmp eq i32 %i.dr, 9
  %i.dt = load i16, ptr %i.j, align 8
  %i.du = and i16 %i.dt, 511                      ; 4 uses
  br i1 %i.ds, label %bb.t, label %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = icmp eq i16 %i.du, 93
  br i1 %i.dv, label %bb.u, label %_ZN4llvm11raw_ostreamlsEPKc.exit188

bb.u:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !307
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !308 ; 2 uses
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, 15
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ee = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.12, i64 noundef 15) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.dz, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, i64 15, i1 false)
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !308
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 15
  store ptr %i.eg, ptr %i.dy, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

_ZN4llvm11raw_ostreamlsEPKc.exit188:              ; preds = %bb.w, %bb.v, %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !307
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !308 ; 2 uses
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp ult i64 %i.en, 20
  br i1 %i.eo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit188
  %i.ep = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.13, i64 noundef 20) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ek, ptr noundef nonnull align 1 dereferenceable(20) @.str.13, i64 20, i1 false)
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !308
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store ptr %i.er, ptr %i.ej, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191

_ZN4llvm11raw_ostreamlsEPKc.exit191:              ; preds = %bb.x, %bb.y
  %i.es = and i64 %.0.copyload.i.i.i.i.i.i, -4
  %i.et = inttoptr i64 %i.es to ptr
  call fastcc void @_ZL26print_construction_contextRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperEPKN5clang19ConstructionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.et)
  %i.eu = load ptr, ptr %i.eh, align 8, !tbaa !307
  %i.ev = load ptr, ptr %i.ej, align 8, !tbaa !308 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit191
  %i.ex = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit191
  store i8 41, ptr %i.ev, align 1
  %i.ey = load ptr, ptr %i.ej, align 8, !tbaa !308
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.ez, ptr %i.ej, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit: ; preds = %bb.s
  switch i16 %i.du, label %bb.af [
    i16 93, label %bb.ab
    i16 120, label %bb.ae
  ]

bb.ab:                                            ; preds = %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !307
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !308 ; 2 uses
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp ult i64 %i.fg, 15
  br i1 %i.fh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.12, i64 noundef 15) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.fd, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, i64 15, i1 false)
  %i.fj = load ptr, ptr %i.fc, align 8, !tbaa !308
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 15
  store ptr %i.fk, ptr %i.fc, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.ae:                                            ; preds = %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit
  %i.fl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.15) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.af:                                            ; preds = %_ZNK5clang10CFGElement5getAsINS_21CFGCXXRecordTypedCallEEESt8optionalIT_Ev.exit
  %i.fm = add nsw i16 %i.du, -119
  %spec.select.i.i.i.i.i.i.i.i199 = icmp ult i16 %i.fm, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i199, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.16) ; 0 uses
  %.0.copyload.i.i.i.i.i.i201 = load i64, ptr %i.b, align 8, !noalias !656 ; 2 uses
  %i.fo = trunc i64 %.0.copyload.i.i.i.i.i.i201 to i32
  %i.fp = shl i32 %i.fo, 2
  %i.fq = and i32 %i.fp, 12
  %.0.copyload.i.i.i3.i.i.i202 = load i64, ptr %2, align 8, !noalias !656
  %i.fr = trunc i64 %.0.copyload.i.i.i3.i.i.i202 to i32
  %i.fs = and i32 %i.fr, 3
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = icmp eq i32 %i.ft, 8
  br i1 %i.fu, label %bb.ah, label %_ZNK5clang10CFGElement5getAsINS_14CFGConstructorEEESt8optionalIT_Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fv = and i64 %.0.copyload.i.i.i.i.i.i201, -4
  %i.fw = inttoptr i64 %i.fv to ptr
  call fastcc void @_ZL26print_construction_contextRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperEPKN5clang19ConstructionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.fw)
  br label %_ZNK5clang10CFGElement5getAsINS_14CFGConstructorEEESt8optionalIT_Ev.exit

_ZNK5clang10CFGElement5getAsINS_14CFGConstructorEEESt8optionalIT_Ev.exit: ; preds = %bb.ag, %bb.ah
  %i.fx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.17)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i205 = load i64, ptr %i.fy, align 8, !tbaa !74
  %i.fz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clanglsERN4llvm11raw_ostreamENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, i64 %.sroa.0.0.copyload.i205) #24
  %i.ga = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, ptr noundef nonnull @.str.14) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.ai:                                            ; preds = %bb.af
  %i.gb = add nsw i16 %i.du, -91
  %spec.select.i.i.i.i.i.i.i.i206 = icmp ult i16 %i.gb, -10
  br i1 %spec.select.i.i.i.i.i.i.i.i206, label %_ZN4llvm11raw_ostreamlsEPKc.exit195, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.18)
  %i.gd = call noundef ptr @_ZNK5clang4Stmt16getStmtClassNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #24
  %i.ge = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.gc, ptr noundef %i.gd)
  %i.gf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noundef nonnull @.str.17)
  %i.gg = load i32, ptr %i.j, align 8
  %i.gh = lshr i32 %i.gg, 19
  %i.gi = and i32 %i.gh, 127
  %i.gj = call noundef ptr @_ZN5clang8CastExpr15getCastKindNameENS_8CastKindE(i32 noundef %i.gi) #24
  %i.gk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.gf, ptr noundef %i.gj)
  %i.gl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.gk, ptr noundef nonnull @.str.17)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i208 = load i64, ptr %i.gm, align 8, !tbaa !74
  %i.gn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clanglsERN4llvm11raw_ostreamENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.gl, i64 %.sroa.0.0.copyload.i208) #24
  %i.go = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.gn, ptr noundef nonnull @.str.14) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

_ZN4llvm11raw_ostreamlsEPKc.exit195:              ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %_ZNK5clang10CFGElement5getAsINS_14CFGConstructorEEESt8optionalIT_Ev.exit, %bb.aj, %bb.ai, %bb.ae
  %i.gp = load i16, ptr %i.j, align 8
  %i.gq = and i16 %i.gp, 511
  %i.gr = add nsw i16 %i.gq, -3
  %spec.select.i.i.i.i.i.i.i.i209 = icmp ult i16 %i.gr, 131
  %or.cond = and i1 %3, %spec.select.i.i.i.i.i.i.i.i209
  br i1 %or.cond, label %bb.ak, label %.critedge168

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit195
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !308 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !307
  %.not.i210 = icmp ult ptr %i.gt, %i.gv
  br i1 %.not.i210, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 10) #24 ; 0 uses
  br label %.critedge168

bb.am:                                            ; preds = %bb.ak
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  store ptr %i.gx, ptr %i.gs, align 8, !tbaa !308
  store i8 10, ptr %i.gt, align 1, !tbaa !74
  br label %.critedge168

bb.an:                                            ; preds = %bb.a
  %i.gy = and i64 %.0.copyload.i.i.i3.i, -4
  %i.gz = inttoptr i64 %i.gy to ptr
  tail call fastcc void @_ZL17print_initializerRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperEPKN5clang18CXXCtorInitializerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.gz)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.ao:                                            ; preds = %bb.a
  %i.ha = and i64 %.0.copyload.i.i.i3.i, -4
  %i.hb = inttoptr i64 %i.ha to ptr               ; 3 uses
  tail call fastcc void @_ZN12_GLOBAL__N_117StmtPrinterHelper10handleDeclEPKN5clang4DeclERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %.sroa.0.0.copyload.i225 = load i64, ptr %i.hc, align 8, !tbaa !74 ; 2 uses
  %i.hd = and i64 %.sroa.0.0.copyload.i225, -16
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !189
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.hg, align 8, !tbaa !74
  %i.hh = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load ptr, ptr %i.hi, align 16, !tbaa !189
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load i8, ptr %i.hk, align 16
  %i.hm = and i8 %i.hl, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hm, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hn = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.hb) #24
  %i.ho = tail call fastcc i64 @_ZL29getReferenceInitTemporaryTypePKN5clang4ExprEPb(ptr noundef %i.hn, ptr noundef null)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0517.0 = phi i64 [ %i.ho, %bb.ap ], [ %.sroa.0.0.copyload.i225, %bb.ao ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !307
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !308 ; 2 uses
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = icmp ult i64 %i.hv, 2
  br i1 %i.hw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.19, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit228

bb.as:                                            ; preds = %bb.aq
  store i16 32302, ptr %i.hs, align 1
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !308
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store ptr %i.hz, ptr %i.hr, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit228

_ZN4llvm11raw_ostreamlsEPKc.exit228:              ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ia = and i64 %.sroa.0517.0, -16
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = load ptr, ptr %i.ib, align 16, !tbaa !189 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.id, align 8, !tbaa !74
  %i.ie = and i64 %.sroa.0.0.copyload.i.i, 15
  %.not.i230 = icmp eq i64 %i.ie, 0
  br i1 %.not.i230, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit228
  %i.if = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0517.0) #24
  %i.ig = extractvalue { ptr, i64 } %i.if, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit228, %bb.at
  %.sroa.03.0.in.in.i = phi ptr [ %i.ig, %bb.at ], [ %i.ic, %_ZN4llvm11raw_ostreamlsEPKc.exit228 ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %.sroa.03.0.i = and i64 %.sroa.03.0.in.i, -8
  store i64 %.sroa.03.0.i, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val172 = load ptr, ptr %i.ih, align 8, !tbaa !311 ; 2 uses
  %i.ii = load i64, ptr %.val172, align 8         ; 11 uses
  %i.ij = lshr i64 %i.ii, 3
  %i.ik = and i64 %i.ij, 512
  %i.il = lshr i64 %i.ii, 5
  %i.im = and i64 %i.il, 8388608
  %21 = or disjoint i64 %i.ik, %i.im
  %i.in = or disjoint i64 %21, 4472834
  %i.io = and i64 %i.ii, 8192
  %.not.i231 = icmp eq i64 %i.io, 0
  %i.ip = shl i64 %i.ii, 21
  %i.iq = and i64 %i.ip, 16777216
  %i.ir = select i1 %.not.i231, i64 %i.iq, i64 16777216
  %i.is = shl i64 %i.ii, 13
  %i.it = and i64 %i.is, 33554432
  %i.iu = or disjoint i64 %i.ir, %i.it
  %i.iv = shl i64 %i.ii, 26
  %i.iw = and i64 %i.iv, 67108864
  %i.ix = or disjoint i64 %i.iu, %i.iw
  %i.iy = shl i64 %i.ii, 14
  %i.iz = and i64 %i.iy, 134217728
  %i.ja = or disjoint i64 %i.ix, %i.iz
  %i.jb = shl i64 %i.ii, 27
  %i.jc = and i64 %i.jb, 268435456
  %i.jd = or disjoint i64 %i.ja, %i.jc
  %i.je = shl i64 %i.ii, 17
  %i.jf = and i64 %i.je, 1610612736
  %i.jg = shl i64 %i.ii, 4                        ; 2 uses
  %i.jh = and i64 %i.jg, 8589934592
  %i.ji = and i64 %i.ii, 128
  %.not17.i232 = icmp eq i64 %i.ji, 0
  %i.jj = and i64 %i.jg, 17179869184
  %i.jk = xor i64 %i.jj, 112201725640704
  %i.jl = select i1 %.not17.i232, i64 112184545771520, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.val172, i64 80
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = shl i64 %i.jn, 7
  %i.jp = and i64 %i.jo, 140737488355328
  %.masked668.masked.masked = or i64 %i.jd, %i.jf
  %.masked684.masked = or i64 %.masked668.masked.masked, %i.jh
  %.masked686 = or i64 %.masked684.masked, %i.in
  %i.jq = or i64 %.masked686, %i.jl
  %i.jr = or i64 %i.jq, %i.jp
  %i.js = xor i64 %i.jr, 1610612736
  store i64 %i.js, ptr %7, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.jt, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.ju, align 8, !tbaa !320
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.jv, align 1, !tbaa !321
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(34) %8, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.jw = load ptr, ptr %i.hp, align 8, !tbaa !307
  %i.jx = load ptr, ptr %i.hr, align 8, !tbaa !308 ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = icmp ult i64 %i.ka, 24
  br i1 %i.kb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  %i.kc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.20, i64 noundef 24) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.av:                                            ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jx, ptr noundef nonnull align 1 dereferenceable(24) @.str.20, i64 24, i1 false)
  %i.kd = load ptr, ptr %i.hr, align 8, !tbaa !308
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.ke, ptr %i.hr, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.aw:                                            ; preds = %bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !307
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !308 ; 2 uses
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = icmp ult i64 %i.kl, 17
  br i1 %i.km, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.21, i64 noundef 17) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit238

bb.ay:                                            ; preds = %bb.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ki, ptr noundef nonnull align 1 dereferenceable(17) @.str.21, i64 17, i1 false)
  %i.ko = load ptr, ptr %i.kh, align 8, !tbaa !308
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 17
  store ptr %i.kp, ptr %i.kh, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit238

_ZN4llvm11raw_ostreamlsEPKc.exit238:              ; preds = %bb.ax, %bb.ay
  %.0.i.i237 = phi ptr [ %i.kn, %bb.ax ], [ %0, %bb.ay ] ; 6 uses
  %.sroa.0.0.copyload.i239 = load i64, ptr %2, align 8, !tbaa !74
  %i.kq = and i64 %.sroa.0.0.copyload.i239, -4
  %i.kr = inttoptr i64 %i.kq to ptr
  %i.ks = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.kr) #24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !130 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !323 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 36
  %i.kw = load i16, ptr %i.kv, align 4
  %i.kx = icmp eq i16 %i.kw, 184
  br i1 %i.kx, label %_ZNK5clang18CFGCleanupFunction15getFunctionDeclEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit238, %.lr.ph.i.i.i.i.i
  %i.ky = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i ], [ %i.kt, %_ZN4llvm11raw_ostreamlsEPKc.exit238 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !323 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 36
  %i.lc = load i16, ptr %i.lb, align 4
  %i.ld = icmp eq i16 %i.lc, 184
  br i1 %i.ld, label %_ZNK5clang18CFGCleanupFunction15getFunctionDeclEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !647

_ZNK5clang18CFGCleanupFunction15getFunctionDeclEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit238
  %i.le = phi ptr [ %i.ku, %_ZN4llvm11raw_ostreamlsEPKc.exit238 ], [ %i.la, %.lr.ph.i.i.i.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !659
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !328 ; 2 uses
  %i.lj = and i64 %i.li, 7
  %i.lk = icmp ne i64 %i.lj, 0
  %i.ll = and i64 %i.li, -8                       ; 2 uses
  %.not2.i = icmp eq i64 %i.ll, 0
  %.not.i245 = or i1 %i.lk, %.not2.i
  br i1 %.not.i245, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %_ZNK5clang18CFGCleanupFunction15getFunctionDeclEv.exit
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !331 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 2 uses
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !333
  %i.lr = and i64 %i.lq, 4294967295               ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i.i237, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !307
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i.i237, i64 32 ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !308 ; 2 uses
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = icmp ugt i64 %i.lr, %i.ly
  br i1 %i.lz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %i.ma = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i237, ptr noundef nonnull %i.lp, i64 noundef %i.lr) #24
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.ba:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %.not.i248 = icmp eq i64 %i.lr, 0
  br i1 %.not.i248, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lv, ptr nonnull align 8 %i.lp, i64 %i.lr, i1 false)
  %i.mb = load ptr, ptr %i.lu, align 8, !tbaa !308
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lr
  store ptr %i.mc, ptr %i.lu, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZNK5clang18CFGCleanupFunction15getFunctionDeclEv.exit, %bb.az, %bb.ba, %bb.bb
  %.0.i249 = phi ptr [ %i.ma, %bb.az ], [ %.0.i.i237, %bb.bb ], [ %.0.i.i237, %bb.ba ], [ %.0.i.i237, %_ZNK5clang18CFGCleanupFunction15getFunctionDeclEv.exit ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i249, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !307
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.i249, i64 32 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !308 ; 2 uses
  %i.mh = icmp eq ptr %i.me, %i.mg
  br i1 %i.mh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.mi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i249, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.bd:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  store i8 41, ptr %i.mg, align 1
  %i.mj = load ptr, ptr %i.mf, align 8, !tbaa !308
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mk, ptr %i.mf, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.be:                                            ; preds = %bb.a
  %i.ml = and i64 %.0.copyload.i.i.i.i, -4
  %i.mm = inttoptr i64 %i.ml to ptr
  tail call fastcc void @_ZN12_GLOBAL__N_117StmtPrinterHelper10handleDeclEPKN5clang4DeclERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.mm, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !307
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !308 ; 2 uses
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = icmp ult i64 %i.mt, 16
  br i1 %i.mu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.22, i64 noundef 16) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.bg:                                            ; preds = %bb.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mq, ptr noundef nonnull align 1 dereferenceable(16) @.str.22, i64 16, i1 false)
  %i.mw = load ptr, ptr %i.mp, align 8, !tbaa !308
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store ptr %i.mx, ptr %i.mp, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.bh:                                            ; preds = %bb.a
  %i.my = and i64 %.0.copyload.i.i.i3.i, -4       ; 2 uses
  %.not.i268 = icmp eq i64 %i.my, 0
  br i1 %.not.i268, label %_ZNK5clang18CFGFullExprCleanup15getExpiringMTEsEv.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mz = inttoptr i64 %i.my to ptr               ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !336 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !337
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = ashr exact i64 %i.nf, 3
  br label %_ZNK5clang18CFGFullExprCleanup15getExpiringMTEsEv.exit

_ZNK5clang18CFGFullExprCleanup15getExpiringMTEsEv.exit: ; preds = %bb.bh, %bb.bi
  %.sroa.0.0.i269 = phi ptr [ %i.na, %bb.bi ], [ null, %bb.bh ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ %i.ng, %bb.bi ], [ 0, %bb.bh ] ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !307
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !308 ; 2 uses
  %i.nl = ptrtoint ptr %i.ni to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = icmp ult i64 %i.nn, 27
  br i1 %i.no, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNK5clang18CFGFullExprCleanup15getExpiringMTEsEv.exit
  %i.np = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.23, i64 noundef 27) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit274

bb.bk:                                            ; preds = %_ZNK5clang18CFGFullExprCleanup15getExpiringMTEsEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.nk, ptr noundef nonnull align 1 dereferenceable(27) @.str.23, i64 27, i1 false)
end_hunk_0
begin_hunk_1_@_ZL10print_elemRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperERKN5clang10CFGElementEb:bb.a
  %.0.i.i297 = phi ptr [ %i.vj, %bb.cb ], [ %0, %bb.cd ], [ %0, %bb.cc ], [ %0, %bb.ca ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.0.i.i297, i64 24
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !307
  %i.vo = getelementptr inbounds nuw i8, ptr %.0.i.i297, i64 32 ; 3 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !308 ; 2 uses
  %i.vq = ptrtoint ptr %i.vn to i64
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = sub i64 %i.vq, %i.vr
  %i.vt = icmp ult i64 %i.vs, 11
  br i1 %i.vt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit298
  %i.vu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i297, ptr noundef nonnull @.str.26, i64 noundef 11) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.cf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.vp, ptr noundef nonnull align 1 dereferenceable(11) @.str.26, i64 11, i1 false)
  %i.vv = load ptr, ptr %i.vo, align 8, !tbaa !308
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 11
  store ptr %i.vw, ptr %i.vo, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.cg:                                            ; preds = %bb.a
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !307
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !308 ; 2 uses
  %i.wb = ptrtoint ptr %i.vy to i64
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = sub i64 %i.wb, %i.wc
  %i.we = icmp ult i64 %i.wd, 14
  br i1 %i.we, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.wf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.27, i64 noundef 14) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit306

bb.ci:                                            ; preds = %bb.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.wa, ptr noundef nonnull align 1 dereferenceable(14) @.str.27, i64 14, i1 false)
  %i.wg = load ptr, ptr %i.vz, align 8, !tbaa !308
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 14
  store ptr %i.wh, ptr %i.vz, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit306

_ZN4llvm11raw_ostreamlsEPKc.exit306:              ; preds = %bb.ch, %bb.ci
  %.sroa.3.0.copyload.i309 = load i64, ptr %i.b, align 8, !tbaa !74
  %i.wi = and i64 %.sroa.3.0.copyload.i309, -4    ; 2 uses
  %.not159 = icmp eq i64 %i.wi, 0
  br i1 %.not159, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit306
  %i.wj = inttoptr i64 %i.wi to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.wj) #24
  %i.wk = load ptr, ptr %11, align 8, !tbaa !343
  %i.wl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !344
  %i.wn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.wk, i64 noundef %i.wm) #24 ; 0 uses
  %i.wo = load ptr, ptr %11, align 8, !tbaa !343  ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cj
  %i.wr = load i64, ptr %i.wp, align 8, !tbaa !74
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.ws) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit306
  %i.wt = load ptr, ptr %i.vx, align 8, !tbaa !307
  %i.wu = load ptr, ptr %i.vz, align 8, !tbaa !308 ; 2 uses
  %i.wv = icmp eq ptr %i.wt, %i.wu
  br i1 %i.wv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ww = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.cm:                                            ; preds = %bb.ck
  store i8 41, ptr %i.wu, align 1
  %i.wx = load ptr, ptr %i.vz, align 8, !tbaa !308
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 1
  store ptr %i.wy, ptr %i.vz, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.cn:                                            ; preds = %bb.a
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !307
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !308 ; 2 uses
  %i.xd = ptrtoint ptr %i.xa to i64
  %i.xe = ptrtoint ptr %i.xc to i64
  %i.xf = sub i64 %i.xd, %i.xe
  %i.xg = icmp ult i64 %i.xf, 12
  br i1 %i.xg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.xh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.28, i64 noundef 12) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit320

bb.cp:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.xc, ptr noundef nonnull align 1 dereferenceable(12) @.str.28, i64 12, i1 false)
  %i.xi = load ptr, ptr %i.xb, align 8, !tbaa !308
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 12
  store ptr %i.xj, ptr %i.xb, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit320

_ZN4llvm11raw_ostreamlsEPKc.exit320:              ; preds = %bb.co, %bb.cp
  %.sroa.3.0.copyload.i323 = load i64, ptr %i.b, align 8, !tbaa !74
  %i.xk = and i64 %.sroa.3.0.copyload.i323, -4    ; 2 uses
  %.not158 = icmp eq i64 %i.xk, 0
  br i1 %.not158, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit320
  %i.xl = inttoptr i64 %i.xk to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %i.xl) #24
  %i.xm = load ptr, ptr %12, align 8, !tbaa !343
  %i.xn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !344
  %i.xp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.xm, i64 noundef %i.xo) #24 ; 0 uses
  %i.xq = load ptr, ptr %12, align 8, !tbaa !343  ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.xs = icmp eq ptr %i.xq, %i.xr
  br i1 %i.xs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.cq
  %i.xt = load i64, ptr %i.xr, align 8, !tbaa !74
  %i.xu = add i64 %i.xt, 1
  call void @_ZdlPvm(ptr noundef %i.xq, i64 noundef %i.xu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZN4llvm11raw_ostreamlsEPKc.exit320
  %i.xv = load ptr, ptr %i.wz, align 8, !tbaa !307
  %i.xw = load ptr, ptr %i.xb, align 8, !tbaa !308 ; 2 uses
  %i.xx = icmp eq ptr %i.xv, %i.xw
  br i1 %i.xx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.xy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.ct:                                            ; preds = %bb.cr
  store i8 41, ptr %i.xw, align 1
  %i.xz = load ptr, ptr %i.xb, align 8, !tbaa !308
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 1
  store ptr %i.ya, ptr %i.xb, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.cu:                                            ; preds = %bb.a
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !307
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !308 ; 2 uses
  %i.yf = ptrtoint ptr %i.yc to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = icmp ult i64 %i.yh, 16
  br i1 %i.yi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.yj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.29, i64 noundef 16) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit337

bb.cw:                                            ; preds = %bb.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ye, ptr noundef nonnull align 1 dereferenceable(16) @.str.29, i64 16, i1 false)
  %i.yk = load ptr, ptr %i.yd, align 8, !tbaa !308
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  store ptr %i.yl, ptr %i.yd, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit337

_ZN4llvm11raw_ostreamlsEPKc.exit337:              ; preds = %bb.cv, %bb.cw
  %.sroa.0.0.copyload.i338 = load i64, ptr %2, align 8, !tbaa !74
  %i.ym = and i64 %.sroa.0.0.copyload.i338, -4    ; 2 uses
  %.not157 = icmp eq i64 %i.ym, 0
  br i1 %.not157, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit337
  %i.yn = inttoptr i64 %i.ym to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %.sroa.0.0.copyload.i344 = load i64, ptr %i.yo, align 8, !tbaa !74
  store i64 %.sroa.0.0.copyload.i344, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val170 = load ptr, ptr %i.yp, align 8, !tbaa !311 ; 2 uses
  %i.yq = load i64, ptr %.val170, align 8         ; 11 uses
  %i.yr = lshr i64 %i.yq, 3
  %i.ys = and i64 %i.yr, 512
  %i.yt = lshr i64 %i.yq, 5
  %i.yu = and i64 %i.yt, 8388608
  %22 = or disjoint i64 %i.ys, %i.yu
  %i.yv = or disjoint i64 %22, 4472834
  %i.yw = and i64 %i.yq, 8192
  %.not.i345 = icmp eq i64 %i.yw, 0
  %i.yx = shl i64 %i.yq, 21
  %i.yy = and i64 %i.yx, 16777216
  %i.yz = select i1 %.not.i345, i64 %i.yy, i64 16777216
  %i.za = shl i64 %i.yq, 13
  %i.zb = and i64 %i.za, 33554432
  %i.zc = or disjoint i64 %i.yz, %i.zb
  %i.zd = shl i64 %i.yq, 26
  %i.ze = and i64 %i.zd, 67108864
  %i.zf = or disjoint i64 %i.zc, %i.ze
  %i.zg = shl i64 %i.yq, 14
  %i.zh = and i64 %i.zg, 134217728
  %i.zi = or disjoint i64 %i.zf, %i.zh
  %i.zj = shl i64 %i.yq, 27
  %i.zk = and i64 %i.zj, 268435456
  %i.zl = or disjoint i64 %i.zi, %i.zk
  %i.zm = shl i64 %i.yq, 17
  %i.zn = and i64 %i.zm, 1610612736
  %i.zo = shl i64 %i.yq, 4                        ; 2 uses
  %i.zp = and i64 %i.zo, 8589934592
  %i.zq = and i64 %i.yq, 128
  %.not17.i346 = icmp eq i64 %i.zq, 0
  %i.zr = and i64 %i.zo, 17179869184
  %i.zs = xor i64 %i.zr, 112201725640704
  %i.zt = select i1 %.not17.i346, i64 112184545771520, i64 %i.zs
  %i.zu = getelementptr inbounds nuw i8, ptr %.val170, i64 80
  %i.zv = load i64, ptr %i.zu, align 8
  %i.zw = shl i64 %i.zv, 7
  %i.zx = and i64 %i.zw, 140737488355328
  %.masked662.masked.masked = or i64 %i.zl, %i.zn
  %.masked680.masked = or i64 %.masked662.masked.masked, %i.zp
  %.masked682 = or i64 %.masked680.masked, %i.yv
  %i.zy = or i64 %.masked682, %i.zt
  %i.zz = or i64 %i.zy, %i.zx
  %i.aaa = xor i64 %i.zz, 1610612736
  store i64 %i.aaa, ptr %14, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.aab, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.aac = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.aac, align 8, !tbaa !320
  %i.aad = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.aad, align 1, !tbaa !321
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(34) %15, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZN4llvm11raw_ostreamlsEPKc.exit337
  %i.aae = load ptr, ptr %i.yb, align 8, !tbaa !307
  %i.aaf = load ptr, ptr %i.yd, align 8, !tbaa !308 ; 2 uses
  %i.aag = icmp eq ptr %i.aae, %i.aaf
  br i1 %i.aag, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.da:                                            ; preds = %bb.cy
  store i8 41, ptr %i.aaf, align 1
  %i.aai = load ptr, ptr %i.yd, align 8, !tbaa !308
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  store ptr %i.aaj, ptr %i.yd, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.db:                                            ; preds = %bb.a
  %i.aak = and i64 %.0.copyload.i.i.i3.i, -4      ; 2 uses
  %i.aal = inttoptr i64 %i.aak to ptr
  %.not = icmp eq i64 %i.aak, 0
  br i1 %.not, label %.critedge168, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aam = and i64 %.0.copyload.i.i.i.i, -4
  %i.aan = inttoptr i64 %i.aam to ptr
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !661
  %i.aaq = load ptr, ptr %1, align 8, !tbaa !279
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8
  %i.aat = tail call noundef zeroext i1 %i.aas(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.aap, ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 0 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !307
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !308 ; 2 uses
  %i.aay = ptrtoint ptr %i.aav to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = icmp ult i64 %i.aba, 3
  br i1 %i.abb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.abc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.30, i64 noundef 3) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit361

bb.de:                                            ; preds = %bb.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aax, ptr noundef nonnull align 1 dereferenceable(3) @.str.30, i64 3, i1 false)
  %i.abd = load ptr, ptr %i.aaw, align 8, !tbaa !308
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 3
  store ptr %i.abe, ptr %i.aaw, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit361

_ZN4llvm11raw_ostreamlsEPKc.exit361:              ; preds = %bb.dd, %bb.de
  %.0.i.i360 = phi ptr [ %i.abc, %bb.dd ], [ %0, %bb.de ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aal, i64 40
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !328 ; 2 uses
  %i.abh = and i64 %i.abg, 7
  %i.abi = icmp ne i64 %i.abh, 0
  %i.abj = and i64 %i.abg, -8                     ; 2 uses
  %.not2.i362 = icmp eq i64 %i.abj, 0
  %.not.i363 = or i1 %i.abi, %.not2.i362
  br i1 %.not.i363, label %._crit_edge.i.i.i.thread, label %bb.df

._crit_edge.i.i.i.thread:                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.abk = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.abk, ptr %16, align 8, !tbaa !345, !alias.scope !662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !662
  store i64 0, ptr %i.a, align 8, !tbaa !346, !noalias !662
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.df:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit361
  %i.abl = inttoptr i64 %i.abj to ptr
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !331 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16 ; 2 uses
  %i.abp = load i64, ptr %i.abn, align 8, !tbaa !333 ; 2 uses
  %i.abq = and i64 %i.abp, 4294967295             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.abr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.abr, ptr %16, align 8, !tbaa !345, !alias.scope !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !663
  store i64 %i.abq, ptr %i.a, align 8, !tbaa !346, !noalias !663
  %i.abs = icmp samesign ugt i64 %i.abq, 15
  br i1 %i.abs, label %bb.dg, label %._crit_edge.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.abt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.abt, ptr %16, align 8, !tbaa !343, !alias.scope !663
  %i.abu = load i64, ptr %i.a, align 8, !tbaa !346, !noalias !663
  store i64 %i.abu, ptr %i.abr, align 8, !tbaa !74, !alias.scope !663
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.dg, %bb.df
  %i.abv = phi ptr [ %i.abt, %bb.dg ], [ %i.abr, %bb.df ] ; 2 uses
  %trunc = trunc i64 %i.abp to i32
  switch i32 %trunc, label %bb.di [
    i32 1, label %bb.dh
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i.i
  %i.abw = load i8, ptr %i.abo, align 8, !tbaa !74
  store i8 %i.abw, ptr %i.abv, align 1, !tbaa !74
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.di:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abv, ptr nonnull align 8 %i.abo, i64 %i.abq, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.dh, %bb.di, %._crit_edge.i.i.i.thread
  %i.abx = load i64, ptr %i.a, align 8, !tbaa !346, !noalias !663 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.abx, ptr %i.aby, align 8, !tbaa !344, !alias.scope !663
  %i.abz = load ptr, ptr %16, align 8, !tbaa !343, !alias.scope !663
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.abx
  store i8 0, ptr %i.aca, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !663
  %i.acb = load ptr, ptr %16, align 8, !tbaa !343
  %i.acc = load i64, ptr %i.aby, align 8, !tbaa !344
  %i.acd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i360, ptr noundef %i.acb, i64 noundef %i.acc) #24 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 24
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !307
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 32 ; 3 uses
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !308 ; 2 uses
  %i.aci = ptrtoint ptr %i.acf to i64
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = sub i64 %i.aci, %i.acj
  %i.acl = icmp ult i64 %i.ack, 2
  br i1 %i.acl, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.acm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.acd, ptr noundef nonnull @.str.31, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit373

bb.dk:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store i16 10536, ptr %i.ach, align 1
  %i.acn = load ptr, ptr %i.acg, align 8, !tbaa !308
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 2
  store ptr %i.aco, ptr %i.acg, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit373

_ZN4llvm11raw_ostreamlsEPKc.exit373:              ; preds = %bb.dj, %bb.dk
  %i.acp = load ptr, ptr %16, align 8, !tbaa !343 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.acr = icmp eq ptr %i.acp, %i.acq
  br i1 %i.acr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit373
  %i.acs = load i64, ptr %i.acq, align 8, !tbaa !74
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.act) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.acu = load ptr, ptr %i.aau, align 8, !tbaa !307
  %i.acv = load ptr, ptr %i.aaw, align 8, !tbaa !308 ; 2 uses
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = ptrtoint ptr %i.acv to i64
  %i.acy = sub i64 %i.acw, %i.acx
  %i.acz = icmp ult i64 %i.acy, 22
  br i1 %i.acz, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %i.ada = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.32, i64 noundef 22) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit380

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.acv, ptr noundef nonnull align 1 dereferenceable(22) @.str.32, i64 22, i1 false)
  %i.adb = load ptr, ptr %i.aaw, align 8, !tbaa !308
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 22
  store ptr %i.adc, ptr %i.aaw, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit380

_ZN4llvm11raw_ostreamlsEPKc.exit380:              ; preds = %bb.dm, %bb.dl
  br i1 %3, label %bb.eu, label %.critedge168

bb.dn:                                            ; preds = %bb.a
  %i.add = and i64 %.0.copyload.i.i.i3.i, -4
  %i.ade = inttoptr i64 %i.add to ptr
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !307
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZL10print_elemRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperERKN5clang10CFGElementEb:bb.a
_ZN4llvm11raw_ostreamlsEPKc.exit428:              ; preds = %bb.eb, %bb.ec
  %.0.i.i427 = phi ptr [ %i.agy, %bb.eb ], [ %0, %bb.ec ] ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agb, i64 40
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !328 ; 2 uses
  %i.ahd = and i64 %i.ahc, 7
  %i.ahe = icmp ne i64 %i.ahd, 0
  %i.ahf = and i64 %i.ahc, -8                     ; 2 uses
  %.not2.i429 = icmp eq i64 %i.ahf, 0
  %.not.i430 = or i1 %i.ahe, %.not2.i429
  br i1 %.not.i430, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438, label %_ZNK5clang9NamedDecl7getNameEv.exit435

_ZNK5clang9NamedDecl7getNameEv.exit435:           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit428
  %i.ahg = inttoptr i64 %i.ahf to ptr
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !331 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16 ; 2 uses
  %i.ahk = load i64, ptr %i.ahi, align 8, !tbaa !333
  %i.ahl = and i64 %i.ahk, 4294967295             ; 5 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0.i.i427, i64 24
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !307
  %i.aho = getelementptr inbounds nuw i8, ptr %.0.i.i427, i64 32 ; 3 uses
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !308 ; 2 uses
  %i.ahq = ptrtoint ptr %i.ahn to i64
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = sub i64 %i.ahq, %i.ahr
  %i.aht = icmp ugt i64 %i.ahl, %i.ahs
  br i1 %i.aht, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit435
  %i.ahu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i427, ptr noundef nonnull %i.ahj, i64 noundef %i.ahl) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438

bb.ee:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit435
  %.not.i436 = icmp eq i64 %i.ahl, 0
  br i1 %.not.i436, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahp, ptr nonnull align 8 %i.ahj, i64 %i.ahl, i1 false)
  %i.ahv = load ptr, ptr %i.aho, align 8, !tbaa !308
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %i.ahl
  store ptr %i.ahw, ptr %i.aho, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit428, %bb.ed, %bb.ee, %bb.ef
  %i.ahx = load ptr, ptr %i.agq, align 8, !tbaa !307
  %i.ahy = load ptr, ptr %i.ags, align 8, !tbaa !308 ; 2 uses
  %i.ahz = ptrtoint ptr %i.ahx to i64
  %i.aia = ptrtoint ptr %i.ahy to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  %i.aic = icmp ult i64 %i.aib, 2
  br i1 %i.aic, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438
  %i.aid = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.19, i64 noundef 2) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit442

bb.eh:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit438
  store i16 32302, ptr %i.ahy, align 1
  %i.aie = load ptr, ptr %i.ags, align 8, !tbaa !308
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  store ptr %i.aif, ptr %i.ags, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit442

_ZN4llvm11raw_ostreamlsEPKc.exit442:              ; preds = %bb.eg, %bb.eh
  %.0.i.i441 = phi ptr [ %i.aid, %bb.eg ], [ %0, %bb.eh ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i443 = load i64, ptr %i.agp, align 8, !tbaa !74
  %i.aig = and i64 %.sroa.0.0.copyload.i.i.i.i443, -16
  %i.aih = inttoptr i64 %i.aig to ptr
  %i.aii = load ptr, ptr %i.aih, align 16, !tbaa !189, !nonnull !138, !noundef !138 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  %i.aik = load i8, ptr %i.aij, align 16          ; 2 uses
  %i.ail = add nsw i8 %i.aik, -47
  %switch.i.i.i.i.i.i.i.i.i.i444 = icmp ult i8 %i.ail, 3
  %i.aim = and i8 %i.aik, 62
  %spec.select.i.i.i447 = icmp eq i8 %i.aim, 48
  tail call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i444)
  tail call void @llvm.assume(i1 %spec.select.i.i.i447)
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aii, i64 24
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !195 ; 2 uses
  %i.aip = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.aio) ; 2 uses
  %.not.not.i.i450 = icmp eq ptr %i.aip, null
  %spec.select.i.i451 = select i1 %.not.not.i.i450, ptr %i.aio, ptr %i.aip
  %i.aiq = getelementptr inbounds nuw i8, ptr %spec.select.i.i451, i64 40
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !328 ; 2 uses
  %i.ais = and i64 %i.air, 7
  %i.ait = icmp ne i64 %i.ais, 0
  %i.aiu = and i64 %i.air, -8                     ; 2 uses
  %.not2.i453 = icmp eq i64 %i.aiu, 0
  %.not.i454 = or i1 %i.ait, %.not2.i453
  br i1 %.not.i454, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462, label %_ZNK5clang9NamedDecl7getNameEv.exit459

_ZNK5clang9NamedDecl7getNameEv.exit459:           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit442
  %i.aiv = inttoptr i64 %i.aiu to ptr
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !331 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 16 ; 2 uses
  %i.aiz = load i64, ptr %i.aix, align 8, !tbaa !333
  %i.aja = and i64 %i.aiz, 4294967295             ; 5 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0.i.i441, i64 24
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !307
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0.i.i441, i64 32 ; 3 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !308 ; 2 uses
  %i.ajf = ptrtoint ptr %i.ajc to i64
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  %i.aji = icmp ugt i64 %i.aja, %i.ajh
  br i1 %i.aji, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit459
  %i.ajj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i441, ptr noundef nonnull %i.aiy, i64 noundef %i.aja) #24
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462

bb.ej:                                            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit459
  %.not.i460 = icmp eq i64 %i.aja, 0
  br i1 %.not.i460, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aje, ptr nonnull align 8 %i.aiy, i64 %i.aja, i1 false)
  %i.ajk = load ptr, ptr %i.ajd, align 8, !tbaa !308
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.aja
  store ptr %i.ajl, ptr %i.ajd, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit442, %bb.ei, %bb.ej, %bb.ek
  %.0.i461 = phi ptr [ %i.ajj, %bb.ei ], [ %.0.i.i441, %bb.ek ], [ %.0.i.i441, %bb.ej ], [ %.0.i.i441, %_ZN4llvm11raw_ostreamlsEPKc.exit442 ] ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0.i461, i64 24
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !307
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0.i461, i64 32 ; 3 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !308 ; 2 uses
  %i.ajq = ptrtoint ptr %i.ajn to i64
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr
  %i.ajt = icmp ult i64 %i.ajs, 2
  br i1 %i.ajt, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462
  %i.aju = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i461, ptr noundef nonnull @.str.31, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit466

bb.em:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit462
  store i16 10536, ptr %i.ajp, align 1
  %i.ajv = load ptr, ptr %i.ajo, align 8, !tbaa !308
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 2
  store ptr %i.ajw, ptr %i.ajo, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit466

_ZN4llvm11raw_ostreamlsEPKc.exit466:              ; preds = %bb.el, %bb.em
  %i.ajx = load ptr, ptr %i.agq, align 8, !tbaa !307
  %i.ajy = load ptr, ptr %i.ags, align 8, !tbaa !308 ; 2 uses
  %i.ajz = ptrtoint ptr %i.ajx to i64
  %i.aka = ptrtoint ptr %i.ajy to i64
  %i.akb = sub i64 %i.ajz, %i.aka
  %i.akc = icmp ult i64 %i.akb, 27
  br i1 %i.akc, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit466
  %i.akd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.36, i64 noundef 27) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.eo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit466
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ajy, ptr noundef nonnull align 1 dereferenceable(27) @.str.36, i64 27, i1 false)
  %i.ake = load ptr, ptr %i.ags, align 8, !tbaa !308
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 27
  store ptr %i.akf, ptr %i.ags, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.ep:                                            ; preds = %bb.a
  %i.akg = and i64 %.0.copyload.i.i.i3.i, -4
  %i.akh = inttoptr i64 %i.akg to ptr
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !307
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !308 ; 2 uses
  %i.akm = icmp eq ptr %i.akj, %i.akl
  br i1 %i.akm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.akn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.33, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit480

bb.er:                                            ; preds = %bb.ep
  store i8 126, ptr %i.akl, align 1
  %i.ako = load ptr, ptr %i.akk, align 8, !tbaa !308
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 1
  store ptr %i.akp, ptr %i.akk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit480

_ZN4llvm11raw_ostreamlsEPKc.exit480:              ; preds = %bb.eq, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %.sroa.0.0.copyload.i481 = load i64, ptr %i.akq, align 8, !tbaa !74
  store i64 %.sroa.0.0.copyload.i481, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.akr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.akr, align 8, !tbaa !311 ; 2 uses
  %i.aks = load i64, ptr %.val, align 8           ; 11 uses
  %i.akt = lshr i64 %i.aks, 3
  %i.aku = and i64 %i.akt, 512
  %i.akv = lshr i64 %i.aks, 5
  %i.akw = and i64 %i.akv, 8388608
  %23 = or disjoint i64 %i.aku, %i.akw
  %i.akx = or disjoint i64 %23, 4472834
  %i.aky = and i64 %i.aks, 8192
  %.not.i482 = icmp eq i64 %i.aky, 0
  %i.akz = shl i64 %i.aks, 21
  %i.ala = and i64 %i.akz, 16777216
  %i.alb = select i1 %.not.i482, i64 %i.ala, i64 16777216
  %i.alc = shl i64 %i.aks, 13
  %i.ald = and i64 %i.alc, 33554432
  %i.ale = or disjoint i64 %i.alb, %i.ald
  %i.alf = shl i64 %i.aks, 26
  %i.alg = and i64 %i.alf, 67108864
  %i.alh = or disjoint i64 %i.ale, %i.alg
  %i.ali = shl i64 %i.aks, 14
  %i.alj = and i64 %i.ali, 134217728
  %i.alk = or disjoint i64 %i.alh, %i.alj
  %i.all = shl i64 %i.aks, 27
  %i.alm = and i64 %i.all, 268435456
  %i.aln = or disjoint i64 %i.alk, %i.alm
  %i.alo = shl i64 %i.aks, 17
  %i.alp = and i64 %i.alo, 1610612736
  %i.alq = shl i64 %i.aks, 4                      ; 2 uses
  %i.alr = and i64 %i.alq, 8589934592
  %i.als = and i64 %i.aks, 128
  %.not17.i483 = icmp eq i64 %i.als, 0
  %i.alt = and i64 %i.alq, 17179869184
  %i.alu = xor i64 %i.alt, 112201725640704
  %i.alv = select i1 %.not17.i483, i64 112184545771520, i64 %i.alu
  %i.alw = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.alx = load i64, ptr %i.alw, align 8
  %i.aly = shl i64 %i.alx, 7
  %i.alz = and i64 %i.aly, 140737488355328
  %.masked.masked.masked = or i64 %i.aln, %i.alp
  %.masked677.masked = or i64 %.masked.masked.masked, %i.alr
  %.masked = or i64 %.masked677.masked, %i.akx
  %i.ama = or i64 %.masked, %i.alv
  %i.amb = or i64 %i.ama, %i.alz
  %i.amc = xor i64 %i.amb, 1610612736
  store i64 %i.amc, ptr %18, align 8
  %i.amd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.amd, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ame = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 1, ptr %i.ame, align 8, !tbaa !320
  %i.amf = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.amf, align 1, !tbaa !321
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(34) %19, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.amg = load ptr, ptr %i.aki, align 8, !tbaa !307
  %i.amh = load ptr, ptr %i.akk, align 8, !tbaa !308 ; 2 uses
  %i.ami = ptrtoint ptr %i.amg to i64
  %i.amj = ptrtoint ptr %i.amh to i64
  %i.amk = sub i64 %i.ami, %i.amj
  %i.aml = icmp ult i64 %i.amk, 32
  br i1 %i.aml, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit480
  %i.amm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.37, i64 noundef 32) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.et:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.amh, ptr noundef nonnull align 1 dereferenceable(32) @.str.37, i64 32, i1 false)
  %i.amn = load ptr, ptr %i.akk, align 8, !tbaa !308
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 32
  store ptr %i.amo, ptr %i.akk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

default.unreachable655:                           ; preds = %bb.a
  unreachable

_ZN4llvm11raw_ostreamlsEPKc.exit235:              ; preds = %bb.et, %bb.es, %bb.eo, %bb.en, %bb.dx, %bb.dw, %bb.da, %bb.cz, %bb.ct, %bb.cs, %bb.cm, %bb.cl, %bb.cf, %bb.ce, %bb.bs, %bb.br, %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.av, %bb.au, %bb.an
  br i1 %3, label %bb.eu, label %.critedge168

bb.eu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit380, %_ZN4llvm11raw_ostreamlsEPKc.exit235
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !308 ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !307
  %.not.i488 = icmp ult ptr %i.amq, %i.ams
  br i1 %.not.i488, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.amt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 10) #24 ; 0 uses
  br label %.critedge168

bb.ew:                                            ; preds = %bb.eu
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amq, i64 1
  store ptr %i.amu, ptr %i.amp, align 8, !tbaa !308
  store i8 10, ptr %i.amq, align 1, !tbaa !74
  br label %.critedge168

.critedge168:                                     ; preds = %bb.db, %bb.ew, %bb.ev, %_ZN4llvm11raw_ostreamlsEPKc.exit195, %_ZN4llvm11raw_ostreamlsEPKc.exit181, %bb.k, %bb.j, %_ZN4llvm11raw_ostreamlsEPKc.exit177, %bb.q, %bb.r, %bb.al, %bb.am, %_ZN4llvm11raw_ostreamlsEPKc.exit380, %_ZN4llvm11raw_ostreamlsEPKc.exit235
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117StmtPrinterHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_117StmtPrinterHelperE, i64 16), ptr %0, align 8, !tbaa !279
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !284  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !289  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvm8DenseMapIPKN5clang4StmtESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !290
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820
  %i.v = add nuw nsw i64 %i.u, %i.r
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.p, i64 noundef %i.v, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKN5clang4StmtESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4StmtESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, %bb.c
  tail call void @_ZN5clang13PrinterHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11LangOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1136) dereferenceable(1136) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !74
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !343  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !74
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !343  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !74
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !667  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !668  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !343 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !74
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !664

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.s, align 8, !tbaa !667
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !669
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !343 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !74
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
end_hunk_2
begin_hunk_3_@_ZL11print_blockRN4llvm11raw_ostreamEPKN5clang3CFGERKNS2_8CFGBlockERN12_GLOBAL__N_117StmtPrinterHelperEbb:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ai = icmp eq ptr %2, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 9
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.47, i64 noundef 9) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ak, ptr noundef nonnull align 1 dereferenceable(9) @.str.47, i64 9, i1 false)
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.m:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !228
  %i.au = icmp eq ptr %2, %i.at
  br i1 %i.au, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 27
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.48, i64 noundef 27) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aw, ptr noundef nonnull align 1 dereferenceable(27) @.str.48, i64 27, i1 false)
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 27
  store ptr %i.bd, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.q:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = trunc i8 %i.bf to i1
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !308 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  br i1 %i.bg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ult i64 %i.bl, 13
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.49, i64 noundef 13) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bi, ptr noundef nonnull align 1 dereferenceable(13) @.str.49, i64 13, i1 false)
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 13
  store ptr %i.bp, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.u:                                             ; preds = %bb.q
  %i.bq = icmp ult i64 %i.bl, 2
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.50, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.w:                                             ; preds = %bb.u
  store i16 2653, ptr %i.bi, align 1
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

_ZN4llvm11raw_ostreamlsEPKc.exit195:              ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.p, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g
  br i1 %5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit195
  %i.bu = load ptr, ptr %0, align 8, !tbaa !279
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4llvm11raw_ostreamlsEPKc.exit195
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !277 ; 9 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit244, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %4, label %bb.aa, label %_ZN4llvm11raw_ostreamlsEPKc.exit210

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.ce, 2
  br i1 %i.cf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.51, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit210

bb.ac:                                            ; preds = %bb.aa
  store i16 8224, ptr %i.cb, align 1
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store ptr %i.ci, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit210

_ZN4llvm11raw_ostreamlsEPKc.exit210:              ; preds = %bb.ac, %bb.ab, %bb.z
  %i.cj = load i16, ptr %i.bz, align 8
  %i.ck = and i16 %i.cj, 511
  switch i16 %i.ck, label %bb.be [
    i16 2, label %bb.ad
    i16 138, label %bb.ah
    i16 137, label %bb.ap
    i16 264, label %bb.as
    i16 165, label %bb.ba
  ]

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit210
  %i.cl = tail call noundef ptr @_ZNK5clang9LabelStmt7getNameEv(ptr noundef nonnull align 8 dereferenceable(25) %i.bz) #24 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit213, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.ad
  %i.cm = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #24 ; 5 uses
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ugt i64 %i.cm, %i.cr
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.ct = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.cl, i64 noundef %i.cm) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.af:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i211 = icmp eq i64 %i.cm, 0
  br i1 %.not.i2.i211, label %_ZN4llvm11raw_ostreamlsEPKc.exit213, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.cl, i64 %i.cm, i1 false)
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  store ptr %i.cv, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit210
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = icmp ult i64 %i.da, 5
  br i1 %i.db, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.52, i64 noundef 5) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit218

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cx, ptr noundef nonnull align 1 dereferenceable(5) @.str.52, i64 5, i1 false)
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  store ptr %i.de, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit218

_ZN4llvm11raw_ostreamlsEPKc.exit218:              ; preds = %bb.ai, %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !31 ; 2 uses
  %.not170 = icmp eq ptr %i.dg, null
  br i1 %.not170, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit218
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val192 = load ptr, ptr %i.dh, align 8, !tbaa !311 ; 6 uses
  %i.di = load i64, ptr %.val192, align 8         ; 2 uses
  %i.dj = lshr i64 %i.di, 3
  %i.dk = and i64 %i.dj, 512
  %i.dl = lshr i64 %i.di, 5
  %i.dm = and i64 %i.dl, 8388608
  %17 = or disjoint i64 %i.dk, %i.dm
  %i.dn = or disjoint i64 %17, 4472834
  %18 = load i64, ptr %.val192, align 8           ; 2 uses
  %i.do = and i64 %18, 8192
  %.not.i = icmp eq i64 %i.do, 0
  %i.dp = shl i64 %18, 21
  %i.dq = and i64 %i.dp, 16777216
  %i.dr = select i1 %.not.i, i64 %i.dq, i64 16777216
  %i.ds = or disjoint i64 %i.dr, %i.dn
  %i.dt = load i64, ptr %.val192, align 8         ; 4 uses
  %i.du = shl i64 %i.dt, 13
  %i.dv = and i64 %i.du, 33554432
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = shl i64 %i.dt, 26
  %i.dy = and i64 %i.dx, 67108864
  %19 = shl i64 %i.dt, 14
  %20 = and i64 %19, 134217728
  %21 = or disjoint i64 %i.dw, %i.dy
  %i.dz = shl i64 %i.dt, 27
  %i.ea = and i64 %i.dz, 268435456
  %22 = load i64, ptr %.val192, align 8           ; 3 uses
  %i.eb = shl i64 %22, 17
  %i.ec = and i64 %i.eb, 536870912
  %i.ed = shl i64 %22, 17
  %i.ee = and i64 %i.ed, 1073741824
  %23 = shl i64 %22, 4
  %24 = and i64 %23, 8589934592
  %25 = load i64, ptr %.val192, align 8           ; 2 uses
  %i.ef = and i64 %25, 128
  %.not17.i = icmp eq i64 %i.ef, 0
  %i.eg = shl i64 %25, 4
  %i.eh = and i64 %i.eg, 17179869184
  %i.ei = xor i64 %i.eh, 112201725640704
  %i.ej = select i1 %.not17.i, i64 112184545771520, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.val192, i64 80
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = shl i64 %i.el, 7
  %i.en = and i64 %i.em, 140737488355328
  %.masked.masked.masked431.masked.masked = or i64 %21, %20
  %.masked429.masked.masked.masked = or i64 %.masked.masked.masked431.masked.masked, %i.ea
  %.masked.masked.masked434 = or i64 %.masked429.masked.masked.masked, %i.ec
  %.masked433.masked = or i64 %.masked.masked.masked434, %i.ee
  %.masked = or i64 %.masked433.masked, %24
  %i.eo = or i64 %.masked, %i.ej
  %i.ep = or i64 %i.eo, %i.en
  %i.eq = xor i64 %i.ep, 1610612736
  store i64 %i.eq, ptr %7, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !314
  store ptr @.str.11, ptr %8, align 8, !tbaa !316
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.es, align 8, !tbaa !317
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %8, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4llvm11raw_ostreamlsEPKc.exit218
  %i.et = load i16, ptr %i.bz, align 8
  %i.eu = and i16 %i.et, 512
  %.not.i219 = icmp eq i16 %i.eu, 0
  br i1 %.not.i219, label %_ZN4llvm11raw_ostreamlsEPKc.exit213, label %_ZN5clang8CaseStmt6getRHSEv.exit

_ZN5clang8CaseStmt6getRHSEv.exit:                 ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !31 ; 2 uses
  %.not171 = icmp eq ptr %i.ew, null
  br i1 %.not171, label %_ZN4llvm11raw_ostreamlsEPKc.exit213, label %bb.am

bb.am:                                            ; preds = %_ZN5clang8CaseStmt6getRHSEv.exit
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.ey = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp ult i64 %i.fb, 5
  br i1 %i.fc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.53, i64 noundef 5) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit223

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ey, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 5
  store ptr %i.ff, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit223

_ZN4llvm11raw_ostreamlsEPKc.exit223:              ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val191 = load ptr, ptr %i.fg, align 8, !tbaa !311 ; 6 uses
  %i.fh = load i64, ptr %.val191, align 8         ; 2 uses
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = and i64 %i.fi, 512
  %i.fk = lshr i64 %i.fh, 5
  %i.fl = and i64 %i.fk, 8388608
  %26 = or disjoint i64 %i.fj, %i.fl
  %i.fm = or disjoint i64 %26, 4472834
  %27 = load i64, ptr %.val191, align 8           ; 2 uses
  %i.fn = and i64 %27, 8192
  %.not.i224 = icmp eq i64 %i.fn, 0
  %i.fo = shl i64 %27, 21
  %i.fp = and i64 %i.fo, 16777216
  %i.fq = select i1 %.not.i224, i64 %i.fp, i64 16777216
  %i.fr = or disjoint i64 %i.fq, %i.fm
  %i.fs = load i64, ptr %.val191, align 8         ; 4 uses
  %i.ft = shl i64 %i.fs, 13
  %i.fu = and i64 %i.ft, 33554432
  %i.fv = or disjoint i64 %i.fr, %i.fu
  %i.fw = shl i64 %i.fs, 26
  %i.fx = and i64 %i.fw, 67108864
  %28 = shl i64 %i.fs, 14
  %29 = and i64 %28, 134217728
  %30 = or disjoint i64 %i.fv, %i.fx
  %i.fy = shl i64 %i.fs, 27
  %i.fz = and i64 %i.fy, 268435456
  %31 = load i64, ptr %.val191, align 8           ; 3 uses
  %i.ga = shl i64 %31, 17
  %i.gb = and i64 %i.ga, 536870912
  %i.gc = shl i64 %31, 17
  %i.gd = and i64 %i.gc, 1073741824
  %32 = shl i64 %31, 4
  %33 = and i64 %32, 8589934592
  %34 = load i64, ptr %.val191, align 8           ; 2 uses
  %i.ge = and i64 %34, 128
  %.not17.i225 = icmp eq i64 %i.ge, 0
  %i.gf = shl i64 %34, 4
  %i.gg = and i64 %i.gf, 17179869184
  %i.gh = xor i64 %i.gg, 112201725640704
  %i.gi = select i1 %.not17.i225, i64 112184545771520, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %.val191, i64 80
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = shl i64 %i.gk, 7
  %i.gm = and i64 %i.gl, 140737488355328
  %.masked438.masked.masked.masked.masked = or i64 %30, %29
  %.masked440.masked.masked.masked = or i64 %.masked438.masked.masked.masked.masked, %i.fz
  %.masked442.masked.masked = or i64 %.masked440.masked.masked.masked, %i.gb
  %.masked444.masked = or i64 %.masked442.masked.masked, %i.gd
  %.masked446.a = or i64 %.masked444.masked, %33
  %i.gn = or i64 %.masked446.a, %i.gi
  %i.go = or i64 %i.gn, %i.gm
  %i.gp = xor i64 %i.go, 1610612736
  store i64 %i.gp, ptr %9, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.gq, align 8, !tbaa !314
  store ptr @.str.11, ptr %10, align 8, !tbaa !316
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.gr, align 8, !tbaa !317
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %10, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit210
  %i.gs = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = icmp ult i64 %i.gw, 7
  br i1 %i.gx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gy = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.54, i64 noundef 7) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.ar:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gt, ptr noundef nonnull align 1 dereferenceable(7) @.str.54, i64 7, i1 false)
  %i.gz = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 7
  store ptr %i.ha, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit210
  %i.hb = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.hc = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = icmp ult i64 %i.hf, 7
  br i1 %i.hg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.55, i64 noundef 7) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit234

bb.au:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.hc, ptr noundef nonnull align 1 dereferenceable(7) @.str.55, i64 7, i1 false)
  %i.hi = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 7
  store ptr %i.hj, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit234

_ZN4llvm11raw_ostreamlsEPKc.exit234:              ; preds = %bb.at, %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !301 ; 2 uses
  %.not169 = icmp eq ptr %i.hl, null
  br i1 %.not169, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit234
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val190 = load ptr, ptr %i.hm, align 8, !tbaa !311
  call void @_ZN5clang14PrintingPolicyC2ERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(1136) %.val190)
  call void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33) %i.hl, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit234
  %i.hn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.56) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.hp = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.az:                                            ; preds = %bb.ax
  store i8 41, ptr %i.hp, align 1
  %i.hs = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  store ptr %i.ht, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.ba:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit210
  %i.hu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.57) ; 0 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !353 ; 2 uses
  %.not168 = icmp eq ptr %i.hw, null
  br i1 %.not168, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val189 = load ptr, ptr %i.hx, align 8, !tbaa !311
  call void @_ZN5clang14PrintingPolicyC2ERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(1136) %.val189)
  call void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33) %i.hw, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 0, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hy = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.56) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

bb.be:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit210
  %i.ia = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.58) ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val188 = load ptr, ptr %i.id, align 8, !tbaa !311
  call void @_ZN5clang14PrintingPolicyC2ERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(1136) %.val188)
  store ptr @.str.11, ptr %14, align 8, !tbaa !316
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.ie, align 8, !tbaa !317
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %14, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.if = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit213

_ZN4llvm11raw_ostreamlsEPKc.exit213:              ; preds = %bb.al, %bb.az, %bb.ay, %bb.ar, %bb.aq, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZN4llvm11raw_ostreamlsEPKc.exit223, %_ZN5clang8CaseStmt6getRHSEv.exit, %bb.bd, %bb.be
  %i.ig = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = icmp ult i64 %i.ik, 2
  br i1 %i.il, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit213
  %i.im = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.59, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit244

bb.bg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit213
  store i16 2618, ptr %i.ih, align 1
  %i.in = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  store ptr %i.io, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit244

_ZN4llvm11raw_ostreamlsEPKc.exit244:              ; preds = %bb.bg, %bb.bf, %bb.y
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !73, !noalias !696 ; 3 uses
  %i.ir = load ptr, ptr %2, align 8, !tbaa !72, !noalias !697 ; 3 uses
  %.not368382 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not368382, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit244
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.it = ptrtoint ptr %6 to i64                  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %_ZN4llvm11raw_ostreamlsEPKc.exit248

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit252.us
  %.sroa.0346.0384.us = phi ptr [ %i.jl, %_ZN4llvm11raw_ostreamlsEPKc.exit252.us ], [ %i.iq, %.lr.ph ]
  %.0383.us = phi i32 [ %i.jm, %_ZN4llvm11raw_ostreamlsEPKc.exit252.us ], [ 1, %.lr.ph ] ; 3 uses
  %i.iv = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.iw = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.split.us
  store i8 32, ptr %i.iw, align 1
  %i.iy = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  store ptr %i.iz, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit248.us

bb.bi:                                            ; preds = %.lr.ph.split.us
  %i.ja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.60, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit248.us

_ZN4llvm11raw_ostreamlsEPKc.exit248.us:           ; preds = %bb.bi, %bb.bh
  store ptr @.str.61, ptr %15, align 8, !tbaa !358, !alias.scope !698
  store i32 %.0383.us, ptr %i.is, align 8, !tbaa !699, !alias.scope !698
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %15, ptr %6, align 8, !tbaa !700
  %i.jb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.it) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.jc = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.jd = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = icmp ult i64 %i.jg, 2
  br i1 %i.jh, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit248.us
  store i16 8250, ptr %i.jd, align 1
  %i.ji = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  store ptr %i.jj, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit252.us

bb.bk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit248.us
  %i.jk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.62, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit252.us

_ZN4llvm11raw_ostreamlsEPKc.exit252.us:           ; preds = %bb.bk, %bb.bj
  store i32 %.0383.us, ptr %i.iu, align 4, !tbaa !360
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0346.0384.us, i64 -16 ; 3 uses
  call fastcc void @_ZL10print_elemRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperERKN5clang10CFGElementEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i1 noundef zeroext true)
  %i.jm = add i32 %.0383.us, 1
  %.not368.us = icmp eq ptr %i.jl, %i.ir
  br i1 %.not368.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !693

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit252, %_ZN4llvm11raw_ostreamlsEPKc.exit252.us, %_ZN4llvm11raw_ostreamlsEPKc.exit244
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.jn, align 8, !tbaa !74
  %.not369 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not369, label %bb.bx, label %bb.bn

_ZN4llvm11raw_ostreamlsEPKc.exit248:              ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit252
  %.sroa.0346.0384 = phi ptr [ %i.jy, %_ZN4llvm11raw_ostreamlsEPKc.exit252 ], [ %i.iq, %.lr.ph ]
  %.0383 = phi i32 [ %i.jz, %_ZN4llvm11raw_ostreamlsEPKc.exit252 ], [ 1, %.lr.ph ] ; 3 uses
  store ptr @.str.61, ptr %15, align 8, !tbaa !358, !alias.scope !698
  store i32 %.0383, ptr %i.is, align 8, !tbaa !699, !alias.scope !698
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %15, ptr %6, align 8, !tbaa !700
  %i.jo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.it) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.jp = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.jq = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = icmp ult i64 %i.jt, 2
  br i1 %i.ju, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit248
  %i.jv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.62, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit252

bb.bm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit248
  store i16 8250, ptr %i.jq, align 1
  %i.jw = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store ptr %i.jx, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit252

_ZN4llvm11raw_ostreamlsEPKc.exit252:              ; preds = %bb.bl, %bb.bm
  store i32 %.0383, ptr %i.iu, align 4, !tbaa !360
  %i.jy = getelementptr inbounds i8, ptr %.sroa.0346.0384, i64 -16 ; 3 uses
  call fastcc void @_ZL10print_elemRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperERKN5clang10CFGElementEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i1 noundef zeroext true)
  %i.jz = add i32 %.0383, 1
  %.not368 = icmp eq ptr %i.jy, %i.ir
  br i1 %.not368, label %._crit_edge, label %_ZN4llvm11raw_ostreamlsEPKc.exit248, !llvm.loop !693

bb.bn:                                            ; preds = %._crit_edge
  br i1 %5, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %bb.bn
  %i.ka = load ptr, ptr %0, align 8, !tbaa !279
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = call noundef nonnull align 8 dereferenceable(48) ptr %i.kc(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 0 uses
  %i.ke = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.kf = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = icmp ult i64 %i.ki, 6
  br i1 %i.kj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.63, i64 noundef 6) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit256

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.kf, ptr noundef nonnull align 1 dereferenceable(6) @.str.63, i64 6, i1 false)
  %i.kl = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 6
  store ptr %i.km, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit256

_ZN4llvm11raw_ostreamlsEPKc.exit256:              ; preds = %bb.bp, %bb.bq
  store i32 -1, ptr %i.c, align 8, !tbaa !351
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val187 = load ptr, ptr %i.kn, align 8, !tbaa !311 ; 2 uses
  %i.ko = load i64, ptr %.val187, align 8         ; 11 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = and i64 %i.kp, 512
  %i.kr = lshr i64 %i.ko, 5
  %i.ks = and i64 %i.kr, 8388608
  %i.kt = and i64 %i.ko, 8192
  %.not.i257 = icmp eq i64 %i.kt, 0
  %i.ku = shl i64 %i.ko, 21
  %i.kv = and i64 %i.ku, 16777216
  %i.kw = select i1 %.not.i257, i64 %i.kv, i64 16777216
  %i.kx = shl i64 %i.ko, 13
  %i.ky = and i64 %i.kx, 33554432
  %i.kz = shl i64 %i.ko, 26
  %i.la = and i64 %i.kz, 67108864
  %i.lb = shl i64 %i.ko, 14
  %i.lc = and i64 %i.lb, 134217728
  %i.ld = shl i64 %i.ko, 27
  %i.le = and i64 %i.ld, 268435456
  %i.lf = shl i64 %i.ko, 17
  %i.lg = and i64 %i.lf, 1610612736
  %i.lh = shl i64 %i.ko, 4                        ; 2 uses
  %i.li = and i64 %i.lh, 8589934592
  %i.lj = and i64 %i.ko, 128
  %.not17.i258 = icmp eq i64 %i.lj, 0
  %i.lk = and i64 %i.lh, 17179869184
  %i.ll = xor i64 %i.lk, 112167365902336
  %i.lm = select i1 %.not17.i258, i64 112150186033152, i64 %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %.val187, i64 80
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = shl i64 %i.lo, 7
  %i.lq = and i64 %i.lp, 140737488355328
  %35 = or disjoint i64 %i.ks, %i.kq
  %i.lr = or disjoint i64 %35, %i.ky
  %i.ls = or disjoint i64 %i.lr, %i.la
  %i.lt = or disjoint i64 %i.ls, %i.lc
  %i.lu = or disjoint i64 %i.lt, %i.le
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store ptr %0, ptr %16, align 8, !tbaa !362
  %i.lv = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %3, ptr %i.lv, align 8, !tbaa !365
  %i.lw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr null, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !366
  %.masked.masked377.masked.masked.masked.masked.masked = or i64 %i.lu, %i.lg
  %.masked376.masked.masked.masked.masked.masked = or i64 %.masked.masked377.masked.masked.masked.masked.masked, %i.li
  %.masked.masked381.masked.masked = or i64 %.masked376.masked.masked.masked.masked.masked, %i.kw
  %.masked380.masked.masked = or i64 %.masked.masked381.masked.masked, %i.lq
  %i.lx = or i64 %.masked380.masked.masked, %i.lm
  %i.ly = xor i64 %i.lx, 1615085570
  store i64 %i.ly, ptr %i.lw, align 8
  %.sroa.0.0.copyload.i259 = load i64, ptr %i.jn, align 8, !tbaa !74
  call fastcc void @_ZN12_GLOBAL__N_123CFGBlockTerminatorPrint5printEN5clang13CFGTerminatorE(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 %.sroa.0.0.copyload.i259)
  %i.lz = load ptr, ptr %i.j, align 8, !tbaa !308 ; 3 uses
  %i.ma = load ptr, ptr %i.h, align 8, !tbaa !307
  %.not.i260 = icmp ult ptr %i.lz, %i.ma
  br i1 %.not.i260, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit256
  %i.mb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 10) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.bs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit256
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  store ptr %i.mc, ptr %i.j, align 8, !tbaa !308
  store i8 10, ptr %i.lz, align 1, !tbaa !74
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.br, %bb.bs
  %i.md = load ptr, ptr %0, align 8, !tbaa !279
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = call noundef nonnull align 8 dereferenceable(48) ptr %i.mf(ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit270

.critedge:                                        ; preds = %bb.bn
  %i.mh = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.mi = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = icmp ult i64 %i.ml, 6
  br i1 %i.mm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge
  %i.mn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.63, i64 noundef 6) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit264

bb.bu:                                            ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mi, ptr noundef nonnull align 1 dereferenceable(6) @.str.63, i64 6, i1 false)
  %i.mo = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 6
  store ptr %i.mp, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit264

_ZN4llvm11raw_ostreamlsEPKc.exit264:              ; preds = %bb.bt, %bb.bu
  store i32 -1, ptr %i.c, align 8, !tbaa !351
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val = load ptr, ptr %i.mq, align 8, !tbaa !311 ; 2 uses
  %i.mr = load i64, ptr %.val, align 8            ; 11 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = and i64 %i.ms, 512
  %i.mu = lshr i64 %i.mr, 5
  %i.mv = and i64 %i.mu, 8388608
  %i.mw = and i64 %i.mr, 8192
  %.not.i265 = icmp eq i64 %i.mw, 0
  %i.mx = shl i64 %i.mr, 21
  %i.my = and i64 %i.mx, 16777216
  %i.mz = select i1 %.not.i265, i64 %i.my, i64 16777216
  %i.na = shl i64 %i.mr, 13
  %i.nb = and i64 %i.na, 33554432
  %i.nc = shl i64 %i.mr, 26
  %i.nd = and i64 %i.nc, 67108864
  %i.ne = shl i64 %i.mr, 14
  %i.nf = and i64 %i.ne, 134217728
  %i.ng = shl i64 %i.mr, 27
  %i.nh = and i64 %i.ng, 268435456
  %i.ni = shl i64 %i.mr, 17
  %i.nj = and i64 %i.ni, 1610612736
  %i.nk = shl i64 %i.mr, 4                        ; 2 uses
  %i.nl = and i64 %i.nk, 8589934592
  %i.nm = and i64 %i.mr, 128
  %.not17.i266 = icmp eq i64 %i.nm, 0
  %i.nn = and i64 %i.nk, 17179869184
  %i.no = xor i64 %i.nn, 112167365902336
  %i.np = select i1 %.not17.i266, i64 112150186033152, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.nr = load i64, ptr %i.nq, align 8
  %i.ns = shl i64 %i.nr, 7
  %i.nt = and i64 %i.ns, 140737488355328
  %36 = or disjoint i64 %i.mv, %i.mt
  %i.nu = or disjoint i64 %36, %i.nb
  %i.nv = or disjoint i64 %i.nu, %i.nd
  %i.nw = or disjoint i64 %i.nv, %i.nf
  %i.nx = or disjoint i64 %i.nw, %i.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store ptr %0, ptr %16, align 8, !tbaa !362
  %i.ny = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %3, ptr %i.ny, align 8, !tbaa !365
  %i.nz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.33.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr null, ptr %.sroa.33.0..sroa_idx342, align 8, !tbaa !366
  %.masked.masked.masked.masked.masked.masked.masked = or i64 %i.nx, %i.nj
  %.masked371.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked, %i.nl
  %.masked.masked.masked.masked = or i64 %.masked371.masked.masked.masked.masked.masked, %i.mz
  %.masked374.masked.masked = or i64 %.masked.masked.masked.masked, %i.nt
  %i.oa = or i64 %.masked374.masked.masked, %i.np
  %i.ob = xor i64 %i.oa, 1615085570
  store i64 %i.ob, ptr %i.nz, align 8
  %.sroa.0.0.copyload.i267 = load i64, ptr %i.jn, align 8, !tbaa !74
  call fastcc void @_ZN12_GLOBAL__N_123CFGBlockTerminatorPrint5printEN5clang13CFGTerminatorE(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 %.sroa.0.0.copyload.i267)
  %i.oc = load ptr, ptr %i.j, align 8, !tbaa !308 ; 3 uses
  %i.od = load ptr, ptr %i.h, align 8, !tbaa !307
  %.not.i268 = icmp ult ptr %i.oc, %i.od
  br i1 %.not.i268, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit264
  %i.oe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 10) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit270

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit264
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store ptr %i.of, ptr %i.j, align 8, !tbaa !308
  store i8 10, ptr %i.oc, align 1, !tbaa !74
  br label %_ZN4llvm11raw_ostreamlsEc.exit270

_ZN4llvm11raw_ostreamlsEc.exit270:                ; preds = %bb.bw, %bb.bv, %_ZN4llvm11raw_ostreamlsEc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit270, %._crit_edge
  br i1 %4, label %bb.by, label %_ZN4llvm11raw_ostreamlsEc.exit339

bb.by:                                            ; preds = %bb.bx
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !87
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !88
  %i.ok = icmp eq ptr %i.oh, %i.oj
  br i1 %i.ok, label %_ZN4llvm11raw_ostreamlsEc.exit304, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %5, label %bb.ca, label %.critedge178

bb.ca:                                            ; preds = %bb.bz
  %i.ol = load ptr, ptr %0, align 8, !tbaa !279
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = call noundef nonnull align 8 dereferenceable(48) ptr %i.on(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 0 uses
  %i.op = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.oq = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = icmp ult i64 %i.ot, 9
  br i1 %i.ou, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ov = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.64, i64 noundef 9) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit274

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.oq, ptr noundef nonnull align 1 dereferenceable(9) @.str.64, i64 9, i1 false)
  %i.ow = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 9
  store ptr %i.ox, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit274

_ZN4llvm11raw_ostreamlsEPKc.exit274:              ; preds = %bb.cb, %bb.cc
  %i.oy = load ptr, ptr %0, align 8, !tbaa !279
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = call noundef nonnull align 8 dereferenceable(48) ptr %i.pa(ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit278

.critedge178:                                     ; preds = %bb.bz
  %i.pc = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.pd = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = icmp ult i64 %i.pg, 9
  br i1 %i.ph, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.critedge178
  %i.pi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.64, i64 noundef 9) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit278

bb.ce:                                            ; preds = %.critedge178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.pd, ptr noundef nonnull align 1 dereferenceable(9) @.str.64, i64 9, i1 false)
  %i.pj = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 9
  store ptr %i.pk, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit278

_ZN4llvm11raw_ostreamlsEPKc.exit278:              ; preds = %bb.ce, %bb.cd, %_ZN4llvm11raw_ostreamlsEPKc.exit274
  %i.pl = load ptr, ptr %i.j, align 8, !tbaa !308 ; 3 uses
  %i.pm = load ptr, ptr %i.h, align 8, !tbaa !307
  %.not.i279 = icmp ult ptr %i.pl, %i.pm
  br i1 %.not.i279, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit278
  %i.pn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 40) #24
  br label %_ZN4llvm11raw_ostreamlsEc.exit281

bb.cg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit278
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  store ptr %i.po, ptr %i.j, align 8, !tbaa !308
  store i8 40, ptr %i.pl, align 1, !tbaa !74
  br label %_ZN4llvm11raw_ostreamlsEc.exit281

_ZN4llvm11raw_ostreamlsEc.exit281:                ; preds = %bb.cf, %bb.cg
  %.0.i280 = phi ptr [ %i.pn, %bb.cf ], [ %0, %bb.cg ]
  %i.pp = load ptr, ptr %i.oi, align 8, !tbaa !88
  %i.pq = load ptr, ptr %i.og, align 8, !tbaa !87
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = lshr exact i64 %i.pt, 4
  %i.pv = and i64 %i.pu, 4294967295
  %i.pw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i280, i64 noundef %i.pv) #24 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !307
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 32 ; 3 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !308 ; 2 uses
  %i.qb = ptrtoint ptr %i.py to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = icmp ult i64 %i.qd, 2
  br i1 %i.qe, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit281
  %i.qf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.pw, ptr noundef nonnull @.str.65, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit285

bb.ci:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit281
  store i16 14889, ptr %i.qa, align 1
  %i.qg = load ptr, ptr %i.pz, align 8, !tbaa !308
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  store ptr %i.qh, ptr %i.pz, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit285

_ZN4llvm11raw_ostreamlsEPKc.exit285:              ; preds = %bb.ch, %bb.ci
  br i1 %5, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit285
  %i.qi = load ptr, ptr %0, align 8, !tbaa !279
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = call noundef nonnull align 8 dereferenceable(48) ptr %i.qk(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN4llvm11raw_ostreamlsEPKc.exit285
  %i.qm = load ptr, ptr %i.og, align 8, !tbaa !87 ; 2 uses
  %i.qn = load ptr, ptr %i.oi, align 8, !tbaa !88 ; 2 uses
  %.not172385 = icmp eq ptr %i.qm, %i.qn
  br i1 %.not172385, label %._crit_edge390, label %.lr.ph389

._crit_edge390:                                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit297, %bb.ck
  br i1 %5, label %bb.cv, label %bb.cw

.lr.ph389:                                        ; preds = %bb.ck, %_ZN4llvm11raw_ostreamlsEPKc.exit297
  %.0151387 = phi ptr [ %i.sm, %_ZN4llvm11raw_ostreamlsEPKc.exit297 ], [ %i.qm, %bb.ck ] ; 3 uses
  %.0152386 = phi i32 [ %i.sn, %_ZN4llvm11raw_ostreamlsEPKc.exit297 ], [ 0, %bb.ck ] ; 2 uses
  %i.qo = urem i32 %.0152386, 10
  %i.qp = icmp eq i32 %i.qo, 8
  br i1 %i.qp, label %bb.cl, label %_ZN4llvm11raw_ostreamlsEPKc.exit289

bb.cl:                                            ; preds = %.lr.ph389
  %i.qq = load ptr, ptr %i.h, align 8, !tbaa !307
  %i.qr = load ptr, ptr %i.j, align 8, !tbaa !308 ; 2 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = icmp ult i64 %i.qu, 6
  br i1 %i.qv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.qw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.66, i64 noundef 6) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit289

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.qr, ptr noundef nonnull align 1 dereferenceable(6) @.str.66, i64 6, i1 false)
  %i.qx = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 6
  store ptr %i.qy, ptr %i.j, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit289

_ZN4llvm11raw_ostreamlsEPKc.exit289:              ; preds = %bb.cn, %bb.cm, %.lr.ph389
  %i.qz = load ptr, ptr %.0151387, align 8, !tbaa !265 ; 2 uses
  %.not173.not = icmp eq ptr %i.qz, null
  br i1 %.not173.not, label %bb.co, label %.critedge182
end_hunk_3
begin_hunk_4_@_ZNK5clang8CFGBlock13getIndexInCFGEv:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.l = and i64 %i.i, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.l ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.x, %bb.f ] ; 9 uses
  %i.m = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !67
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.y = add nsw i64 %.047.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !701

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre54.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre55.i.i.i.i = sub i64 %i.g, %.pre54.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i = phi i64 [ %.pre55.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.i, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.aa = ashr exact i64 %.pre-phi56.i.i.i.i, 3
  switch i64 %i.aa, label %bb.j [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !67
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.1.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !67
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.2.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !67
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit

_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit

_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit15: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit

_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit17: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit

_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit15, %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit17, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %bb.j
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.f, %bb.j ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %i.al, %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit17 ], [ %i.aj, %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ak, %_ZN4llvm4findIRN5clang3CFGEPKNS1_8CFGBlockEEEDaOT_RKT0_.exit.loopexit.split.loop.exit15 ], [ %.02946.i.i.i.i, %bb.b ]
  %i.am = ptrtoint ptr %.028.i.i.i.i to i64
  %i.an = sub i64 %i.am, %i.h
  %i.ao = ashr exact i64 %i.an, 3
  ret i64 %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang8CFGBlock4dumpEPKNS_3CFGERKNS_11LangOptionsEb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef nonnull align 8 dereferenceable(1136) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #24
  tail call void @_ZNK5clang8CFGBlock5printERN4llvm11raw_ostreamEPKNS_3CFGERKNS_11LangOptionsEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1136) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang8CFGBlock5printERN4llvm11raw_ostreamEPKNS_3CFGERKNS_11LangOptionsEb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef nonnull align 8 dereferenceable(1136) %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.(anonymous namespace)::StmtPrinterHelper", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call fastcc void @_ZN12_GLOBAL__N_117StmtPrinterHelperC2EPKN5clang3CFGERKNS1_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1136) %3)
  call fastcc void @_ZL11print_blockRN4llvm11raw_ostreamEPKN5clang3CFGERKNS2_8CFGBlockERN12_GLOBAL__N_117StmtPrinterHelperEbb(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, i1 noundef zeroext true, i1 noundef zeroext %4)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307
  %.not.i = icmp ult ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !308
  store i8 10, ptr %i.b, align 1, !tbaa !74
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_117StmtPrinterHelperE, i64 16), ptr %5, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !284  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = add nuw nsw i64 %i.l, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  %i.q = add nuw nsw i64 %i.p, %i.m
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.k, i64 noundef %i.q, i64 noundef 8) #24, !inline_history !286
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11raw_ostreamlsEc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !289  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN12_GLOBAL__N_117StmtPrinterHelperD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !290
  %i.w = zext i32 %i.s to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = add nuw nsw i64 %i.w, 31
  %i.z = lshr i64 %i.y, 3
  %i.aa = and i64 %i.z, 1073741820
  %i.ab = add nuw nsw i64 %i.aa, %i.x
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.v, i64 noundef %i.ab, i64 noundef 8) #24, !inline_history !286
  br label %_ZN12_GLOBAL__N_117StmtPrinterHelperD2Ev.exit

_ZN12_GLOBAL__N_117StmtPrinterHelperD2Ev.exit:    ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit.i, %bb.e
  call void @_ZN5clang13PrinterHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(72) %5) #24, !inline_history !286
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZNK5clang8CFGBlock4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.clang::LangOptions", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN5clang11LangOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(1136) %1) #24
  %i.c = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #24
  call void @_ZNK5clang8CFGBlock5printERN4llvm11raw_ostreamEPKNS_3CFGERKNS_11LangOptionsEb(ptr noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef readonly %i.b, ptr noundef nonnull align 8 dereferenceable(1136) %1, i1 noundef zeroext false)
  call void @_ZN5clang11LangOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1136) dereferenceable(1136) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang8CFGBlock15printTerminatorERN4llvm11raw_ostreamERKNS_11LangOptionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1136) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.(anonymous namespace)::CFGBlockTerminatorPrint", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load i64, ptr %2, align 8                ; 11 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = and i64 %i.b, 512
  %i.d = lshr i64 %i.a, 5
  %i.e = and i64 %i.d, 8388608
  %i.f = and i64 %i.a, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = shl i64 %i.a, 21
  %i.h = and i64 %i.g, 16777216
  %i.i = select i1 %.not.i, i64 %i.h, i64 16777216
  %i.j = shl i64 %i.a, 13
  %i.k = and i64 %i.j, 33554432
  %i.l = shl i64 %i.a, 26
  %i.m = and i64 %i.l, 67108864
  %i.n = shl i64 %i.a, 14
  %i.o = and i64 %i.n, 134217728
  %i.p = shl i64 %i.a, 27
  %i.q = and i64 %i.p, 268435456
  %i.r = shl i64 %i.a, 17
  %i.s = and i64 %i.r, 1610612736
  %i.t = shl i64 %i.a, 4                          ; 2 uses
  %i.u = and i64 %i.t, 8589934592
  %i.v = and i64 %i.a, 128
  %.not17.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %i.t, 17179869184
  %i.x = xor i64 %i.w, 112167365902336
  %i.y = select i1 %.not17.i, i64 112150186033152, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = shl i64 %i.aa, 7
  %i.ac = and i64 %i.ab, 140737488355328
  %4 = or disjoint i64 %i.e, %i.c
  %i.ad = or disjoint i64 %4, %i.k
  %i.ae = or disjoint i64 %i.ad, %i.m
  %i.af = or disjoint i64 %i.ae, %i.o
  %i.ag = or disjoint i64 %i.af, %i.q
  store ptr %1, ptr %3, align 8, !tbaa !362
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !365
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !366
  %.masked.masked.masked.masked.masked.masked.masked = or i64 %i.ag, %i.s
  %.masked4.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked, %i.u
  %.masked.masked.masked.masked = or i64 %.masked4.masked.masked.masked.masked.masked, %i.i
  %.masked7.masked.masked = or i64 %.masked.masked.masked.masked, %i.ac
  %i.aj = or i64 %.masked7.masked.masked, %i.y
  %i.ak = xor i64 %i.aj, 1615085570
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.al, align 8, !tbaa !74
  call fastcc void @_ZN12_GLOBAL__N_123CFGBlockTerminatorPrint5printEN5clang13CFGTerminatorE(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang14PrintingPolicyC2ERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, -512
  %i.c = or disjoint i64 %i.b, 2                  ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = load i64, ptr %1, align 8
  %i.e = lshr i64 %i.d, 3
  %i.f = and i64 %i.e, 512
  %i.g = and i64 %i.c, -8388606
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = or disjoint i64 %i.h, 4472832            ; 2 uses
  store i64 %i.i, ptr %0, align 8
  %i.j = load i64, ptr %1, align 8
  %i.k = lshr i64 %i.j, 5
  %i.l = and i64 %i.k, 8388608
  %i.m = and i64 %i.i, -12303870
  %i.n = or disjoint i64 %i.m, %i.l               ; 2 uses
  store i64 %i.n, ptr %0, align 8
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = and i64 %i.o, 8192
  %.not = icmp eq i64 %i.p, 0
  %i.q = shl i64 %i.o, 21
  %i.r = and i64 %i.q, 16777216
  %i.s = select i1 %.not, i64 %i.r, i64 16777216
  %i.t = and i64 %i.n, -20692478
  %i.u = or disjoint i64 %i.s, %i.t               ; 2 uses
  store i64 %i.u, ptr %0, align 8
  %i.v = load i64, ptr %1, align 8
  %i.w = shl i64 %i.v, 13
  %i.x = and i64 %i.w, 33554432
  %i.y = and i64 %i.u, -37469694
  %i.z = or disjoint i64 %i.y, %i.x               ; 2 uses
  store i64 %i.z, ptr %0, align 8
  %i.aa = load i64, ptr %1, align 8
  %i.ab = shl i64 %i.aa, 26
  %i.ac = and i64 %i.ab, 67108864
  %i.ad = and i64 %i.z, -71024126
  %i.ae = or disjoint i64 %i.ad, %i.ac            ; 2 uses
  store i64 %i.ae, ptr %0, align 8
  %i.af = load i64, ptr %1, align 8
  %i.ag = shl i64 %i.af, 14
  %i.ah = and i64 %i.ag, 134217728
  %i.ai = and i64 %i.ae, -138132990
  %i.aj = or disjoint i64 %i.ai, %i.ah            ; 2 uses
  store i64 %i.aj, ptr %0, align 8
  %i.ak = load i64, ptr %1, align 8
  %i.al = shl i64 %i.ak, 27
  %i.am = and i64 %i.al, 268435456
  %i.an = and i64 %i.aj, -272350718
  %i.ao = or disjoint i64 %i.an, %i.am            ; 2 uses
  store i64 %i.ao, ptr %0, align 8
  %i.ap = load i64, ptr %1, align 8
  %i.aq = shl i64 %i.ap, 17
  %i.ar = and i64 %i.aq, 536870912
  %i.as = and i64 %i.ao, -540786174
  %i.at = or disjoint i64 %i.as, %i.ar
  %i.au = xor i64 %i.at, 536870912                ; 2 uses
  store i64 %i.au, ptr %0, align 8
  %i.av = load i64, ptr %1, align 8
  %i.aw = shl i64 %i.av, 17
  %i.ax = and i64 %i.aw, 1073741824
  %i.ay = and i64 %i.au, -7520108030
  %i.az = or disjoint i64 %i.ay, %i.ax
  %i.ba = xor i64 %i.az, 1073741824               ; 2 uses
  store i64 %i.ba, ptr %0, align 8
  %i.bb = load i64, ptr %1, align 8
  %i.bc = shl i64 %i.bb, 4
  %i.bd = and i64 %i.bc, 8589934592
  %i.be = and i64 %i.ba, -15036300798
  %i.bf = or disjoint i64 %i.be, %i.bd            ; 2 uses
  store i64 %i.bf, ptr %0, align 8
  %i.bg = load i64, ptr %1, align 8               ; 2 uses
  %i.bh = and i64 %i.bg, 128
  %.not17 = icmp eq i64 %i.bh, 0
  %i.bi = shl i64 %i.bg, 4
  %i.bj = and i64 %i.bi, 17179869184
  %i.bk = and i64 %i.bf, -140726754852350
  %i.bl = xor i64 %i.bj, 112201725640704
  %i.bm = select i1 %.not17, i64 112184545771520, i64 %i.bl
  %i.bn = or disjoint i64 %i.bm, %i.bk            ; 2 uses
  store i64 %i.bn, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = shl i64 %i.bp, 7
  %i.br = and i64 %i.bq, 140737488355328
  %i.bs = and i64 %i.bn, -1013687447698942
  %i.bt = or disjoint i64 %i.bs, %i.br
  store i64 %i.bt, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !314
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_123CFGBlockTerminatorPrint5printEN5clang13CFGTerminatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = lshr i32 %i.a, 1
  %i.c = and i32 %i.b, 3
  switch i32 %i.c, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %_ZN4llvm11raw_ostreamlsEPKc.exit5
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %1, -8
  %i.e = inttoptr i64 %i.d to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_123CFGBlockTerminatorPrintEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !367, !nonnull !138, !align !139 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !308  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 12
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull @.str.72, i64 noundef 12) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.72, i64 12, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !308
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store ptr %i.q, ptr %i.i, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %i.r = and i64 %1, -8
  %i.s = inttoptr i64 %i.r to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_123CFGBlockTerminatorPrintEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.s)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.f:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !367, !nonnull !138, !align !139 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !307
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !308  ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, 57
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull @.str.73, i64 noundef 57) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.x, ptr noundef nonnull align 1 dereferenceable(57) @.str.73, i64 57, i1 false)
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !308
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.a, %bb.h, %bb.g, %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang8CFGBlock19printTerminatorJsonERN4llvm11raw_ostreamERKNS_11LangOptionsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1136) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::CFGBlockTerminatorPrint", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !345
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !344
  store i8 0, ptr %i.a, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !368
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !369
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !370
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %5, ptr %i.g, align 8, !tbaa !371
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = load i64, ptr %2, align 8                ; 11 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 512
  %i.k = lshr i64 %i.h, 5
  %i.l = and i64 %i.k, 8388608
  %i.m = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.m, 0
  %i.n = shl i64 %i.h, 21
  %i.o = and i64 %i.n, 16777216
  %i.p = select i1 %.not.i.i, i64 %i.o, i64 16777216
  %i.q = shl i64 %i.h, 13
  %i.r = and i64 %i.q, 33554432
  %i.s = shl i64 %i.h, 26
  %i.t = and i64 %i.s, 67108864
  %i.u = shl i64 %i.h, 14
  %i.v = and i64 %i.u, 134217728
  %i.w = shl i64 %i.h, 27
  %i.x = and i64 %i.w, 268435456
  %i.y = shl i64 %i.h, 17
  %i.z = and i64 %i.y, 1610612736
  %i.aa = shl i64 %i.h, 4                         ; 2 uses
  %i.ab = and i64 %i.aa, 8589934592
  %i.ac = and i64 %i.h, 128
  %.not17.i.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %i.aa, 17179869184
  %i.ae = xor i64 %i.ad, 112167365902336
  %i.af = select i1 %.not17.i.i, i64 112150186033152, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 140737488355328
  %8 = or disjoint i64 %i.l, %i.j
  %i.ak = or disjoint i64 %8, %i.r
  %i.al = or disjoint i64 %i.ak, %i.t
  %i.am = or disjoint i64 %i.al, %i.v
  %i.an = or disjoint i64 %i.am, %i.x
  store ptr %6, ptr %4, align 8, !tbaa !362
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !365
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !366
  %.masked.masked.masked.masked.masked.masked.masked.i = or i64 %i.an, %i.z
  %.masked4.masked.masked.masked.masked.masked.i = or i64 %.masked.masked.masked.masked.masked.masked.masked.i, %i.ab
  %.masked.masked.masked.masked.i = or i64 %.masked4.masked.masked.masked.masked.masked.i, %i.p
  %.masked7.masked.masked.i = or i64 %.masked.masked.masked.masked.i, %i.aj
  %i.aq = or i64 %.masked7.masked.masked.i, %i.af
  %i.ar = xor i64 %i.aq, 1615085570
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.as, align 8, !tbaa !74
  call fastcc void @_ZN12_GLOBAL__N_123CFGBlockTerminatorPrint5printEN5clang13CFGTerminatorE(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.at = load ptr, ptr %5, align 8, !tbaa !343
  %i.au = load i64, ptr %i.b, align 8, !tbaa !344
  call void @_ZN5clang10JsonFormatB5cxx11EN4llvm9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr %i.at, i64 %i.au, i1 noundef zeroext %3)
  %i.av = load ptr, ptr %7, align 8, !tbaa !343
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !344
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.av, i64 noundef %i.ax) #24 ; 0 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !343   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !74
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.be = load ptr, ptr %5, align 8, !tbaa !343   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !74
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang10JsonFormatB5cxx11EN4llvm9StringRefEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !345
  store i32 1819047278, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !344
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.g, align 4, !tbaa !74
  br label %bb.ak

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.91, i64 6, i64 noundef 0) #24
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %2)
  %i.i = load i64, ptr %i.c, align 8, !tbaa !317  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.speculated4.i.i.i.i
  %i.l = sub i64 %i.i, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.k, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.91, i64 6, i64 noundef -1) #24
  %i.o = add i64 %i.n, 1
  %i.p = call i64 @llvm.usub.sat.i64(i64 %i.l, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !317  ; 2 uses
  %i.r = sub i64 %i.q, %i.p
  %i.s = load ptr, ptr %4, align 8, !tbaa !316    ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.r) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %.not.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.t, ptr %6, align 8, !tbaa !345, !alias.scope !715
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !344, !alias.scope !715
  store i8 0, ptr %i.t, align 8, !tbaa !74, !alias.scope !715
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !715
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.b, align 8, !tbaa !346, !noalias !715
  %i.v = icmp ugt i64 %.sroa.speculated.i.i.i.i, 15
  br i1 %i.v, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #24 ; 2 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !343, !alias.scope !715
  %i.x = load i64, ptr %i.b, align 8, !tbaa !346, !noalias !715
  store i64 %i.x, ptr %i.t, align 8, !tbaa !74, !alias.scope !715
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %.sroa.speculated.i.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !74
  store i8 %i.z, ptr %i.y, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !346, !noalias !715 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !344, !alias.scope !715
  %i.ac = load ptr, ptr %6, align 8, !tbaa !343, !alias.scope !715
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !715
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.ae = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 92, i64 noundef 0) #24 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

.preheader:                                       ; preds = %bb.k, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ah = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 34, i64 noundef 0) #24 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %._crit_edge, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %i.ak = phi i64 [ %i.ae, %.lr.ph ], [ %i.as, %bb.k ] ; 7 uses
  %i.al = call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 1)
  %i.am = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.92, i64 noundef %i.ak, i64 noundef 2) #24
  %.not = icmp eq i64 %i.al, %i.am
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !344 ; 2 uses
  %i.ao = icmp ugt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i64 noundef %i.ak, i64 noundef %i.an) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.i
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.aq = add nuw i64 %i.ak, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %bb.h
  %.1 = phi i64 [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.ak, %bb.h ]
  %i.ar = add i64 %.1, 1
  %i.as = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 92, i64 noundef %i.ar) #24 ; 2 uses
  %i.at = icmp eq i64 %i.as, -1
end_hunk_4
begin_hunk_5_@_ZL17print_initializerRN4llvm11raw_ostreamERN12_GLOBAL__N_117StmtPrinterHelperEPKN5clang18CXXCtorInitializerE:bb.a
  %.not2.i = icmp eq i64 %i.w, 0
  %.not.i25 = or i1 %i.v, %.not2.i
  br i1 %.not.i25, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !331  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !333
  %i.ac = and i64 %i.ab, 4294967295               ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !307
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !308 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %.not.i26 = icmp eq i64 %i.ac, 0
  br i1 %.not.i26, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false)
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ac
  store ptr %i.an, ptr %i.af, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %bb.a
  %i.ao = trunc i16 %i.d to i1
  %i.ap = select i1 %i.b, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit37, label %bb.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit37:     ; preds = %bb.e
  %i.aq = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !tbaa !74
  %i.ar = and i64 %.sroa.0.0.copyload.i, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !189
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i.i.i.i28 = load i64, ptr %i.au, align 8, !tbaa !74
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i.i28, -16
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !189, !nonnull !138, !noundef !138 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 16            ; 2 uses
  %i.ba = add nsw i8 %i.az, -47
  %switch.i.i.i.i.i.i.i.i.i.i29 = icmp ult i8 %i.ba, 3
  %i.bb = and i8 %i.az, 62
  %spec.select.i.i.i32 = icmp eq i8 %i.bb, 48
  tail call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i29)
  tail call void @llvm.assume(i1 %spec.select.i.i.i32)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !195 ; 2 uses
  %i.be = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bd) ; 2 uses
  %.not.not.i.i35 = icmp eq ptr %i.be, null
  %spec.select.i.i36 = select i1 %.not.not.i.i35, ptr %i.bd, ptr %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select.i.i36, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !328 ; 2 uses
  %i.bh = and i64 %i.bg, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = and i64 %i.bg, -8                       ; 2 uses
  %.not2.i38 = icmp eq i64 %i.bj, 0
  %.not.i39 = or i1 %i.bi, %.not2.i38
  br i1 %.not.i39, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit44

_ZNK5clang9NamedDecl7getNameEv.exit44:            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit37
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !331 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !333
  %i.bp = and i64 %i.bo, 4294967295               ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !307
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !308 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ugt i64 %i.bp, %i.bw
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit44
  %i.by = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.bn, i64 noundef %i.bp) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit44
  %.not.i45 = icmp eq i64 %i.bp, 0
  br i1 %.not.i45, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 8 %i.bn, i64 %i.bp, i1 false)
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !308
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bp
  store ptr %i.ca, ptr %i.bs, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.a, 2
  %i.cc = and i64 %.0.copyload.i.i.i.i.i.i, -7
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  br i1 %i.cb, label %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1871
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1872
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1874
  br label %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit

_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit: ; preds = %bb.i, %bb.j
  %.0.i48 = phi ptr [ %i.cl, %bb.j ], [ %i.cd, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i48, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !328 ; 2 uses
  %i.co = and i64 %i.cn, 7
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = and i64 %i.cn, -8                       ; 2 uses
  %.not2.i49 = icmp eq i64 %i.cq, 0
  %.not.i50 = or i1 %i.cp, %.not2.i49
  br i1 %.not.i50, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit55

_ZNK5clang9NamedDecl7getNameEv.exit55:            ; preds = %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !331 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !333
  %i.cw = and i64 %i.cv, 4294967295               ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !307
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !308 ; 2 uses
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp ugt i64 %i.cw, %i.dd
  br i1 %i.de, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit55
  %i.df = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.cu, i64 noundef %i.cw) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.l:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit55
  %.not.i56 = icmp eq i64 %i.cw, 0
  br i1 %.not.i56, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr nonnull align 8 %i.cu, i64 %i.cw, i1 false)
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !308
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cw
  store ptr %i.dh, ptr %i.cz, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZNK5clang18CXXCtorInitializer12getAnyMemberEv.exit, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit37, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !307
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 2 uses
  %i.dm = icmp eq ptr %i.dj, %i.dl
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.dn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.39, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  store i8 40, ptr %i.dl, align 1
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !308
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.n, %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !206 ; 2 uses
  %.not = icmp eq ptr %i.dr, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.ds, align 8, !tbaa !311 ; 2 uses
  %i.dt = load i64, ptr %.val, align 8            ; 11 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = and i64 %i.du, 512
  %i.dw = lshr i64 %i.dt, 5
  %i.dx = and i64 %i.dw, 8388608
  %5 = or disjoint i64 %i.dv, %i.dx
  %i.dy = or disjoint i64 %5, 4472834
  %i.dz = and i64 %i.dt, 8192
  %.not.i59 = icmp eq i64 %i.dz, 0
  %i.ea = shl i64 %i.dt, 21
  %i.eb = and i64 %i.ea, 16777216
  %i.ec = select i1 %.not.i59, i64 %i.eb, i64 16777216
  %i.ed = shl i64 %i.dt, 13
  %i.ee = and i64 %i.ed, 33554432
  %i.ef = or disjoint i64 %i.ec, %i.ee
  %i.eg = shl i64 %i.dt, 26
  %i.eh = and i64 %i.eg, 67108864
  %i.ei = or disjoint i64 %i.ef, %i.eh
  %i.ej = shl i64 %i.dt, 14
  %i.ek = and i64 %i.ej, 134217728
  %i.el = or disjoint i64 %i.ei, %i.ek
  %i.em = shl i64 %i.dt, 27
  %i.en = and i64 %i.em, 268435456
  %i.eo = or disjoint i64 %i.el, %i.en
  %i.ep = shl i64 %i.dt, 17
  %i.eq = and i64 %i.ep, 1610612736
  %i.er = shl i64 %i.dt, 4                        ; 2 uses
  %i.es = and i64 %i.er, 8589934592
  %i.et = and i64 %i.dt, 128
  %.not17.i = icmp eq i64 %i.et, 0
  %i.eu = and i64 %i.er, 17179869184
  %i.ev = xor i64 %i.eu, 112201725640704
  %i.ew = select i1 %.not17.i, i64 112184545771520, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = shl i64 %i.ey, 7
  %i.fa = and i64 %i.ez, 140737488355328
  %.masked.masked.masked = or i64 %i.eo, %i.eq
  %.masked117.masked = or i64 %.masked.masked.masked, %i.es
  %.masked = or i64 %.masked117.masked, %i.dy
  %i.fb = or i64 %.masked, %i.ew
  %i.fc = or i64 %i.fb, %i.fa
  %i.fd = xor i64 %i.fc, 1610612736
  store i64 %i.fd, ptr %3, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.fe, align 8, !tbaa !314
  store ptr @.str.11, ptr %4, align 8, !tbaa !316
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.ff, align 8, !tbaa !317
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.fg = load ptr, ptr %i.di, align 8, !tbaa !307
  %i.fh = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.14, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit63

bb.s:                                             ; preds = %bb.q
  store i8 41, ptr %i.fh, align 1
  %i.fk = load ptr, ptr %i.dk, align 8, !tbaa !308
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store ptr %i.fl, ptr %i.dk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit63

_ZN4llvm11raw_ostreamlsEPKc.exit63:               ; preds = %bb.r, %bb.s
  %.0.copyload.i.i.i.i.i.i64 = load i64, ptr %2, align 8
  %i.fm = and i64 %.0.copyload.i.i.i.i.i.i64, 6
  %i.fn = icmp eq i64 %i.fm, 0                    ; 2 uses
  %i.fo = load i16, ptr %i.c, align 4             ; 2 uses
  %i.fp = and i16 %i.fo, 1
  %.not.i65 = icmp eq i16 %i.fp, 0
  %i.fq = select i1 %i.fn, i1 %.not.i65, i1 false
  br i1 %i.fq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit63
  %i.fr = load ptr, ptr %i.di, align 8, !tbaa !307
  %i.fs = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp ult i64 %i.fv, 19
  br i1 %i.fw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.40, i64 noundef 19) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.fs, ptr noundef nonnull align 1 dereferenceable(19) @.str.40, i64 19, i1 false)
  %i.fy = load ptr, ptr %i.dk, align 8, !tbaa !308
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 19
  store ptr %i.fz, ptr %i.dk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit63
  %i.ga = trunc i16 %i.fo to i1
  %i.gb = select i1 %i.fn, i1 %i.ga, i1 false
  %i.gc = load ptr, ptr %i.di, align 8, !tbaa !307
  %i.gd = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 3 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  br i1 %i.gb, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gh = icmp ult i64 %i.gg, 25
  br i1 %i.gh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.41, i64 noundef 25) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.gd, ptr noundef nonnull align 1 dereferenceable(25) @.str.41, i64 25, i1 false)
  %i.gj = load ptr, ptr %i.dk, align 8, !tbaa !308
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 25
  store ptr %i.gk, ptr %i.dk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.aa:                                            ; preds = %bb.w
  %i.gl = icmp ult i64 %i.gg, 21
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.42, i64 noundef 21) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.gd, ptr noundef nonnull align 1 dereferenceable(21) @.str.42, i64 21, i1 false)
  %i.gn = load ptr, ptr %i.dk, align 8, !tbaa !308
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 21
  store ptr %i.go, ptr %i.dk, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.v, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117StmtPrinterHelper10handleDeclEPKN5clang4DeclERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285, !noalias !1883 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !533, !noalias !1883 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !284, !noalias !1883 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !178, !noalias !1884
  %i.s = and i32 %i.n, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !235

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %.017.i.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !298, !noalias !1884
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit.loopexit, label %bb.c, !prof !52

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nuw i32 %.017.i.i.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !178, !noalias !1884
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !237

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = zext i32 %i.f to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ai
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.f to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit.loopexit ], [ %i.ai, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.w, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.pre-phi
  %i.al = icmp eq ptr %.lcssa.sink.i.i, %i.ak
  br i1 %i.al, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclESt4pairIjjENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 127
  %i.ap = icmp eq i32 %i.ao, 44
  br i1 %i.ap, label %_ZN4llvm16dyn_cast_or_nullIN5clang11ParmVarDeclEKNS1_4DeclEEEDaPT0_.exit, label %_ZN4llvm11raw_ostreamlsEPKc.exit22

_ZN4llvm16dyn_cast_or_nullIN5clang11ParmVarDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !307
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !308 ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ult i64 %i.aw, 7
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang11ParmVarDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.ay = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.43, i64 noundef 7) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang11ParmVarDeclEKNS1_4DeclEEEDaPT0_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.at, ptr noundef nonnull align 1 dereferenceable(7) @.str.43, i64 7, i1 false)
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !308
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 7
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !308
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

end_hunk_5
