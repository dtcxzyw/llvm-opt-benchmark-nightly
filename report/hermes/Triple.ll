Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Triple?download=true
inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvh6TripleC2ERKNS_5TwineE:bb.a
  %.sroa.07.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !159
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !160
  %i.w = call fastcc noundef i32 @_ZL11parseVendorN4llvh9StringRefE(ptr %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload)
  store i32 %i.w, ptr %i.b, align 8, !tbaa !170
  %.not193 = icmp eq i32 %i.s, 2
  br i1 %.not193, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.05.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !159
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !160
  %i.y = call fastcc noundef i32 @_ZL7parseOSN4llvh9StringRefE(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload)
  store i32 %i.y, ptr %i.c, align 4, !tbaa !171
  %i.z = icmp ugt i32 %i.s, 3
  br i1 %i.z, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.03.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !160 ; 2 uses
  %i.ab = call fastcc noundef i32 @_ZL16parseEnvironmentN4llvh9StringRefE(ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !172
  %i.ac = call fastcc noundef i32 @_ZL11parseFormatN4llvh9StringRefE(ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) ; 2 uses
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !173
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !159 ; 16 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !160 ; 4 uses
  %.not.i = icmp ult i64 %.sroa.2.0.copyload, 7
  br i1 %.not.i, label %bb.g, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.f
  %i.ad = load i32, ptr %.sroa.0.0.copyload, align 1
  %i.ae = xor i32 %i.ad, 1936746861
  %i.af = getelementptr i8, ptr %.sroa.0.0.copyload, i64 3
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = xor i32 %i.ag, 842231411
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit19

bb.g:                                             ; preds = %bb.f
  switch i64 %.sroa.2.0.copyload, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread [
    i64 6, label %_ZNK4llvh9StringRef10startswithES0_.exit19.thread110
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i
  ]

_ZNK4llvh9StringRef10startswithES0_.exit19:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.am = load i32, ptr %.sroa.0.0.copyload, align 1
  %i.an = xor i32 %i.am, 1936746861
  %i.ao = getelementptr i8, ptr %.sroa.0.0.copyload, i64 4
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = xor i32 %i.aq, 13366
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit15

_ZNK4llvh9StringRef10startswithES0_.exit19.thread110: ; preds = %bb.g
  %i.aw = load i32, ptr %.sroa.0.0.copyload, align 1
  %i.ax = xor i32 %i.aw, 1936746861
  %i.ay = getelementptr i8, ptr %.sroa.0.0.copyload, i64 4
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i32
  %i.bb = xor i32 %i.ba, 13366
  %i.bc = or i32 %i.ax, %i.bb
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i

_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit15: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit19
  %.not.i20 = icmp ult i64 %.sroa.2.0.copyload, 9
  br i1 %.not.i20, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E4CaseENS_13StringLiteralES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit21

_ZNK4llvh9StringRef10startswithES0_.exit21:       ; preds = %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit15
  %i.bg = load i64, ptr %.sroa.0.0.copyload, align 1
  %i.bh = xor i64 %i.bg, 3918540047534549357
  %i.bi = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bk, 52
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit23

_ZNK4llvh9StringRef10startswithES0_.exit23:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit21
  %i.bq = load i64, ptr %.sroa.0.0.copyload, align 1
  %i.br = xor i64 %i.bq, 3702367265420765549
  %i.bs = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = xor i64 %i.bu, 50
  %i.bw = or i64 %i.br, %i.bv
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.g
  %i.ca = load i32, ptr %.sroa.0.0.copyload, align 1
  %i.cb = icmp ne i32 %i.ca, 1936746861
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread

_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E4CaseENS_13StringLiteralES2_.exit: ; preds = %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit15
  %cond = icmp eq i64 %.sroa.2.0.copyload, 8
  br i1 %cond, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit19.thread110
  %i.ce = load i32, ptr %.sroa.0.0.copyload, align 1
  %i.cf = xor i32 %i.ce, 1936746861
  %i.cg = getelementptr i8, ptr %.sroa.0.0.copyload, i64 4
  %i.ch = load i16, ptr %i.cg, align 1
  %i.ci = zext i16 %i.ch to i32
  %i.cj = xor i32 %i.ci, 27749
  %i.ck = or i32 %i.cf, %i.cj
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i11.i

_ZNK4llvh9StringRef6equalsES0_.exit.i11.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i
  %i.co = load i32, ptr %.sroa.0.0.copyload, align 1
  %i.cp = xor i32 %i.co, 1936746861
  %i.cq = getelementptr i8, ptr %.sroa.0.0.copyload, i64 4
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i32
  %i.ct = xor i32 %i.cs, 13938
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread: ; preds = %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E4CaseENS_13StringLiteralES2_.exit, %bb.g, %_ZNK4llvh9StringRef6equalsES0_.exit.i11.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit23
  br label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.i.i37:        ; preds = %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E4CaseENS_13StringLiteralES2_.exit
  %i.cy = load i64, ptr %.sroa.0.0.copyload, align 1
  %i.cz = icmp ne i64 %i.cy, 7810708993934911853
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  %spec.select = zext i1 %i.db to i32
  br label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37, %_ZNK4llvh9StringRef6equalsES0_.exit.i11.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit23, %_ZNK4llvh9StringRef10startswithES0_.exit21, %_ZNK4llvh9StringRef10startswithES0_.exit19, %_ZNK4llvh9StringRef10startswithES0_.exit19.thread110, %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread
  %.0.i = phi i32 [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i37.thread ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.i11.i ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.i ], [ 1, %_ZNK4llvh9StringRef10startswithES0_.exit23 ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit21 ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit19 ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit19.thread110 ]
  store i32 %.0.i, ptr %i.d, align 8, !tbaa !172
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.c, %bb.d, %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit
  %.pr = load i32, ptr %i.e, align 4, !tbaa !173
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.e
  %i.dc = phi i32 [ %.pr, %thread-pre-split ], [ %i.ac, %bb.e ]
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val = load i32, ptr %i.a, align 8, !tbaa !168
  %.val40 = load i32, ptr %i.c, align 4
  %i.de = call fastcc noundef i32 @_ZL16getDefaultFormatRKN4llvh6TripleE(i32 %.val, i32 %.val40)
  store i32 %i.de, ptr %i.e, align 4, !tbaa !173
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.df = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.f
  br i1 %i.dg, label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.df) #13
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #5

declare void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 51) i32 @_ZL9parseArchN4llvh9StringRefE(ptr %0, i64 %1) unnamed_addr #4 !guid !191 {
bb.a:
  switch i64 %1, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30 [
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i209
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.i248
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i268
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.i273
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i278
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit.i232
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i338
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit203
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit201
    i64 14, label %_ZNK4llvh9StringRef6equalsES0_.exit.i224
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371
    i64 13, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i298
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i209:         ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 909652841
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i217

_ZNK4llvh9StringRef6equalsES0_.exit.i217:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i209
  %i.e = load i32, ptr %0, align 1
  %i.f = icmp ne i32 %i.e, 909653097
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i308

_ZNK4llvh9StringRef6equalsES0_.exit12.i308:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i217
  %i.i = load i32, ptr %0, align 1
  %i.j = icmp ne i32 %i.i, 909653353
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i313

_ZNK4llvh9StringRef6equalsES0_.exit.i313:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i308
  %i.m = load i32, ptr %0, align 1
  %i.n = icmp ne i32 %i.m, 909653609
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i256

_ZNK4llvh9StringRef6equalsES0_.exit.i256:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i313
  %i.q = load i32, ptr %0, align 1
  %i.r = icmp ne i32 %i.q, 909653865
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i

_ZNK4llvh9StringRef6equalsES0_.exit12.i:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i256
  %i.u = load i32, ptr %0, align 1
  %i.v = icmp ne i32 %i.u, 909654121
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i264

_ZNK4llvh9StringRef6equalsES0_.exit.i264:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i
  %i.y = load i32, ptr %0, align 1
  %i.z = icmp ne i32 %i.y, 909654377
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i355

_ZNK4llvh9StringRef6equalsES0_.exit.i248:         ; preds = %bb.a
  %i.ac = load i32, ptr %0, align 1
  %i.ad = xor i32 %i.ac, 912551265
  %i.ae = getelementptr i8, ptr %0, i64 4
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = xor i32 %i.ag, 52
  %i.ai = or i32 %i.ad, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i283

_ZNK4llvh9StringRef6equalsES0_.exit12.i268:       ; preds = %bb.a
  %i.am = load i32, ptr %0, align 1
  %i.an = xor i32 %i.am, 1597388920
  %i.ao = getelementptr i8, ptr %0, i64 4
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = xor i32 %i.aq, 13366
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit204

_ZNK4llvh9StringRef6equalsES0_.exit.i273:         ; preds = %bb.a
  %i.aw = load i32, ptr %0, align 1
  %i.ax = xor i32 %i.aw, 1597388920
  %i.ay = getelementptr i8, ptr %0, i64 3
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = xor i32 %i.az, 1748252255
  %i.bb = or i32 %i.ax, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i240

_ZNK4llvh9StringRef6equalsES0_.exit.i240:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i273
  %i.bf = load i32, ptr %0, align 1
  %i.bg = xor i32 %i.bf, 1702326128
  %i.bh = getelementptr i8, ptr %0, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1668313701
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i343

_ZNK4llvh9StringRef6equalsES0_.exit12.i278:       ; preds = %bb.a
  %i.bo = load i16, ptr %0, align 1
  %i.bp = xor i16 %i.bo, 28784
  %i.bq = getelementptr i8, ptr %0, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i16
  %i.bt = xor i16 %i.bs, 99
  %i.bu = or i16 %i.bp, %i.bt
  %i.bv = icmp ne i16 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i288

_ZNK4llvh9StringRef6equalsES0_.exit.i283:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i248
  %i.by = load i32, ptr %0, align 1
  %i.bz = xor i32 %i.by, 862154864
  %i.ca = getelementptr i8, ptr %0, i64 4
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = xor i32 %i.cc, 50
  %i.ce = or i32 %i.bz, %i.cd
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i293

_ZNK4llvh9StringRef6equalsES0_.exit.i232:         ; preds = %bb.a
  %i.ci = load i64, ptr %0, align 1
  %i.cj = xor i64 %i.ci, 3919099737373372272
  %i.ck = getelementptr i8, ptr %0, i64 8
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i64
  %i.cn = xor i64 %i.cm, 52
  %i.co = or i64 %i.cj, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i.i

_ZNK4llvh9StringRef6equalsES0_.exit12.i288:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i278
  %i.cs = load i16, ptr %0, align 1
  %i.ct = xor i16 %i.cs, 28784
  %i.cu = getelementptr i8, ptr %0, i64 2
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i16
  %i.cx = xor i16 %i.cw, 117
  %i.cy = or i16 %i.ct, %i.cx
  %i.cz = icmp ne i16 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit200

_ZNK4llvh9StringRef6equalsES0_.exit.i293:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i283
  %i.dc = load i32, ptr %0, align 1
  %i.dd = xor i32 %i.dc, 912486512
  %i.de = getelementptr i8, ptr %0, i64 4
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = xor i32 %i.dg, 52
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit199

_ZNK4llvh9StringRef6equalsES0_.exit12.i338:       ; preds = %bb.a
  %i.dm = load i64, ptr %0, align 1
  %i.dn = xor i64 %i.dm, 3919099737373372272
  %i.do = getelementptr i8, ptr %0, i64 3
  %i.dp = load i64, ptr %i.do, align 1
  %i.dq = xor i64 %i.dp, 7308273703516664421
  %i.dr = or i64 %i.dn, %i.dq
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i379

_ZNK4llvh9StringRef6equalsES0_.exit.i343:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i240
  %i.dv = load i32, ptr %0, align 1
  %i.dw = xor i32 %i.dv, 912486512
  %i.dx = getelementptr i8, ptr %0, i64 3
  %i.dy = load i32, ptr %i.dx, align 1
  %i.dz = xor i32 %i.dy, 1701590070
  %i.ea = or i32 %i.dw, %i.dz
  %i.eb = icmp ne i32 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
end_hunk_0
begin_hunk_1_@_ZL9parseArchN4llvh9StringRefE:bb.a
_ZNK4llvh9StringRef6equalsES0_.exit.i348:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i.i
  %i.nd = load i64, ptr %0, align 1
  %i.ne = icmp ne i64 %i.nd, 7810706537213618541
  %i.nf = zext i1 %i.ne to i32
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i.i
  %i.nh = load i64, ptr %0, align 1
  %i.ni = xor i64 %i.nh, 7291947296142420333
  %i.nj = getelementptr i8, ptr %0, i64 8
  %i.nk = load i8, ptr %i.nj, align 1
  %i.nl = zext i8 %i.nk to i64
  %i.nm = xor i64 %i.nl, 108
  %i.nn = or i64 %i.ni, %i.nm
  %i.no = icmp ne i64 %i.nn, 0
  %i.np = zext i1 %i.no to i32
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.i13.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i298
  %i.nr = load i64, ptr %0, align 1
  %i.ns = xor i64 %i.nr, 3918540047534549357
  %i.nt = getelementptr i8, ptr %0, i64 5
  %i.nu = load i64, ptr %i.nt, align 1
  %i.nv = xor i64 %i.nu, 7810708992874144115
  %i.nw = or i64 %i.ns, %i.nv
  %i.nx = icmp ne i64 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit12.i.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit201
  %i.oa = load i64, ptr %0, align 1
  %i.ob = xor i64 %i.oa, 3923255633862748525
  %i.oc = getelementptr i8, ptr %0, i64 8
  %i.od = load i16, ptr %i.oc, align 1
  %i.oe = zext i16 %i.od to i64
  %i.of = xor i64 %i.oe, 27749
  %i.og = or i64 %i.ob, %i.of
  %i.oh = icmp ne i64 %i.og, 0
  %i.oi = zext i1 %i.oh to i32
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.i20.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i.i
  %i.ok = load i64, ptr %0, align 1
  %i.ol = xor i64 %i.ok, 8228696018635483501
  %i.om = getelementptr i8, ptr %0, i64 3
  %i.on = load i64, ptr %i.om, align 1
  %i.oo = xor i64 %i.on, 7810708992840396403
  %i.op = or i64 %i.ol, %i.oo
  %i.oq = icmp ne i64 %i.op, 0
  %i.or = zext i1 %i.oq to i32
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit192:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit196
  %i.ot = load i32, ptr %0, align 1
  %i.ou = xor i32 %i.ot, 1936681326
  %i.ov = getelementptr i8, ptr %0, i64 4
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i32
  %i.oy = xor i32 %i.ox, 50
  %i.oz = or i32 %i.ou, %i.oy
  %i.pa = icmp ne i32 %i.oz, 0
  %i.pb = zext i1 %i.pa to i32
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i328

_ZNK4llvh9StringRef6equalsES0_.exit191:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i355
  %i.pd = load i32, ptr %0, align 1
  %i.pe = icmp ne i32 %i.pd, 808466034
  %i.pf = zext i1 %i.pe to i32
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit179

_ZNK4llvh9StringRef6equalsES0_.exit190:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i389
  %i.ph = load i32, ptr %0, align 1
  %i.pi = xor i32 %i.ph, 1734634849
  %i.pj = getelementptr i8, ptr %0, i64 4
  %i.pk = load i16, ptr %i.pj, align 1
  %i.pl = zext i16 %i.pk to i32
  %i.pm = xor i32 %i.pl, 28259
  %i.pn = or i32 %i.pi, %i.pm
  %i.po = icmp ne i32 %i.pn, 0
  %i.pp = zext i1 %i.po to i32
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit172

_ZNK4llvh9StringRef6equalsES0_.exit189:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i
  %i.pr = load i32, ptr %0, align 1
  %i.ps = xor i32 %i.pr, 1668508018
  %i.pt = getelementptr i8, ptr %0, i64 3
  %i.pu = load i32, ptr %i.pt, align 1
  %i.pv = xor i32 %i.pu, 842233443
  %i.pw = or i32 %i.ps, %i.pv
  %i.px = icmp ne i32 %i.pw, 0
  %i.py = zext i1 %i.px to i32
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit188

_ZNK4llvh9StringRef6equalsES0_.exit188:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit189
  %i.qa = load i32, ptr %0, align 1
  %i.qb = xor i32 %i.qa, 1668508018
  %i.qc = getelementptr i8, ptr %0, i64 3
  %i.qd = load i32, ptr %i.qc, align 1
  %i.qe = xor i32 %i.qd, 875984483
  %i.qf = or i32 %i.qb, %i.qe
  %i.qg = icmp ne i32 %i.qf, 0
  %i.qh = zext i1 %i.qg to i32
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit187

_ZNK4llvh9StringRef6equalsES0_.exit187:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit188
  %i.qj = load i32, ptr %0, align 1
  %i.qk = xor i32 %i.qj, 1635280232
  %i.ql = getelementptr i8, ptr %0, i64 3
  %i.qm = load i32, ptr %i.ql, align 1
  %i.qn = xor i32 %i.qm, 1852794721
  %i.qo = or i32 %i.qk, %i.qn
  %i.qp = icmp ne i32 %i.qo, 0
  %i.qq = zext i1 %i.qp to i32
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i333

_ZNK4llvh9StringRef6equalsES0_.exit12.i328:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit192
  %i.qs = load i32, ptr %0, align 1
  %i.qt = xor i32 %i.qs, 809055091
  %i.qu = getelementptr i8, ptr %0, i64 4
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = zext i8 %i.qv to i32
  %i.qx = xor i32 %i.qw, 120
  %i.qy = or i32 %i.qt, %i.qx
  %i.qz = icmp ne i32 %i.qy, 0
  %i.ra = zext i1 %i.qz to i32
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit186

_ZNK4llvh9StringRef6equalsES0_.exit.i333:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit187
  %i.rc = load i32, ptr %0, align 1
  %i.rd = xor i32 %i.rc, 1953724787
  %i.re = getelementptr i8, ptr %0, i64 3
  %i.rf = load i32, ptr %i.re, align 1
  %i.rg = xor i32 %i.rf, 2053989748
  %i.rh = or i32 %i.rd, %i.rg
  %i.ri = icmp ne i32 %i.rh, 0
  %i.rj = zext i1 %i.ri to i32
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit185

_ZNK4llvh9StringRef6equalsES0_.exit186:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i328
  %i.rl = load i32, ptr %0, align 1
  %i.rm = xor i32 %i.rl, 1918988403
  %i.rn = getelementptr i8, ptr %0, i64 4
  %i.ro = load i8, ptr %i.rn, align 1
  %i.rp = zext i8 %i.ro to i32
  %i.rq = xor i32 %i.rp, 99
  %i.rr = or i32 %i.rm, %i.rq
  %i.rs = icmp ne i32 %i.rr, 0
  %i.rt = zext i1 %i.rs to i32
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit183

_ZNK4llvh9StringRef6equalsES0_.exit185:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i333
  %i.rv = load i32, ptr %0, align 1
  %i.rw = xor i32 %i.rv, 1918988403
  %i.rx = getelementptr i8, ptr %0, i64 3
  %i.ry = load i32, ptr %i.rx, align 1
  %i.rz = xor i32 %i.ry, 1818583922
  %i.sa = or i32 %i.rw, %i.rz
  %i.sb = icmp ne i32 %i.sa, 0
  %i.sc = zext i1 %i.sb to i32
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit12.i318

_ZNK4llvh9StringRef6equalsES0_.exit12.i318:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit185
  %i.se = load i32, ptr %0, align 1
  %i.sf = xor i32 %i.se, 1918988403
  %i.sg = getelementptr i8, ptr %0, i64 3
  %i.sh = load i32, ptr %i.sg, align 1
  %i.si = xor i32 %i.sh, 964060018
  %i.sj = or i32 %i.sf, %i.si
  %i.sk = icmp ne i32 %i.sj, 0
  %i.sl = zext i1 %i.sk to i32
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i323

_ZNK4llvh9StringRef6equalsES0_.exit.i323:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i318
  %i.sn = load i32, ptr %0, align 1
  %i.so = xor i32 %i.sn, 1918988403
  %i.sp = getelementptr i8, ptr %0, i64 3
  %i.sq = load i32, ptr %i.sp, align 1
  %i.sr = xor i32 %i.sq, 875979634
  %i.ss = or i32 %i.so, %i.sr
  %i.st = icmp ne i32 %i.ss, 0
  %i.su = zext i1 %i.st to i32
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit180

_ZNK4llvh9StringRef6equalsES0_.exit184:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit194
  %i.sw = load i16, ptr %0, align 1
  %i.sx = xor i16 %i.sw, 25460
  %i.sy = getelementptr i8, ptr %0, i64 2
  %i.sz = load i8, ptr %i.sy, align 1
  %i.ta = zext i8 %i.sz to i16
  %i.tb = xor i16 %i.ta, 101
  %i.tc = or i16 %i.sx, %i.tb
  %i.td = icmp ne i16 %i.tc, 0
  %i.te = zext i1 %i.td to i32
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit183:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit186
  %i.tg = load i32, ptr %0, align 1
  %i.th = xor i32 %i.tg, 1818583924
  %i.ti = getelementptr i8, ptr %0, i64 4
  %i.tj = load i8, ptr %i.ti, align 1
  %i.tk = zext i8 %i.tj to i32
  %i.tl = xor i32 %i.tk, 101
  %i.tm = or i32 %i.th, %i.tl
  %i.tn = icmp ne i32 %i.tm, 0
  %i.to = zext i1 %i.tn to i32
  %i.tp = icmp eq i32 %i.to, 0
  br i1 %i.tp, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit182

_ZNK4llvh9StringRef6equalsES0_.exit182:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit183
  %i.tq = load i32, ptr %0, align 1
  %i.tr = xor i32 %i.tq, 1919902584
  %i.ts = getelementptr i8, ptr %0, i64 4
  %i.tt = load i8, ptr %i.ts, align 1
  %i.tu = zext i8 %i.tt to i32
  %i.tv = xor i32 %i.tu, 101
  %i.tw = or i32 %i.tr, %i.tv
  %i.tx = icmp ne i32 %i.tw, 0
  %i.ty = zext i1 %i.tx to i32
  %i.tz = icmp eq i32 %i.ty, 0
  br i1 %i.tz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit181

_ZNK4llvh9StringRef6equalsES0_.exit181:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit182
  %i.ua = load i32, ptr %0, align 1
  %i.ub = xor i32 %i.ua, 1953527406
  %i.uc = getelementptr i8, ptr %0, i64 4
  %i.ud = load i8, ptr %i.uc, align 1
  %i.ue = zext i8 %i.ud to i32
  %i.uf = xor i32 %i.ue, 120
  %i.ug = or i32 %i.ub, %i.uf
  %i.uh = icmp ne i32 %i.ug, 0
  %i.ui = zext i1 %i.uh to i32
  %i.uj = icmp eq i32 %i.ui, 0
  br i1 %i.uj, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit177

_ZNK4llvh9StringRef6equalsES0_.exit180:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i323
  %i.uk = load i32, ptr %0, align 1
  %i.ul = xor i32 %i.uk, 1953527406
  %i.um = getelementptr i8, ptr %0, i64 3
  %i.un = load i32, ptr %i.um, align 1
  %i.uo = xor i32 %i.un, 875985012
  %i.up = or i32 %i.ul, %i.uo
  %i.uq = icmp ne i32 %i.up, 0
  %i.ur = zext i1 %i.uq to i32
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit176

_ZNK4llvh9StringRef6equalsES0_.exit179:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit191
  %i.ut = load i32, ptr %0, align 1
  %i.uu = icmp ne i32 %i.ut, 842229100
  %i.uv = zext i1 %i.uu to i32
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit178

_ZNK4llvh9StringRef6equalsES0_.exit178:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit179
  %i.ux = load i32, ptr %0, align 1
  %i.uy = icmp ne i32 %i.ux, 875980140
  %i.uz = zext i1 %i.uy to i32
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit173

_ZNK4llvh9StringRef6equalsES0_.exit177:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit181
  %i.vb = load i32, ptr %0, align 1
  %i.vc = xor i32 %i.vb, 1768189281
  %i.vd = getelementptr i8, ptr %0, i64 4
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = zext i8 %i.ve to i32
  %i.vg = xor i32 %i.vf, 108
  %i.vh = or i32 %i.vc, %i.vg
  %i.vi = icmp ne i32 %i.vh, 0
  %i.vj = zext i1 %i.vi to i32
  %i.vk = icmp eq i32 %i.vj, 0
  br i1 %i.vk, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit175

_ZNK4llvh9StringRef6equalsES0_.exit176:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit180
  %i.vl = load i32, ptr %0, align 1
  %i.vm = xor i32 %i.vl, 1768189281
  %i.vn = getelementptr i8, ptr %0, i64 3
  %i.vo = load i32, ptr %i.vn, align 1
  %i.vp = xor i32 %i.vo, 875981929
  %i.vq = or i32 %i.vm, %i.vp
  %i.vr = icmp ne i32 %i.vq, 0
  %i.vs = zext i1 %i.vr to i32
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit174

_ZNK4llvh9StringRef6equalsES0_.exit175:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit177
  %i.vu = load i32, ptr %0, align 1
  %i.vv = xor i32 %i.vu, 1767994216
  %i.vw = getelementptr i8, ptr %0, i64 4
  %i.vx = load i8, ptr %i.vw, align 1
  %i.vy = zext i8 %i.vx to i32
  %i.vz = xor i32 %i.vy, 108
  %i.wa = or i32 %i.vv, %i.vz
  %i.wb = icmp ne i32 %i.wa, 0
  %i.wc = zext i1 %i.wb to i32
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit171

_ZNK4llvh9StringRef6equalsES0_.exit174:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit176
  %i.we = load i32, ptr %0, align 1
  %i.wf = xor i32 %i.we, 1767994216
  %i.wg = getelementptr i8, ptr %0, i64 3
  %i.wh = load i32, ptr %i.wg, align 1
  %i.wi = xor i32 %i.wh, 875981929
  %i.wj = or i32 %i.wf, %i.wi
  %i.wk = icmp ne i32 %i.wj, 0
  %i.wl = zext i1 %i.wk to i32
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132

_ZNK4llvh9StringRef6equalsES0_.exit173:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit178
  %i.wn = load i32, ptr %0, align 1
  %i.wo = icmp ne i32 %i.wn, 1919512691
  %i.wp = zext i1 %i.wo to i32
  %i.wq = icmp eq i32 %i.wp, 0
  br i1 %i.wq, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit172:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit190
  %i.wr = load i32, ptr %0, align 1
  %i.ws = xor i32 %i.wr, 1919512691
  %i.wt = getelementptr i8, ptr %0, i64 4
  %i.wu = load i16, ptr %i.wt, align 1
  %i.wv = zext i16 %i.wu to i32
  %i.ww = xor i32 %i.wv, 13366
  %i.wx = or i32 %i.ws, %i.ww
  %i.wy = icmp ne i32 %i.wx, 0
  %i.wz = zext i1 %i.wy to i32
  %i.xa = icmp eq i32 %i.wz, 0
  br i1 %i.xa, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit169

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30: ; preds = %bb.a
  %.not.i = icmp ult i64 %1, 7
  br i1 %.not.i, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i348, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30
  %i.xb = load i32, ptr %0, align 1
  %i.xc = xor i32 %i.xb, 1768710507
  %i.xd = getelementptr i8, ptr %0, i64 3
  %i.xe = load i32, ptr %i.xd, align 1
  %i.xf = xor i32 %i.xe, 1633840489
  %i.xg = or i32 %i.xc, %i.xf
  %i.xh = icmp ne i32 %i.xg, 0
  %i.xi = zext i1 %i.xh to i32
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14

_ZNK4llvh9StringRef10startswithES0_.exit.thread2316: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i224
  %i.xk = load i32, ptr %0, align 1
  %i.xl = xor i32 %i.xk, 1768710507
  %i.xm = getelementptr i8, ptr %0, i64 3
  %i.xn = load i32, ptr %i.xm, align 1
  %i.xo = xor i32 %i.xn, 1633840489
  %i.xp = or i32 %i.xl, %i.xo
  %i.xq = icmp ne i32 %i.xp, 0
  %i.xr = zext i1 %i.xq to i32
  %i.xs = icmp eq i32 %i.xr, 0
  br i1 %i.xs, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit167

_ZNK4llvh9StringRef10startswithES0_.exit.thread2132: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit174
  %i.xt = load i32, ptr %0, align 1
  %i.xu = xor i32 %i.xt, 1768710507
  %i.xv = getelementptr i8, ptr %0, i64 3
  %i.xw = load i32, ptr %i.xv, align 1
  %i.xx = xor i32 %i.xw, 1633840489
  %i.xy = or i32 %i.xu, %i.xx
  %i.xz = icmp ne i32 %i.xy, 0
  %i.ya = zext i1 %i.xz to i32
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit171:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit175
  %i.yc = load i32, ptr %0, align 1
  %i.yd = xor i32 %i.yc, 1634623852
  %i.ye = getelementptr i8, ptr %0, i64 4
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = zext i8 %i.yf to i32
  %i.yh = xor i32 %i.yg, 105
  %i.yi = or i32 %i.yd, %i.yh
  %i.yj = icmp ne i32 %i.yi, 0
  %i.yk = zext i1 %i.yj to i32
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit170

_ZNK4llvh9StringRef6equalsES0_.exit170:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit171
  %i.ym = load i32, ptr %0, align 1
  %i.yn = xor i32 %i.ym, 1986095219
  %i.yo = getelementptr i8, ptr %0, i64 4
  %i.yp = load i8, ptr %i.yo, align 1
  %i.yq = zext i8 %i.yp to i32
  %i.yr = xor i32 %i.yq, 101
  %i.ys = or i32 %i.yn, %i.yr
  %i.yt = icmp ne i32 %i.ys, 0
  %i.yu = zext i1 %i.yt to i32
  %i.yv = icmp eq i32 %i.yu, 0
  br i1 %i.yv, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit169:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit172
  %i.yw = load i32, ptr %0, align 1
  %i.yx = xor i32 %i.yw, 1836278135
  %i.yy = getelementptr i8, ptr %0, i64 4
  %i.yz = load i16, ptr %i.yy, align 1
  %i.za = zext i16 %i.yz to i32
  %i.zb = xor i32 %i.za, 12851
  %i.zc = or i32 %i.yx, %i.zb
  %i.zd = icmp ne i32 %i.zc, 0
  %i.ze = zext i1 %i.zd to i32
  %i.zf = icmp eq i32 %i.ze, 0
  br i1 %i.zf, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit168

_ZNK4llvh9StringRef6equalsES0_.exit168:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit169
  %i.zg = load i32, ptr %0, align 1
  %i.zh = xor i32 %i.zg, 1836278135
  %i.zi = getelementptr i8, ptr %0, i64 4
  %i.zj = load i16, ptr %i.zi, align 1
  %i.zk = zext i16 %i.zj to i32
  %i.zl = xor i32 %i.zk, 13366
  %i.zm = or i32 %i.zh, %i.zl
  %i.zn = icmp ne i32 %i.zm, 0
  %i.zo = zext i1 %i.zn to i32
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.zq = icmp eq i64 %1, 14
  br i1 %i.zq, label %_ZNK4llvh9StringRef6equalsES0_.exit167, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit167:           ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread2316, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14
  %i.zr = load i64, ptr %0, align 1
  %i.zs = xor i64 %i.zr, 7166197211878810994
  %i.zt = getelementptr i8, ptr %0, i64 6
  %i.zu = load i64, ptr %i.zt, align 1
  %i.zv = xor i64 %i.zu, 3617362951862903667
  %i.zw = or i64 %i.zs, %i.zv
  %i.zx = icmp ne i64 %i.zw, 0
  %i.zy = zext i1 %i.zx to i32
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit167
  %i.aaa = load i64, ptr %0, align 1
  %i.aab = xor i64 %i.aaa, 7166197211878810994
  %i.aac = getelementptr i8, ptr %0, i64 6
  %i.aad = load i64, ptr %i.aac, align 1
  %i.aae = xor i64 %i.aad, 3762322564868891507
  %i.aaf = or i64 %i.aab, %i.aae
  %i.aag = icmp ne i64 %i.aaf, 0
  %i.aah = zext i1 %i.aag to i32
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef10startswithES0_.exit166:      ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14, %_ZNK4llvh9StringRef6equalsES0_.exit184, %_ZNK4llvh9StringRef6equalsES0_.exit170, %_ZNK4llvh9StringRef6equalsES0_.exit173, %_ZNK4llvh9StringRef6equalsES0_.exit168, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aaj = load i16, ptr %0, align 1
  %i.aak = xor i16 %i.aaj, 29281
  %i.aal = getelementptr i8, ptr %0, i64 2
  %i.aam = load i8, ptr %i.aal, align 1
  %i.aan = zext i8 %i.aam to i16
  %i.aao = xor i16 %i.aan, 109
  %i.aap = or i16 %i.aak, %i.aao
  %i.aaq = icmp ne i16 %i.aap, 0
  %i.aar = zext i1 %i.aaq to i32
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread

_ZNK4llvh9StringRef10startswithES0_.exit166.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166
  %.not.i163 = icmp ult i64 %1, 5
  br i1 %.not.i163, label %_ZNK4llvh9StringRef10startswithES0_.exit160, label %_ZNK4llvh9StringRef10startswithES0_.exit164

_ZNK4llvh9StringRef10startswithES0_.exit164:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166.thread
  %i.aat = load i32, ptr %0, align 1
  %i.aau = xor i32 %i.aat, 1836410996
  %i.aav = getelementptr i8, ptr %0, i64 4
  %i.aaw = load i8, ptr %i.aav, align 1
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = xor i32 %i.aax, 98
  %i.aaz = or i32 %i.aau, %i.aay
  %i.aba = icmp ne i32 %i.aaz, 0
  %i.abb = zext i1 %i.aba to i32
  %i.abc = icmp eq i32 %i.abb, 0
  br i1 %i.abc, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162, label %_ZNK4llvh9StringRef10startswithES0_.exit164.thread

_ZNK4llvh9StringRef10startswithES0_.exit164.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit164
  %.not.i161 = icmp ult i64 %1, 7
  br i1 %.not.i161, label %_ZNK4llvh9StringRef10startswithES0_.exit160, label %_ZNK4llvh9StringRef10startswithES0_.exit162

_ZNK4llvh9StringRef10startswithES0_.exit162:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit164.thread
  %i.abd = load i32, ptr %0, align 1
  %i.abe = xor i32 %i.abd, 1668440417
  %i.abf = getelementptr i8, ptr %0, i64 3
  %i.abg = load i32, ptr %i.abf, align 1
  %i.abh = xor i32 %i.abg, 875980899
  %i.abi = or i32 %i.abe, %i.abh
  %i.abj = icmp ne i32 %i.abi, 0
  %i.abk = zext i1 %i.abj to i32
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162, label %_ZNK4llvh9StringRef10startswithES0_.exit160

_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit162, %_ZNK4llvh9StringRef10startswithES0_.exit164, %_ZNK4llvh9StringRef10startswithES0_.exit166
  %i.abm = tail call noundef i32 @_ZN4llvh3ARM12parseArchISAENS_9StringRefE(ptr nonnull %0, i64 %1) #13 ; 3 uses
  %i.abn = tail call noundef i32 @_ZN4llvh3ARM15parseArchEndianENS_9StringRefE(ptr nonnull %0, i64 %1) #13 ; 2 uses
  switch i32 %i.abn, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162
  %switch.tableidx = add i32 %i.abm, -1           ; 2 uses
  %i.abo = icmp ult i32 %switch.tableidx, 3
  br i1 %i.abo, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162
  %switch.tableidx2456 = add i32 %i.abm, -1       ; 2 uses
  %i.abp = icmp ult i32 %switch.tableidx2456, 3
  br i1 %i.abp, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %switch.tableidx2456.sink = phi i32 [ %switch.tableidx, %bb.b ], [ %switch.tableidx2456, %bb.c ]
  %switch.table._ZL9parseArchN4llvh9StringRefE.7.sink = phi ptr [ @switch.table._ZL9parseArchN4llvh9StringRefE, %bb.b ], [ @switch.table._ZL9parseArchN4llvh9StringRefE.7, %bb.c ]
  %i.abq = zext nneg i32 %switch.tableidx2456.sink to i64
  %switch.gep2458 = getelementptr inbounds nuw i8, ptr %switch.table._ZL9parseArchN4llvh9StringRefE.7.sink, i64 %i.abq
  %switch.load2459 = load i8, ptr %switch.gep2458, align 1
  %switch.ext2460 = zext i8 %switch.load2459 to i32
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162
  %.019.i = phi i32 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162 ], [ 0, %bb.b ], [ 0, %bb.c ], [ %switch.ext2460, %.sink.split ]
  %i.abr = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr nonnull %0, i64 %1) #13 ; 2 uses
  %i.abs = extractvalue { ptr, i64 } %i.abr, 0    ; 4 uses
  %i.abt = extractvalue { ptr, i64 } %i.abr, 1    ; 4 uses
  %i.abu = icmp eq i64 %i.abt, 0
  br i1 %i.abu, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.abv = icmp ne i32 %i.abm, 2
  %cond.i = icmp eq i64 %i.abt, 1
  %or.cond39.i = or i1 %i.abv, %cond.i
  br i1 %or.cond39.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i, label %_ZNK4llvh9StringRef10startswithES0_.exit21.i

_ZNK4llvh9StringRef10startswithES0_.exit21.i:     ; preds = %bb.e
  %i.abw = load i16, ptr %i.abs, align 1
  %i.abx = icmp ne i16 %i.abw, 12918
  %i.aby = zext i1 %i.abx to i32
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit21.i
  %i.aca = load i16, ptr %i.abs, align 1
  %i.acb = icmp ne i16 %i.aca, 13174
  %i.acc = zext i1 %i.acb to i32
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i

_ZNK4llvh9StringRef10startswithES0_.exit.thread.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i, %bb.e
  %i.ace = tail call noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr %i.abs, i64 %i.abt) #13
  %i.acf = tail call noundef i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr %i.abs, i64 %i.abt) #13
  %i.acg = icmp eq i32 %i.ace, 3
  %i.ach = icmp eq i32 %i.acf, 6
  %or.cond.i = and i1 %i.acg, %i.ach
  %i.aci = icmp eq i32 %i.abn, 2
  %..i = select i1 %i.aci, i32 30, i32 29
  %.0.i572 = select i1 %or.cond.i, i32 %..i, i32 %.019.i
  br label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef10startswithES0_.exit160:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit162, %_ZNK4llvh9StringRef10startswithES0_.exit164.thread, %_ZNK4llvh9StringRef10startswithES0_.exit166.thread
  %i.acj = load i16, ptr %0, align 1
  %i.ack = xor i16 %i.acj, 28770
  %i.acl = getelementptr i8, ptr %0, i64 2
  %i.acm = load i8, ptr %i.acl, align 1
  %i.acn = zext i8 %i.acm to i16
  %i.aco = xor i16 %i.acn, 102
  %i.acp = or i16 %i.ack, %i.aco
  %i.acq = icmp ne i16 %i.acp, 0
  %i.acr = zext i1 %i.acq to i32
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit160
  %i.act = tail call fastcc noundef i32 @_ZL12parseBPFArchN4llvh9StringRefE(ptr nonnull %0, i64 %1)
  br label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit: ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2316, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit167, %_ZNK4llvh9StringRef6equalsES0_.exit168, %_ZNK4llvh9StringRef6equalsES0_.exit169, %_ZNK4llvh9StringRef6equalsES0_.exit170, %_ZNK4llvh9StringRef6equalsES0_.exit171, %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132, %_ZNK4llvh9StringRef6equalsES0_.exit172, %_ZNK4llvh9StringRef6equalsES0_.exit173, %_ZNK4llvh9StringRef6equalsES0_.exit174, %_ZNK4llvh9StringRef6equalsES0_.exit175, %_ZNK4llvh9StringRef6equalsES0_.exit176, %_ZNK4llvh9StringRef6equalsES0_.exit177, %_ZNK4llvh9StringRef6equalsES0_.exit178, %_ZNK4llvh9StringRef6equalsES0_.exit179, %_ZNK4llvh9StringRef6equalsES0_.exit180, %_ZNK4llvh9StringRef6equalsES0_.exit181, %_ZNK4llvh9StringRef6equalsES0_.exit182, %_ZNK4llvh9StringRef6equalsES0_.exit183, %_ZNK4llvh9StringRef6equalsES0_.exit184, %_ZNK4llvh9StringRef6equalsES0_.exit.i323, %_ZNK4llvh9StringRef6equalsES0_.exit12.i318, %_ZNK4llvh9StringRef6equalsES0_.exit185, %_ZNK4llvh9StringRef6equalsES0_.exit186, %_ZNK4llvh9StringRef6equalsES0_.exit.i333, %_ZNK4llvh9StringRef6equalsES0_.exit12.i328, %_ZNK4llvh9StringRef6equalsES0_.exit187, %_ZNK4llvh9StringRef6equalsES0_.exit188, %_ZNK4llvh9StringRef6equalsES0_.exit189, %_ZNK4llvh9StringRef6equalsES0_.exit190, %_ZNK4llvh9StringRef6equalsES0_.exit191, %_ZNK4llvh9StringRef6equalsES0_.exit192, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i348, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i397, %_ZNK4llvh9StringRef6equalsES0_.exit.i389, %_ZNK4llvh9StringRef6equalsES0_.exit.i303, %_ZNK4llvh9StringRef6equalsES0_.exit12.i298, %_ZNK4llvh9StringRef6equalsES0_.exit.i224, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i384, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i379, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i363, %_ZNK4llvh9StringRef6equalsES0_.exit.i355, %_ZNK4llvh9StringRef6equalsES0_.exit193, %_ZNK4llvh9StringRef6equalsES0_.exit194, %_ZNK4llvh9StringRef6equalsES0_.exit195, %_ZNK4llvh9StringRef6equalsES0_.exit196, %_ZNK4llvh9StringRef6equalsES0_.exit197, %_ZNK4llvh9StringRef6equalsES0_.exit198, %_ZNK4llvh9StringRef6equalsES0_.exit199, %_ZNK4llvh9StringRef6equalsES0_.exit200, %_ZNK4llvh9StringRef6equalsES0_.exit201, %_ZNK4llvh9StringRef6equalsES0_.exit202, %_ZNK4llvh9StringRef6equalsES0_.exit203, %_ZNK4llvh9StringRef6equalsES0_.exit204, %_ZNK4llvh9StringRef6equalsES0_.exit.i343, %_ZNK4llvh9StringRef6equalsES0_.exit12.i338, %_ZNK4llvh9StringRef6equalsES0_.exit.i293, %_ZNK4llvh9StringRef6equalsES0_.exit12.i288, %_ZNK4llvh9StringRef6equalsES0_.exit.i232, %_ZNK4llvh9StringRef6equalsES0_.exit.i283, %_ZNK4llvh9StringRef6equalsES0_.exit12.i278, %_ZNK4llvh9StringRef6equalsES0_.exit.i240, %_ZNK4llvh9StringRef6equalsES0_.exit.i273, %_ZNK4llvh9StringRef6equalsES0_.exit12.i268, %_ZNK4llvh9StringRef6equalsES0_.exit.i248, %_ZNK4llvh9StringRef6equalsES0_.exit.i264, %_ZNK4llvh9StringRef6equalsES0_.exit12.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i256, %_ZNK4llvh9StringRef6equalsES0_.exit.i313, %_ZNK4llvh9StringRef6equalsES0_.exit12.i308, %_ZNK4llvh9StringRef6equalsES0_.exit.i217, %_ZNK4llvh9StringRef6equalsES0_.exit.i209, %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit21.i, %bb.d, %_ZNK4llvh9StringRef10startswithES0_.exit160, %_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168
  %.0 = phi i32 [ 50, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.act, %_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168 ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit160 ], [ 49, %_ZNK4llvh9StringRef6equalsES0_.exit167 ], [ %.0.i572, %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i ], [ 0, %bb.d ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit21.i ], [ 48, %_ZNK4llvh9StringRef6equalsES0_.exit168 ], [ 47, %_ZNK4llvh9StringRef6equalsES0_.exit169 ], [ 45, %_ZNK4llvh9StringRef6equalsES0_.exit170 ], [ 46, %_ZNK4llvh9StringRef6equalsES0_.exit171 ], [ 44, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ 43, %_ZNK4llvh9StringRef6equalsES0_.exit172 ], [ 42, %_ZNK4llvh9StringRef6equalsES0_.exit173 ], [ 41, %_ZNK4llvh9StringRef6equalsES0_.exit174 ], [ 40, %_ZNK4llvh9StringRef6equalsES0_.exit175 ], [ 39, %_ZNK4llvh9StringRef6equalsES0_.exit176 ], [ 38, %_ZNK4llvh9StringRef6equalsES0_.exit177 ], [ 37, %_ZNK4llvh9StringRef6equalsES0_.exit178 ], [ 36, %_ZNK4llvh9StringRef6equalsES0_.exit179 ], [ 35, %_ZNK4llvh9StringRef6equalsES0_.exit180 ], [ 34, %_ZNK4llvh9StringRef6equalsES0_.exit181 ], [ 33, %_ZNK4llvh9StringRef6equalsES0_.exit182 ], [ 28, %_ZNK4llvh9StringRef6equalsES0_.exit183 ], [ 27, %_ZNK4llvh9StringRef6equalsES0_.exit184 ], [ 24, %_ZNK4llvh9StringRef6equalsES0_.exit.i323 ], [ 24, %_ZNK4llvh9StringRef6equalsES0_.exit12.i318 ], [ 25, %_ZNK4llvh9StringRef6equalsES0_.exit185 ], [ 23, %_ZNK4llvh9StringRef6equalsES0_.exit186 ], [ 26, %_ZNK4llvh9StringRef6equalsES0_.exit.i333 ], [ 26, %_ZNK4llvh9StringRef6equalsES0_.exit12.i328 ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit187 ], [ 22, %_ZNK4llvh9StringRef6equalsES0_.exit188 ], [ 21, %_ZNK4llvh9StringRef6equalsES0_.exit189 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit190 ], [ 19, %_ZNK4llvh9StringRef6equalsES0_.exit191 ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit192 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i348 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i397 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i389 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i303 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit12.i298 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i224 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i384 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i379 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i363 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i355 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit193 ], [ 6, %_ZNK4llvh9StringRef6equalsES0_.exit194 ], [ 30, %_ZNK4llvh9StringRef6equalsES0_.exit195 ], [ 29, %_ZNK4llvh9StringRef6equalsES0_.exit196 ], [ 2, %_ZNK4llvh9StringRef6equalsES0_.exit197 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit198 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit199 ], [ 5, %_ZNK4llvh9StringRef6equalsES0_.exit200 ], [ 4, %_ZNK4llvh9StringRef6equalsES0_.exit201 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit202 ], [ 2, %_ZNK4llvh9StringRef6equalsES0_.exit203 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit204 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit.i343 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit12.i338 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit.i293 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit12.i288 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit.i232 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit.i283 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit12.i278 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit.i240 ], [ 32, %_ZNK4llvh9StringRef6equalsES0_.exit.i273 ], [ 32, %_ZNK4llvh9StringRef6equalsES0_.exit12.i268 ], [ 32, %_ZNK4llvh9StringRef6equalsES0_.exit.i248 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i264 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i209 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i217 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit12.i308 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i313 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i256 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit12.i ], [ 44, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132 ], [ 0, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30 ], [ 44, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2316 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 27) i32 @_ZL12parseSubArchN4llvh9StringRefE(ptr %0, i64 %1) unnamed_addr #4 !guid !192 {
bb.a:
  %.not.i = icmp ult i64 %1, 4
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1936746861
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef8endswithES0_.exit7, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef8endswithES0_.exit7:           ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 1
  %i.h = icmp ne i32 %i.g, 1818572402
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit7
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = icmp ne i16 %i.l, 13938
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.a, %_ZNK4llvh9StringRef8endswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.p = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) #13 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %.not.i.i11 = icmp ult i64 %1, 8
  br i1 %.not.i.i11, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i12

_ZNK4llvh9StringRef8endswithES0_.exit.i12:        ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = icmp ne i64 %i.u, 3702348590734926187
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i9

_ZNK4llvh9StringRef8endswithES0_.exit.i9:         ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i12
  %i.y = load i64, ptr %i.t, align 1
  %i.z = icmp ne i64 %i.y, 3774406184772854123
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i

_ZNK4llvh9StringRef8endswithES0_.exit.i:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i9
  %i.ac = load i64, ptr %i.t, align 1
  %i.ad = icmp ne i64 %i.ac, 3846463778810782059
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select = select i1 %i.af, i32 25, i32 0
  br label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit

bb.c:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.ag = extractvalue { ptr, i64 } %i.p, 0
  %i.ah = tail call noundef i32 @_ZN4llvh3ARM9parseArchENS_9StringRefE(ptr %i.ag, i64 %i.q) #13
  %switch.tableidx = add i32 %i.ah, -6            ; 2 uses
  %i.ai = icmp ult i32 %switch.tableidx, 28
  br i1 %i.ai, label %switch.lookup, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit

switch.lookup:                                    ; preds = %bb.c
  %i.aj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL12parseSubArchN4llvh9StringRefE, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit: ; preds = %bb.c, %switch.lookup, %_ZNK4llvh9StringRef8endswithES0_.exit.i, %_ZNK4llvh9StringRef8endswithES0_.exit.i9, %_ZNK4llvh9StringRef8endswithES0_.exit.i12, %bb.b, %_ZNK4llvh9StringRef8endswithES0_.exit7, %_ZNK4llvh9StringRef8endswithES0_.exit
  %.1 = phi i32 [ 23, %_ZNK4llvh9StringRef8endswithES0_.exit.i12 ], [ 26, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ 26, %_ZNK4llvh9StringRef8endswithES0_.exit7 ], [ 0, %bb.b ], [ %switch.ext, %switch.lookup ], [ %spec.select, %_ZNK4llvh9StringRef8endswithES0_.exit.i ], [ 24, %_ZNK4llvh9StringRef8endswithES0_.exit.i9 ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 17) i32 @_ZL11parseVendorN4llvh9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #2 !guid !193 {
bb.a:
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread [
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.i104
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit.i97
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i90
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i83
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i41
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i104:         ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1819308129
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 101
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i97:          ; preds = %bb.a
  %i.k = load i16, ptr %0, align 1
  %i.l = icmp ne i16 %i.k, 25456
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i

_ZNK4llvh9StringRef6equalsES0_.exit.i90:          ; preds = %bb.a
  %i.o = load i32, ptr %0, align 1
  %i.p = icmp ne i32 %i.o, 1768252275
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i13

_ZNK4llvh9StringRef6equalsES0_.exit.i83:          ; preds = %bb.a
  %i.s = load i16, ptr %0, align 1
  %i.t = xor i16 %i.s, 26466
  %i.u = getelementptr i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i16
  %i.x = xor i16 %i.w, 112
  %i.y = or i16 %i.t, %i.x
  %i.z = icmp ne i16 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i76

_ZNK4llvh9StringRef6equalsES0_.exit.i76:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i83
  %i.ac = load i16, ptr %0, align 1
  %i.ad = xor i16 %i.ac, 26466
  %i.ae = getelementptr i8, ptr %0, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i16
  %i.ah = xor i16 %i.ag, 113
  %i.ai = or i16 %i.ad, %i.ah
  %i.aj = icmp ne i16 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i69

_ZNK4llvh9StringRef6equalsES0_.exit.i69:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i76
  %i.am = load i16, ptr %0, align 1
  %i.an = xor i16 %i.am, 29542
  %i.ao = getelementptr i8, ptr %0, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 108
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i62

_ZNK4llvh9StringRef6equalsES0_.exit.i62:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i69
  %i.aw = load i16, ptr %0, align 1
  %i.ax = xor i16 %i.aw, 25193
  %i.ay = getelementptr i8, ptr %0, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 109
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i55

_ZNK4llvh9StringRef6equalsES0_.exit.i55:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i62
  %i.bg = load i16, ptr %0, align 1
  %i.bh = xor i16 %i.bg, 28009
  %i.bi = getelementptr i8, ptr %0, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = xor i16 %i.bk, 103
  %i.bm = or i16 %i.bh, %i.bl
  %i.bn = icmp ne i16 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i48

_ZNK4llvh9StringRef6equalsES0_.exit.i48:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i55
  %i.bq = load i16, ptr %0, align 1
  %i.br = xor i16 %i.bq, 29805
  %i.bs = getelementptr i8, ptr %0, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 105
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
end_hunk_1
