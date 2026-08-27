Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonAsmBackend?download=true
inline.NumInlined: 924
inline.NumDeleted: 484
begin_hunk_0_@_ZN12_GLOBAL__N_117HexagonAsmBackend10applyFixupERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEPhmb:bb.a
  br label %iter.check

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit

_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit: ; preds = %bb.f, %bb.h
  %.not79 = phi i1 [ false, %bb.h ], [ true, %bb.f ]
  %.0.i53 = phi i64 [ 4, %bb.h ], [ 0, %bb.f ]
  switch i16 %i.g, label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread [
    i16 4012, label %bb.i
    i16 4024, label %bb.i
    i16 4023, label %bb.i
    i16 4011, label %bb.i
    i16 4010, label %bb.i
    i16 4031, label %bb.j
    i16 4030, label %bb.j
    i16 4029, label %bb.j
    i16 4028, label %bb.j
    i16 4027, label %bb.j
    i16 4025, label %bb.k
    i16 4107, label %bb.k
    i16 4109, label %bb.k
  ]

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit
  %i.h = lshr i64 %i.e, 2
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit
  %i.i = and i64 %i.e, 63
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit
  %i.j = lshr i64 %i.e, 6
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit

_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.0.i54 = phi i64 [ %i.j, %bb.k ], [ %i.h, %bb.i ], [ %i.i, %bb.j ] ; 2 uses
  %.not48 = icmp eq i64 %.0.i54, 0
  br i1 %.not48, label %.loopexit, label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread

_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread: ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit
  %.0.i5470 = phi i64 [ %.0.i54, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit ], [ %i.e, %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit ] ; 24 uses
  switch i16 %i.g, label %.loopexit [
    i16 4012, label %bb.l
    i16 4031, label %bb.m
    i16 4024, label %bb.n
    i16 4030, label %bb.o
    i16 4023, label %bb.p
    i16 4029, label %bb.q
    i16 4011, label %bb.r
    i16 4028, label %bb.s
    i16 4010, label %bb.t
    i16 4027, label %bb.u
    i16 4025, label %bb.v
    i16 4001, label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread
    i16 4002, label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread
    i16 4003, label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread
    i16 4015, label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread
  ]

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %sext52 = shl i64 %.0.i5470, 32
  %i.k = ashr exact i64 %sext52, 32
  %i.l = add nsw i64 %i.k, 64
  %or.cond = icmp ult i64 %i.l, 128
  br i1 %or.cond, label %bb.m, label %_ZN4llvm6isIntNEjl.exit.thread

_ZN4llvm6isIntNEjl.exit.thread:                   ; preds = %bb.l
  call fastcc void @_ZNK12_GLOBAL__N_117HexagonAsmBackend16HandleFixupErrorEiilPKc(i32 noundef 7, i64 noundef %i.e, ptr noundef nonnull @.str.204)
  unreachable

bb.m:                                             ; preds = %bb.l, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %i.m = shl i64 %.0.i5470, 6
  %i.n = and i64 %i.m, 7936
  %i.o = shl i64 %.0.i5470, 3
  %i.p = and i64 %i.o, 24
  %i.q = or disjoint i64 %i.n, %i.p
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %sext51 = shl i64 %.0.i5470, 32
  %i.r = ashr exact i64 %sext51, 32
  %i.s = add nsw i64 %i.r, 256
  %or.cond74 = icmp ult i64 %i.s, 512
  br i1 %or.cond74, label %bb.o, label %_ZN4llvm6isIntNEjl.exit56.thread

_ZN4llvm6isIntNEjl.exit56.thread:                 ; preds = %bb.n
  call fastcc void @_ZNK12_GLOBAL__N_117HexagonAsmBackend16HandleFixupErrorEiilPKc(i32 noundef 9, i64 noundef %i.e, ptr noundef nonnull @.str.205)
  unreachable

bb.o:                                             ; preds = %bb.n, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %i.t = shl i64 %.0.i5470, 13
  %i.u = and i64 %i.t, 3145728
  %i.v = shl i64 %.0.i5470, 1
  %i.w = and i64 %i.v, 254
  %i.x = or disjoint i64 %i.u, %i.w
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %sext50 = shl i64 %.0.i5470, 32
  %i.y = ashr exact i64 %sext50, 32
  %i.z = add nsw i64 %i.y, 4096
  %or.cond75 = icmp ult i64 %i.z, 8192
  br i1 %or.cond75, label %bb.q, label %_ZN4llvm6isIntNEjl.exit58.thread

_ZN4llvm6isIntNEjl.exit58.thread:                 ; preds = %bb.p
  call fastcc void @_ZNK12_GLOBAL__N_117HexagonAsmBackend16HandleFixupErrorEiilPKc(i32 noundef 13, i64 noundef %i.e, ptr noundef nonnull @.str.206)
  unreachable

bb.q:                                             ; preds = %bb.p, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %i.aa = shl i64 %.0.i5470, 9
  %i.ab = and i64 %i.aa, 2097152
  %i.ac = shl i64 %.0.i5470, 2
  %i.ad = and i64 %i.ac, 8192
  %i.ae = or disjoint i64 %i.ab, %i.ad
  %i.af = shl i64 %.0.i5470, 1
  %i.ag = and i64 %i.af, 4094
  %i.ah = or disjoint i64 %i.ae, %i.ag
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %sext49 = shl i64 %.0.i5470, 32
  %i.ai = ashr exact i64 %sext49, 32
  %i.aj = add nsw i64 %i.ai, 16384
  %or.cond76 = icmp ult i64 %i.aj, 32768
  br i1 %or.cond76, label %bb.s, label %_ZN4llvm6isIntNEjl.exit60.thread

_ZN4llvm6isIntNEjl.exit60.thread:                 ; preds = %bb.r
  call fastcc void @_ZNK12_GLOBAL__N_117HexagonAsmBackend16HandleFixupErrorEiilPKc(i32 noundef 15, i64 noundef %i.e, ptr noundef nonnull @.str.207)
  unreachable

bb.s:                                             ; preds = %bb.r, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %i.ak = shl i64 %.0.i5470, 9
  %i.al = and i64 %i.ak, 12582912
  %i.am = shl i64 %.0.i5470, 8
  %i.an = and i64 %i.am, 2031616
  %i.ao = or disjoint i64 %i.al, %i.an
  %i.ap = shl i64 %.0.i5470, 6
  %i.aq = and i64 %i.ap, 8192
  %i.ar = or disjoint i64 %i.ao, %i.aq
  %i.as = shl i64 %.0.i5470, 1
  %i.at = and i64 %i.as, 254
  %i.au = or disjoint i64 %i.ar, %i.at
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %sext = shl i64 %.0.i5470, 32
  %i.av = ashr exact i64 %sext, 32
  %i.aw = add nsw i64 %i.av, 2097152
  %or.cond77 = icmp ult i64 %i.aw, 4194304
  br i1 %or.cond77, label %bb.u, label %_ZN4llvm6isIntNEjl.exit62.thread

_ZN4llvm6isIntNEjl.exit62.thread:                 ; preds = %bb.t
  call fastcc void @_ZNK12_GLOBAL__N_117HexagonAsmBackend16HandleFixupErrorEiilPKc(i32 noundef 22, i64 noundef %i.e, ptr noundef nonnull @.str.208)
  unreachable

bb.u:                                             ; preds = %bb.t, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %i.ax = shl i64 %.0.i5470, 3
  %i.ay = and i64 %i.ax, 33488896
  %i.az = shl i64 %.0.i5470, 1
  %i.ba = and i64 %i.az, 16382
  %i.bb = or disjoint i64 %i.ay, %i.ba
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread
  %i.bc = shl i64 %.0.i5470, 2
  %i.bd = and i64 %i.bc, 268369920
  %i.be = and i64 %.0.i5470, 16383
  %i.bf = or disjoint i64 %i.bd, %i.be
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread

_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread: ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %i.bg = phi i32 [ -7961, %bb.m ], [ -3145983, %bb.o ], [ -2109439, %bb.q ], [ -14622975, %bb.s ], [ -33505279, %bb.u ], [ -268386304, %bb.v ], [ 0, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ], [ 0, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ], [ 0, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ], [ 0, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ]
  %.044.in = phi i64 [ %i.q, %bb.m ], [ %i.x, %bb.o ], [ %i.ah, %bb.q ], [ %i.au, %bb.s ], [ %i.bb, %bb.u ], [ %i.bf, %bb.v ], [ %.0.i5470, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ], [ %.0.i5470, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ], [ %.0.i5470, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ], [ %.0.i5470, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread ]
  br i1 %.not79, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread
  %.04486.in = phi i64 [ %.044.in, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread ], [ %i.e, %bb.f ], [ %i.e, %bb.g ]
  %i.bh = phi i32 [ %i.bg, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread ], [ 0, %bb.f ], [ 0, %bb.g ] ; 3 uses
  %.0.i5365697385 = phi i64 [ %.0.i53, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread ], [ 1, %bb.f ], [ 2, %bb.g ]
  %.04486 = trunc i64 %.04486.in to i32           ; 3 uses
  %wide.trip.count = and i64 %.0.i5365697385, 4294967295 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <16 x i32> poison, i32 %.04486, i64 0
  %broadcast.splat89 = shufflevector <16 x i32> %broadcast.splatinsert88, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bi = shl nuw <16 x i32> %vec.ind, splat (i32 3) ; 2 uses
  %i.bj = lshr <16 x i32> %broadcast.splat, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !92
  %i.bl = trunc <16 x i32> %i.bj to <16 x i8>
  %i.bm = and <16 x i8> %wide.load, %i.bl
  %i.bn = lshr <16 x i32> %broadcast.splat89, %i.bi
  %i.bo = trunc <16 x i32> %i.bn to <16 x i8>
  %i.bp = or <16 x i8> %i.bm, %i.bo
  store <16 x i8> %i.bp, ptr %i.bk, align 1, !tbaa !92
  %index.next = add nuw i64 %index, 16
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  br label %vector.body, !llvm.loop !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %.04486, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind98 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vec.epilog.ph ], [ %vec.ind.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = shl nuw <8 x i32> %vec.ind98, splat (i32 3) ; 2 uses
  %i.br = lshr <8 x i32> %broadcast.splat92, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %index97 ; 2 uses
  %wide.load99 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !92
  %i.bt = trunc <8 x i32> %i.br to <8 x i8>
  %i.bu = and <8 x i8> %wide.load99, %i.bt
  %i.bv = lshr <8 x i32> %broadcast.splat94, %i.bq
  %i.bw = trunc <8 x i32> %i.bv to <8 x i8>
  %i.bx = or <8 x i8> %i.bu, %i.bw
  store <8 x i8> %i.bx, ptr %i.bs, align 1, !tbaa !92
  %index.next100 = add nuw i64 %index97, 8
  %vec.ind.next101 = add <8 x i32> %vec.ind98, splat (i32 8)
  br label %vec.epilog.vector.body, !llvm.loop !97

.lr.ph:                                           ; preds = %iter.check, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %iter.check ] ; 3 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.by = shl nuw i32 %indvars.iv.tr, 3           ; 2 uses
  %i.bz = lshr i32 %i.bh, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !92
  %i.cc = trunc i32 %i.bz to i8
  %i.cd = and i8 %i.cb, %i.cc
  %i.ce = lshr i32 %.04486, %i.by
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = or i8 %i.cd, %i.cf
  store i8 %i.cg, ptr %i.ca, align 1, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread.thread, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit, %_ZN12_GLOBAL__N_117HexagonAsmBackend16adjustFixupValueEtm.exit.thread, %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_117HexagonAsmBackend17mayNeedRelaxationEjN4llvm8ArrayRefINS1_9MCOperandEEERKNS1_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(212) initializes((56, 60), (80, 84)) %0, i32 noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !71
  %.idx.i = shl nuw nsw i64 %3, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = zext i32 %i.e to i64
  %i.g = icmp ugt i64 %3, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.h, i64 noundef %3, i64 noundef 16) #17
  %.pre8.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !71
  %i.i = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm6MCInst11setOperandsENS_8ArrayRefINS_9MCOperandEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i
  %.pre8.i.i5.i = phi i64 [ %i.i, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i ]
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.pre8.i.i5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 8 %2, i64 %.idx.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !71
  br label %_ZN4llvm6MCInst11setOperandsENS_8ArrayRefINS_9MCOperandEEE.exit

_ZN4llvm6MCInst11setOperandsENS_8ArrayRefINS_9MCOperandEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i, %bb.b
  %i.l = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.b ]
  %i.m = trunc i64 %3 to i32
  %i.n = add i32 %i.l, %i.m
  store i32 %i.n, ptr %i.b, align 8, !tbaa !71
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_117HexagonAsmBackend28fixupNeedsRelaxationAdvancedERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEmb(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree nonnull readnone align 1 captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  store ptr null, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !101
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = lshr i64 %i.j, 2
  %i.l = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm18HexagonMCInstrInfo11instructionERKNS_6MCInstEm(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef %i.k) #17 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm18HexagonMCInstrInfo7getDescERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.q = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo7getTypeERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17
  %i.r = icmp eq i32 %i.q, 35
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.t = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo7getTypeERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !108
  %i.x = and i64 %i.w, 1024
  %.not13.i = icmp eq i64 %i.x, 0
  br i1 %.not13.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.z = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo7getTypeERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.y, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17
  %i.aa = icmp eq i32 %i.z, 39
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !108
  %i.ad = and i64 %i.ac, 1024
  %.not14.i = icmp eq i64 %i.ad, 0
  br i1 %.not14.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.af = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo7getTypeERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17
  %i.ag = icmp eq i32 %i.af, 5
  br i1 %i.ag, label %bb.g, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !99
  %.not.i = icmp eq i32 %i.ah, 1248
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.a
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.aj = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo12isExtendableERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17
  br i1 %i.aj, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend15isInstRelaxableERKN4llvm6MCInstE.exit, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

_ZNK12_GLOBAL__N_117HexagonAsmBackend15isInstRelaxableERKN4llvm6MCInstE.exit: ; preds = %bb.h
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.al = tail call noundef zeroext i16 @_ZN4llvm18HexagonMCInstrInfo15getExtendableOpERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ak, ptr noundef nonnull align 8 dereferenceable(128) %i.l) #17
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.an = zext i16 %i.al to i64
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92
  %i.as = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo13mustNotExtendERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #17
  br i1 %i.as, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_117HexagonAsmBackend15isInstRelaxableERKN4llvm6MCInstE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i16, ptr %i.at, align 4, !tbaa !82 ; 2 uses
  br i1 %5, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i16 %i.au, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit [
    i16 4012, label %bb.k
    i16 4023, label %bb.k
    i16 4011, label %bb.k
    i16 4024, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.av = tail call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #17
  %i.aw = icmp ult i64 %i.av, 4
  br i1 %i.aw, label %bb.l, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !110
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !110
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !78
  store ptr %i.l, ptr %i.ba, align 8, !tbaa !100
  %i.bb = tail call noundef nonnull align 8 dereferenceable(2208) ptr @_ZNK4llvm12MCAsmBackend10getContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.m, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call noundef ptr @_ZN4llvm9MCContext12createMCInstEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.bb) #17
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !79
  br label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

bb.n:                                             ; preds = %bb.i
  %switch.tableidx = add i16 %i.au, -4010         ; 2 uses
  %i.bg = icmp ult i16 %switch.tableidx, 15
  br i1 %i.bg, label %switch.lookup, label %bb.o

switch.lookup:                                    ; preds = %bb.n
  %i.bh = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK12_GLOBAL__N_117HexagonAsmBackend28fixupNeedsRelaxationAdvancedERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEmb, i64 %i.bh
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %switch.lookup
  %.0 = phi i64 [ %switch.load, %switch.lookup ], [ 9223372036854775807, %bb.n ] ; 2 uses
  %i.bi = sub nsw i64 0, %.0
  %i.bj = icmp slt i64 %4, %i.bi
  %i.bk = icmp sge i64 %4, %.0
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %bb.p, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = tail call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #17
  %i.bn = icmp ult i64 %i.bm, 4
  br i1 %i.bn, label %bb.q, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend11setExtenderERN4llvm9MCContextE.exit

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEv:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.037.062.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.fu = add nsw i64 %.063.i.i.i.i.i.i, -1
  %i.fv = icmp sgt i64 %.063.i.i.i.i.i.i, 1
  br i1 %i.fv, label %bb.j, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !150

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.n
  %.pre74.i.i.i.i.i.i = ptrtoint ptr %i.ft to i64
  %.pre75.i.i.i.i.i.i = sub i64 %i.df, %.pre74.i.i.i.i.i.i
  %i.fw = ashr exact i64 %.pre75.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.i
  %.pre-phi76.i.i.i.i.i.i = phi i64 [ %i.fw, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.dd, %bb.i ]
  %.sroa.037.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ft, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.da, %bb.i ] ; 5 uses
  switch i64 %.pre-phi76.i.i.i.i.i.i, label %.preheader [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge71.i.i.i.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fx = load ptr, ptr %.sroa.037.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !70
  %i.fy = call noundef zeroext i1 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolERm(ptr noundef nonnull align 8 dereferenceable(400) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #17
  %i.fz = call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  %i.ga = shl i64 %i.fz, 2
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !149
  %i.ge = and i64 %i.ga, 4294967292
  %i.gf = add i64 %i.gd, %i.ge
  %i.gg = icmp ule i64 %i.gb, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = and i32 %i.gi, 3
  %i.gk = icmp ne i32 %i.gj, 1
  %i.gl = icmp ne i64 %i.gb, 0
  %or.cond.i.i15.i.i.i.i.i.i = select i1 %i.gk, i1 %i.gl, i1 false
  %or.cond3.i.i16.i.i.i.i.i.i = and i1 %i.fy, %or.cond.i.i15.i.i.i.i.i.i
  %i.gm = select i1 %or.cond3.i.i16.i.i.i.i.i.i, i1 %i.gg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br i1 %i.gm, label %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i
  %.sroa.037.1.i.i.i.i.i.i = phi ptr [ %i.gn, %bb.p ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.go = load ptr, ptr %.sroa.037.1.i.i.i.i.i.i, align 8, !tbaa !148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !70
  %i.gp = call noundef zeroext i1 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolERm(ptr noundef nonnull align 8 dereferenceable(400) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17
  %i.gq = call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  %i.gr = shl i64 %i.gq, 2
  %i.gs = load i64, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !149
  %i.gv = and i64 %i.gr, 4294967292
  %i.gw = add i64 %i.gu, %i.gv
  %i.gx = icmp ule i64 %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gz = load i32, ptr %i.gy, align 8
  %i.ha = and i32 %i.gz, 3
  %i.hb = icmp ne i32 %i.ha, 1
  %i.hc = icmp ne i64 %i.gs, 0
  %or.cond.i.i17.i.i.i.i.i.i = select i1 %i.hb, i1 %i.hc, i1 false
  %or.cond3.i.i18.i.i.i.i.i.i = and i1 %i.gp, %or.cond.i.i17.i.i.i.i.i.i
  %i.hd = select i1 %or.cond3.i.i18.i.i.i.i.i.i, i1 %i.gx, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %i.hd, label %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge71.i.i.i.i.i.i

._crit_edge._crit_edge71.i.i.i.i.i.i:             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i
  %.sroa.037.2.i.i.i.i.i.i = phi ptr [ %i.he, %bb.q ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.hf = load ptr, ptr %.sroa.037.2.i.i.i.i.i.i, align 8, !tbaa !148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !70
  %i.hg = call noundef zeroext i1 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolERm(ptr noundef nonnull align 8 dereferenceable(400) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17
  %i.hh = call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  %i.hi = shl i64 %i.hh, 2
  %i.hj = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !149
  %i.hm = and i64 %i.hi, 4294967292
  %i.hn = add i64 %i.hl, %i.hm
  %i.ho = icmp ule i64 %i.hj, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hq = load i32, ptr %i.hp, align 8
  %i.hr = and i32 %i.hq, 3
  %i.hs = icmp ne i32 %i.hr, 1
  %i.ht = icmp ne i64 %i.hj, 0
  %or.cond.i.i19.i.i.i.i.i.i = select i1 %i.hs, i1 %i.ht, i1 false
  %or.cond3.i.i20.i.i.i.i.i.i = and i1 %i.hg, %or.cond.i.i19.i.i.i.i.i.i
  %i.hu = select i1 %or.cond3.i.i20.i.i.i.i.i.i, i1 %i.ho, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %spec.select.i.i.i.i.i.i = select i1 %i.hu, ptr %.sroa.037.2.i.i.i.i.i.i, ptr %i.de
  br label %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit

_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.k
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.037.062.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit

_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit114: ; preds = %bb.l
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.037.062.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit

_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit116: ; preds = %bb.m
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.037.062.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit

_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit: ; preds = %bb.j, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit114, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit116, %bb.o, %._crit_edge._crit_edge.i.i.i.i.i.i, %._crit_edge._crit_edge71.i.i.i.i.i.i
  %.sroa.0.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.037.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %._crit_edge._crit_edge71.i.i.i.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i, %bb.o ], [ %i.hv, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit ], [ %i.hw, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit114 ], [ %i.hx, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit116 ], [ %.sroa.037.062.i.i.i.i.i.i, %bb.j ]
  %.not56 = icmp eq ptr %i.de, %.sroa.0.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %.not56, label %.preheader, label %bb.af

.preheader:                                       ; preds = %._crit_edge.i.i.i.i.i.i, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cb, i64 56 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.x
  %.168 = phi i64 [ %i.bo, %.preheader ], [ %i.im, %bb.x ]
  %i.ia = call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  %i.ib = load i32, ptr %i.x, align 8, !tbaa !80
  %i.ic = zext i32 %i.ib to i64
  %i.id = icmp ult i64 %i.ia, %i.ic
  br i1 %i.id, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ie = call noundef ptr @_ZN4llvm9MCContext12createMCInstEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.by) #17 ; 2 uses
  store i32 986, ptr %i.ie, align 8, !tbaa !99
  %.fca.1.load.cast.i = ptrtoint ptr %i.ie to i64 ; 2 uses
  %i.if = load i32, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  %i.ig = load i32, ptr %i.w, align 4, !tbaa !72
  %.not.i.i = icmp ult i32 %i.if, %i.ig
  br i1 %.not.i.i, label %bb.u, label %bb.t, !prof !111

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 6, i64 %.fca.1.load.cast.i)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.u:                                             ; preds = %bb.s
  %i.ih = zext i32 %i.if to i64
  %i.ii = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.ih ; 2 uses
  store i8 6, ptr %i.ij, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %.fca.1.load.cast.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.ik = load i32, ptr %i.v, align 8, !tbaa !71
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.v, align 8, !tbaa !71
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.t, %bb.u
  %i.im = add i64 %.168, -4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.in = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.io = load ptr, ptr %i.hy, align 8, !tbaa !151
  %i.ip = load ptr, ptr %i.hz, align 8, !tbaa !152
  call void @_ZN4llvm16HexagonMCCheckerC1ERNS_9MCContextERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstERKNS_14MCRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(2208) %i.by, ptr noundef nonnull align 8 dereferenceable(58) %i.in, ptr noundef nonnull align 8 dereferenceable(320) %i.io, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(240) %i.ip, i1 noundef zeroext false) #17
  %i.iq = call noundef zeroext i1 @_ZN4llvm16HexagonMCChecker5checkEb(ptr noundef nonnull align 8 dereferenceable(408) %5, i1 noundef zeroext true) #17
  %i.ir = load ptr, ptr %i.aa, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef %i.ir)
  %i.is = load ptr, ptr %i.ac, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef %i.is)
  %i.it = load ptr, ptr %i.ae, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.it)
  %i.iu = load ptr, ptr %i.ag, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef %i.iu)
  %i.iv = load ptr, ptr %i.ai, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.iv)
  %i.iw = load ptr, ptr %i.ak, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef %i.iw)
  %i.ix = load ptr, ptr %i.am, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef %i.ix)
  %i.iy = load i32, ptr %i.ao, align 4, !tbaa !291 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %_ZN4llvm16HexagonMCCheckerD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %i.ja = load ptr, ptr %i.an, align 8, !tbaa !294
  %i.jb = load ptr, ptr %i.ap, align 8, !tbaa !295
  %i.jc = zext i32 %i.iy to i64
  %i.jd = add nuw nsw i64 %i.jc, 31
  %i.je = lshr i64 %i.jd, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !118 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.jh = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.jg, %.lr.ph.i.i.i ], [ %i.jq, %bb.v ] ; 3 uses
  %i.ji = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.jj = or disjoint i32 %i.ji, %i.jh
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [56 x i8], ptr %i.ja, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !290
  call void @_ZNSt8_Rb_treeISt4pairIN4llvm10MCRegisterEbES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.jm, ptr noundef %i.jo)
  %i.jp = add i32 %.0.i3.i.i.i, -1
  %i.jq = and i32 %i.jp, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.jq, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.v, !llvm.loop !296

._crit_edge.i.i.i:                                ; preds = %bb.v, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.je
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10MCRegisterESt8multisetISt4pairIS2_bESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !297

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10MCRegisterESt8multisetISt4pairIS2_bESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ao, align 4, !tbaa !291 ; 2 uses
  %i.jr = icmp eq i32 %.pr.i.i, 0
  br i1 %i.jr, label %_ZN4llvm16HexagonMCCheckerD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10MCRegisterESt8multisetISt4pairIS2_bESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i.i
  %i.js = load ptr, ptr %i.an, align 8, !tbaa !294
  %i.jt = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jt, 56
  %i.jv = add nuw nsw i64 %i.jt, 31
  %i.jw = lshr i64 %i.jv, 3
  %i.jx = and i64 %i.jw, 1073741820
  %i.jy = add nuw nsw i64 %i.jx, %i.ju
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.js, i64 noundef %i.jy, i64 noundef 8) #17
  br label %_ZN4llvm16HexagonMCCheckerD2Ev.exit

_ZN4llvm16HexagonMCCheckerD2Ev.exit:              ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10MCRegisterESt8multisetISt4pairIS2_bESt4lessIS5_ESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %i.iq, label %bb.x, label %.thread

.thread:                                          ; preds = %_ZN4llvm16HexagonMCCheckerD2Ev.exit
  %i.jz = load i32, ptr %i.v, align 8, !tbaa !71
  %i.ka = add i32 %i.jz, -1
  store i32 %i.ka, ptr %i.v, align 8, !tbaa !71
  br label %.critedge

bb.x:                                             ; preds = %_ZN4llvm16HexagonMCCheckerD2Ev.exit
  %.not34 = icmp eq i64 %i.im, 0
  br i1 %.not34, label %.critedge, label %bb.r, !llvm.loop !298

.critedge:                                        ; preds = %bb.x, %bb.r, %.thread
  %i.kb = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.kc = load ptr, ptr %i.hy, align 8, !tbaa !151
  %i.kd = call noundef zeroext i1 @_ZN4llvm16HexagonMCShuffleERNS_9MCContextEbRKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(2208) %i.by, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(58) %i.kb, ptr noundef nonnull align 8 dereferenceable(320) %i.kc, ptr noundef nonnull align 8 dereferenceable(128) %4) #17 ; 0 uses
  %i.ke = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !299 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %i.aq, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.ar, align 8, !tbaa !71
  store i32 4, ptr %i.as, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.at, ptr %2, align 8, !tbaa !301
  store i64 0, ptr %i.au, align 8, !tbaa !302
  store i64 256, ptr %i.av, align 8, !tbaa !303
  %i.kh = load ptr, ptr %i.hy, align 8, !tbaa !151
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(320) %i.kh) #17, !inline_history !304
  %i.kl = load <2 x i32>, ptr %4, align 8, !tbaa !118
  store <2 x i32> %i.kl, ptr %i.cc, align 8, !tbaa !92
  %i.km = load ptr, ptr %i.ce, align 8, !tbaa !146 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 200 ; 3 uses
  %i.ko = load i32, ptr %i.v, align 8, !tbaa !71  ; 3 uses
  %i.kp = load i32, ptr %i.cl, align 4, !tbaa !92
  %i.kq = icmp ugt i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.y, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE20resize_for_overwriteEm.exit.i.i

bb.y:                                             ; preds = %.critedge
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 208 ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !71 ; 2 uses
  store i32 %i.ks, ptr %i.ci, align 8, !tbaa !92
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %i.ku = zext i32 %i.ko to i64
  %i.kv = add nuw nsw i64 %i.kt, %i.ku            ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 212
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !72
  %i.ky = zext i32 %i.kx to i64
  %i.kz = icmp samesign ugt i64 %i.kv, %i.ky
  br i1 %i.kz, label %bb.z, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i.i36

bb.z:                                             ; preds = %bb.y
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 216
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull %i.la, i64 noundef %i.kv, i64 noundef 16) #17
  %.pre.i.i.i.i39 = load i32, ptr %i.kr, align 8, !tbaa !71
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i39 to i64
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i.i36

_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i.i36: ; preds = %bb.z, %bb.y
  %.pre-phi.i.i.i.i = phi i64 [ %i.kt, %bb.y ], [ %.pre13.i.i.i.i, %bb.z ] ; 2 uses
  %i.lb = load ptr, ptr %i.kn, align 8, !tbaa !21 ; 2 uses
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %i.kv
  %.not11.i.i.i.i37 = icmp samesign eq i64 %i.kv, %.pre-phi.i.i.i.i
  br i1 %.not11.i.i.i.i37, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i.i36
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %.pre-phi.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.lf, %.lr.ph.i.i.i.i ], [ %i.ld, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  store i8 0, ptr %.012.i.i.i.i, align 8, !tbaa !305
  %i.le = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 0, ptr %i.le, align 8, !tbaa !92
  %i.lf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.lf, %i.lc
  br i1 %.not.i.i.i.i38, label %.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !308

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i.i36
  %i.lg = trunc i64 %i.kv to i32
  store i32 %i.lg, ptr %i.kr, align 8, !tbaa !71
  %.pre.i.i = load i32, ptr %i.v, align 8, !tbaa !71
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE20resize_for_overwriteEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9MCOperandEE20resize_for_overwriteEm.exit.i.i: ; preds = %.sink.split.i.i.i.i, %.critedge
  %i.lh = phi i32 [ %.pre.i.i, %.sink.split.i.i.i.i ], [ %i.ko, %.critedge ] ; 4 uses
  store i32 %i.lh, ptr %i.cl, align 4, !tbaa !92
  %i.li = load ptr, ptr %i.kn, align 8, !tbaa !21
  %i.lj = load i32, ptr %i.ci, align 8, !tbaa !92
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.lk ; 2 uses
  %i.lm = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ln = icmp ugt i32 %i.lh, 1
  br i1 %i.ln, label %bb.aa, label %bb.ab, !prof !111

bb.aa:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE20resize_for_overwriteEm.exit.i.i
  %i.lo = zext i32 %i.lh to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.lo, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ll, ptr align 8 %i.lm, i64 %.idx.i.i.i, i1 false)
  br label %_ZN4llvm10MCFragment7setInstERKNS_6MCInstE.exit.i

bb.ab:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE20resize_for_overwriteEm.exit.i.i
  %i.lp = icmp eq i32 %i.lh, 1
  br i1 %i.lp, label %bb.ac, label %_ZN4llvm10MCFragment7setInstERKNS_6MCInstE.exit.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.lm, i64 16, i1 false), !tbaa.struct !309
  br label %_ZN4llvm10MCFragment7setInstERKNS_6MCInstE.exit.i

_ZN4llvm10MCFragment7setInstERKNS_6MCInstE.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.lq = load ptr, ptr %2, align 8, !tbaa !301
  %i.lr = load i64, ptr %i.au, align 8, !tbaa !302
  call void @_ZN4llvm10MCFragment14setVarContentsENS_8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr %i.lq, i64 %i.lr) #17
  %i.ls = load ptr, ptr %1, align 8, !tbaa !21
  %i.lt = load i32, ptr %i.ar, align 8, !tbaa !71
  %i.lu = zext i32 %i.lt to i64
  call void @_ZN4llvm10MCFragment12setVarFixupsENS_8ArrayRefINS_7MCFixupEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr %i.ls, i64 %i.lu) #17
  %i.lv = load ptr, ptr %2, align 8, !tbaa !301   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.at
  br i1 %i.lw, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm10MCFragment7setInstERKNS_6MCInstE.exit.i
  call void @free(ptr noundef %i.lv) #17
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i:        ; preds = %bb.ad, %_ZN4llvm10MCFragment7setInstERKNS_6MCInstE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.lx = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.aq
  br i1 %i.ly, label %_ZNK12_GLOBAL__N_117HexagonAsmBackend18ReplaceInstructionERN4llvm13MCCodeEmitterERNS1_10MCFragmentERNS1_6MCInstE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i
  call void @free(ptr noundef %i.lx) #17
  br label %_ZNK12_GLOBAL__N_117HexagonAsmBackend18ReplaceInstructionERN4llvm13MCCodeEmitterERNS1_10MCFragmentERNS1_6MCInstE.exit

_ZNK12_GLOBAL__N_117HexagonAsmBackend18ReplaceInstructionERN4llvm13MCCodeEmitterERNS1_10MCFragmentERNS1_6MCInstE.exit: ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.af

bb.af:                                            ; preds = %_ZNK12_GLOBAL__N_117HexagonAsmBackend18ReplaceInstructionERN4llvm13MCCodeEmitterERNS1_10MCFragmentERNS1_6MCInstE.exit, %_ZN4llvm6any_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPKNS_8MCSymbolES4_EEEEZNK12_GLOBAL__N_117HexagonAsmBackend12finishLayoutEvEUlRS4_E_EEbOT_T0_.exit, %_ZNK4llvm10MCFragment7getInstEv.exit
  %i.lz = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.t
  br i1 %i.ma, label %_ZN4llvm6MCInstD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.lz) #17
  br label %_ZN4llvm6MCInstD2Ev.exit

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.loopexit

bb.ah:                                            ; preds = %.lr.ph72
  %.not122 = icmp eq i64 %i.bt, 0
  br i1 %.not122, label %.loopexit, label %.lr.ph72, !llvm.loop !311

.loopexit:                                        ; preds = %.lr.ph72, %bb.ah, %_ZN4llvm6MCInstD2Ev.exit, %bb.f, %.lr.ph77
end_hunk_1
