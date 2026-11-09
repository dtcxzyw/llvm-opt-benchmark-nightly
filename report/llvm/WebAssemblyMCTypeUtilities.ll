Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyMCTypeUtilities?download=true
inline.NumInlined: 176
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm11WebAssembly9parseTypeENS_9StringRefE:bb.a

_ZN4llvmneENS_9StringRefES0_.exit.i.i37.5:        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.4
  %i.bx = load i32, ptr %0, align 1
  %i.by = xor i32 %i.bx, 2016555878
  %i.bz = getelementptr i8, ptr %0, i64 4
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = xor i32 %i.cb, 52
  %i.cd = or i32 %i.by, %i.cc
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not.i.i39.5 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i39.5, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.6

_ZN4llvmneENS_9StringRefES0_.exit.i.i37.6:        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.5
  %i.cg = load i32, ptr %0, align 1
  %i.ch = xor i32 %i.cg, 2016687718
  %i.ci = getelementptr i8, ptr %0, i64 4
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = xor i32 %i.ck, 50
  %i.cm = or i32 %i.ch, %i.cl
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %.not.i.i39.6 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i39.6, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E5CasesESt16initializer_listINS_13StringLiteralEES4_.exit.thread

_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E5CasesESt16initializer_listINS_13StringLiteralEES4_.exit.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i46, %_ZN4llvmneENS_9StringRefES0_.exit.i.i56, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.6, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37, %_ZN4llvmneENS_9StringRefES0_.exit.i.i28
  br label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70

_ZN4llvmneENS_9StringRefES0_.exit.i.i46:          ; preds = %bb.a
  %i.cp = load i32, ptr %0, align 1
  %i.cq = xor i32 %i.cp, 1668183398
  %i.cr = getelementptr i8, ptr %0, i64 3
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = xor i32 %i.cs, 1717924451
  %i.cu = or i32 %i.cq, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not.i.i48 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i48, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E5CasesESt16initializer_listINS_13StringLiteralEES4_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i56:          ; preds = %bb.a
  %i.cx = load i64, ptr %0, align 1
  %i.cy = xor i64 %i.cx, 7310026582783195237
  %i.cz = getelementptr i8, ptr %0, i64 8
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = xor i64 %i.db, 102
  %i.dd = or i64 %i.cy, %i.dc
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %.not.i.i58 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i58, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70, label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E5CasesESt16initializer_listINS_13StringLiteralEES4_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.a
  %i.dg = load i32, ptr %0, align 1
  %i.dh = xor i32 %i.dg, 1919842405
  %i.di = getelementptr i8, ptr %0, i64 4
  %i.dj = load i16, ptr %i.di, align 1
  %i.dk = zext i16 %i.dj to i32
  %i.dl = xor i32 %i.dk, 26213
  %i.dm = or i32 %i.dh, %i.dl
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %.not.i.i68 = icmp eq i32 %i.do, 0
  %i.dp = select i1 %.not.i.i68, i64 4294967401, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70

_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E4CaseENS_13StringLiteralES4_.exit70: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.5, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.6, %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E5CasesESt16initializer_listINS_13StringLiteralEES4_.exit.thread, %_ZN4llvmneENS_9StringRefES0_.exit.i.i28, %_ZN4llvmneENS_9StringRefES0_.exit.i.i19, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i56, %_ZN4llvmneENS_9StringRefES0_.exit.i.i46
  %.sroa.29.7 = phi i64 [ 0, %bb.a ], [ 4294967407, %_ZN4llvmneENS_9StringRefES0_.exit.i.i56 ], [ %i.dp, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37 ], [ 4294967408, %_ZN4llvmneENS_9StringRefES0_.exit.i.i46 ], [ 0, %_ZN4llvm12StringSwitchISt8optionalINS_4wasm7ValTypeEES4_E5CasesESt16initializer_listINS_13StringLiteralEES4_.exit.thread ], [ 4294967421, %_ZN4llvmneENS_9StringRefES0_.exit.i.i19 ], [ 4294967422, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ 4294967423, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 4294967420, %_ZN4llvmneENS_9StringRefES0_.exit.i.i28 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.6 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.5 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.4 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.3 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.2 ], [ 4294967419, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37.1 ]
  ret i64 %.sroa.29.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN4llvm11WebAssembly14parseBlockTypeENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66 [
    i64 3, label %bb.b
    i64 4, label %bb.f
    i64 7, label %bb.g
    i64 9, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 13161
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 50
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %0, align 1
  %i.k = xor i16 %i.j, 13929
  %i.l = getelementptr i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 52
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not.i.i8 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i8, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i16, ptr %0, align 1
  %i.t = xor i16 %i.s, 13158
  %i.u = getelementptr i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i16
  %i.x = xor i16 %i.w, 50
  %i.y = or i16 %i.t, %i.x
  %i.z = icmp ne i16 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i.i16 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i16, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i16, ptr %0, align 1
  %i.ac = xor i16 %i.ab, 13926
  %i.ad = getelementptr i8, ptr %0, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i16
  %i.ag = xor i16 %i.af, 52
  %i.ah = or i16 %i.ac, %i.ag
  %i.ai = icmp ne i16 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.i24 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i24, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread

bb.f:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %0, align 1
  %i.al = icmp ne i32 %i.ak, 942813558
  %i.am = zext i1 %i.al to i32
  %.not.i.i32 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread238

bb.g:                                             ; preds = %bb.a
  %i.an = load i32, ptr %0, align 1
  %i.ao = xor i32 %i.an, 1668183398
  %i.ap = getelementptr i8, ptr %0, i64 3
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1717924451
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not.i.i40 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i40, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread

bb.h:                                             ; preds = %bb.a
  %i.av = load i64, ptr %0, align 1
  %i.aw = xor i64 %i.av, 7310026582783195237
  %i.ax = getelementptr i8, ptr %0, i64 8
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %i.ba = xor i64 %i.az, 102
  %i.bb = or i64 %i.aw, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not.i.i48 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i48, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66, label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread

bb.i:                                             ; preds = %bb.a
  %i.be = load i32, ptr %0, align 1
  %i.bf = xor i32 %i.be, 1919842405
  %i.bg = getelementptr i8, ptr %0, i64 4
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %i.bh to i32
  %i.bj = xor i32 %i.bi, 26213
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %.not.i.i56 = icmp eq i32 %i.bm, 0
  %spec.select = select i1 %.not.i.i56, i64 4294967401, i64 0
  br label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66

_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread: ; preds = %bb.e, %bb.g, %bb.h
  br label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66

_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread238: ; preds = %bb.f
  %i.bn = load i32, ptr %0, align 1
  %i.bo = icmp ne i32 %i.bn, 1684631414
  %i.bp = zext i1 %i.bo to i32
  %.not.i.i64 = icmp eq i32 %i.bp, 0
  %spec.select254 = select i1 %.not.i.i64, i64 4294967360, i64 0
  br label %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66

_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit66: ; preds = %bb.b, %bb.c, %bb.a, %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread238, %bb.i, %bb.d, %bb.e, %bb.g, %bb.f, %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread, %bb.h
  %.sroa.22.8 = phi i64 [ 0, %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread ], [ 4294967419, %bb.f ], [ 4294967408, %bb.g ], [ %spec.select254, %_ZN4llvm12StringSwitchINS_11WebAssembly9BlockTypeES2_E4CaseENS_13StringLiteralES2_.exit58.thread221.thread238 ], [ %spec.select, %bb.i ], [ 4294967421, %bb.d ], [ 4294967407, %bb.h ], [ 4294967420, %bb.e ], [ 0, %bb.a ], [ 4294967422, %bb.c ], [ 4294967423, %bb.b ]
  %spec.select.i256 = tail call i64 @llvm.umax.i64(i64 %.sroa.22.8, i64 4294967296)
  %spec.select.i = trunc i64 %spec.select.i256 to i32
  ret i32 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm11WebAssembly15anyTypeToStringEj(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %0, -64              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 64
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm11WebAssembly15anyTypeToStringEj, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.16, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm11WebAssembly12typeToStringENS_4wasm7ValTypeE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4llvm11WebAssembly15anyTypeToStringEj(i32 noundef %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11WebAssembly16typeListToStringB5cxx11ENS_8ArrayRefINS_4wasm7ValTypeEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %.idx = shl nuw nsw i64 %2, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader._crit_edge

.lr.ph.preheader._crit_edge:                      ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4, !tbaa !18
  %i.d = tail call noundef nonnull ptr @_ZN4llvm11WebAssembly15anyTypeToStringEj(i32 noundef %.pre) ; 2 uses
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #9 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 4611686018427387903
  br i1 %i.f, label %.loopexit16, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10.peel: ; preds = %.lr.ph.preheader._crit_edge
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.d, i64 noundef %i.e) #9 ; 0 uses
  %.not.peel = icmp eq i64 %2, 1
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10.peel
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10, %.lr.ph.peel.next
  %.014 = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10 ], [ %i.h, %.lr.ph.peel.next ] ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !14
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, 4611686018427387902
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.17, i64 noundef 2) #9 ; 0 uses
  %i.m = load i32, ptr %.014, align 4, !tbaa !18
  %i.n = tail call noundef nonnull ptr @_ZN4llvm11WebAssembly15anyTypeToStringEj(i32 noundef %i.m) ; 2 uses
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #9 ; 2 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !14
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.o
  br i1 %i.r, label %.loopexit16, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10

.loopexit16:                                      ; preds = %bb.c, %.lr.ph.preheader._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10: ; preds = %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i64 noundef %i.o) #9 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit10.peel, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11WebAssembly17signatureToStringB5cxx11EPKNS_4wasm13WasmSignatureE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  store i8 40, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %i.h = zext i32 %i.g to i64
  call void @_ZN4llvm11WebAssembly16typeListToStringB5cxx11ENS_8ArrayRefINS_4wasm7ValTypeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr %i.e, i64 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !14
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %._crit_edge.i.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !23
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.n, i64 noundef %i.j) #9 ; 0 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.u = load i64, ptr %i.b, align 8, !tbaa !14
  %i.v = add i64 %i.u, -4611686018427387898
  %i.w = icmp ult i64 %i.v, 6
  br i1 %i.w, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, i64 noundef 6) #9 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.y = load ptr, ptr %1, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !22
  %i.ab = zext i32 %i.aa to i64
  call void @_ZN4llvm11WebAssembly16typeListToStringB5cxx11ENS_8ArrayRefINS_4wasm7ValTypeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.y, i64 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !14
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit3

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ah = load ptr, ptr %3, align 8, !tbaa !23
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ah, i64 noundef %i.ad) #9 ; 0 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit3
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ap = icmp eq i64 %i.ao, 4611686018427387903
  br i1 %i.ap, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit7

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20, i64 noundef 1) #9 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 105, 128) i32 @_ZN4llvm11WebAssembly17regClassToValTypeEj(i32 noundef %0) local_unnamed_addr #2 {
end_hunk_0
