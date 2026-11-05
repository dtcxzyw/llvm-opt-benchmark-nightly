Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zOut?download=true
inline.NumInlined: 358
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy:bb.a
  %i.agf = lshr i32 %i.aga, 8
  %i.agg = xor i32 %i.age, %i.agf
  store i32 %i.agg, ptr %i.afz, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit271

bb.ec:                                            ; preds = %bb.dz
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !72
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !66 ; 3 uses
  %i.agl = icmp eq i64 %i.agi, %i.agk
  br i1 %i.agl, label %bb.ed, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i267

bb.ed:                                            ; preds = %bb.ec
  %i.agm = call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.agm, align 16, !tbaa !10
  call void @__cxa_throw(ptr nonnull %i.agm, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i267: ; preds = %bb.ec
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !73
  %i.agp = add i64 %i.agk, 1
  store i64 %i.agp, ptr %i.agj, align 8, !tbaa !66
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 %i.agk
  store i8 0, ptr %i.agq, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit271

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit271: ; preds = %bb.dy, %_ZN10COutBuffer9WriteByteEh.exit.i268, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i267
  %i.agr = load i8, ptr %i.o, align 8, !tbaa !61, !range !62, !noundef !63
  %i.ags = trunc nuw i8 %i.agr to i1
  br i1 %i.ags, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit271
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !64
  %i.agv = add i64 %i.agu, 1
  store i64 %i.agv, ptr %i.agt, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit170

bb.ef:                                            ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit271
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !65, !range !62, !noundef !63
  %i.agy = trunc nuw i8 %i.agx to i1
  br i1 %i.agy, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !67
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !68 ; 2 uses
  %i.ahd = add i32 %i.ahc, 1
  store i32 %i.ahd, ptr %i.ahb, align 8, !tbaa !68
  %i.ahe = zext i32 %i.ahc to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.ahe
  store i8 0, ptr %i.ahf, align 1, !tbaa !49
  %i.ahg = load i32, ptr %i.ahb, align 8, !tbaa !68
  %i.ahh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !69
  %i.ahj = icmp eq i32 %i.ahg, %i.ahi
  br i1 %i.ahj, label %bb.eh, label %_ZN10COutBuffer9WriteByteEh.exit.i273

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.agz)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i273

_ZN10COutBuffer9WriteByteEh.exit.i273:            ; preds = %bb.eh, %bb.eg
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !71 ; 2 uses
  %i.ahm = and i32 %i.ahl, 255
  %i.ahn = zext nneg i32 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !10
  %i.ahq = lshr i32 %i.ahl, 8
  %i.ahr = xor i32 %i.ahp, %i.ahq
  store i32 %i.ahr, ptr %i.ahk, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit170

bb.ei:                                            ; preds = %bb.ef
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !72
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !66 ; 3 uses
  %i.ahw = icmp eq i64 %i.aht, %i.ahv
  br i1 %i.ahw, label %bb.ej, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i272

bb.ej:                                            ; preds = %bb.ei
  %i.ahx = call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.ahx, align 16, !tbaa !10
  call void @__cxa_throw(ptr nonnull %i.ahx, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i272: ; preds = %bb.ei
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !73
  %i.aia = add i64 %i.ahv, 1
  store i64 %i.aia, ptr %i.ahu, align 8, !tbaa !66
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %i.ahv
  store i8 0, ptr %i.aib, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit170

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit170: ; preds = %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i272, %_ZN10COutBuffer9WriteByteEh.exit.i273, %bb.ee, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i166, %_ZN10COutBuffer9WriteByteEh.exit.i167, %bb.ac
  ret void

bb.ek:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp299, %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn147.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp534, %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn144.pn, %.loopexit.split-lp299 ], [ %lpad.loopexit.split-lp513, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn147.pn
}

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !231 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 7 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %4 = alloca %class.CBuffer, align 8             ; 8 uses
  %5 = alloca %"struct.NArchive::N7z::CCompressionMethodMode", align 8 ; 15 uses
  %6 = alloca %"class.NArchive::N7z::CEncoder", align 8 ; 7 uses
  %7 = alloca %class.CRecordVector.3, align 8     ; 12 uses
  %8 = alloca %class.CObjectVector.5, align 8     ; 13 uses
  %9 = alloca %class.CRecordVector.4, align 8     ; 9 uses
  %10 = alloca %class.CRecordVector.2, align 8    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !76   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.g = load i32, ptr %i.f, align 4, !tbaa !76   ; 2 uses
  %i.h = icmp eq i32 %i.g, %i.e
  %i.i = icmp eq i32 %i.g, 0
  %spec.select.i.i = or i1 %i.h, %i.i
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.k = load i32, ptr %i.j, align 4, !tbaa !76   ; 2 uses
  %i.l = icmp eq i32 %i.k, %i.e
  %i.m = icmp eq i32 %i.k, 0
  %spec.select.i5.i = or i1 %i.l, %i.m
  br i1 %spec.select.i5.i, label %bb.c, label %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76   ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.e
  %i.q = icmp eq i32 %i.o, 0
  %spec.select.i6.i = or i1 %i.p, %i.q
  br i1 %spec.select.i6.i, label %bb.d, label %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.s = load i32, ptr %i.r, align 4, !tbaa !76   ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.e
  %i.u = icmp eq i32 %i.s, 0
  %spec.select.i7.i = or i1 %i.t, %i.u
  br i1 %spec.select.i7.i, label %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit, label %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit.thread

_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76   ; 2 uses
  %i.x = icmp eq i32 %i.e, %i.w
  %i.y = icmp eq i32 %i.w, 0
  %spec.select.i = or i1 %i.x, %i.y
  br i1 %spec.select.i, label %bb.e, label %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit.thread

bb.e:                                             ; preds = %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !76
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond.i = select i1 %i.ab, i1 %i.ae, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond7.i = select i1 %or.cond.i, i1 %i.ah, i1 false
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond11.i = select i1 %or.cond7.i, i1 %i.ak, i1 false
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.am = load i32, ptr %i.al, align 4
  %i.an = or i32 %i.am, %i.e
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond = select i1 %or.cond11.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.f, label %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call i32 @CrcCalc(ptr noundef null, i64 noundef 0)
  br label %bb.bc

_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread: ; preds = %bb.e
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !76
  %11 = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.at = load i8, ptr %i.as, align 4, !tbaa !107, !range !62
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %11, label %_ZNK8NArchive3N7z22CCompressionMethodMode7IsEmptyEv.exit, label %bb.h

_ZNK8NArchive3N7z22CCompressionMethodMode7IsEmptyEv.exit: ; preds = %bb.g
  br i1 %i.au, label %bb.j, label %.thread

bb.h:                                             ; preds = %bb.g
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load i8, ptr %3, align 1, !tbaa !232, !range !62, !noundef !63
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZNK8NArchive3N7z22CCompressionMethodMode7IsEmptyEv.exit, %bb.i, %bb.h
  br label %.thread

.thread:                                          ; preds = %_ZNK8NArchive3N7z22CCompressionMethodMode7IsEmptyEv.exit, %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread, %bb.i, %bb.j
  %.06490 = phi ptr [ %2, %bb.j ], [ %2, %bb.i ], [ null, %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread ], [ null, %_ZNK8NArchive3N7z22CCompressionMethodMode7IsEmptyEv.exit ] ; 5 uses
  %.053 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread ], [ false, %_ZNK8NArchive3N7z22CCompressionMethodMode7IsEmptyEv.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46
  tail call void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.ax, ptr noundef %i.az)
  tail call void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ax)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i32 -1, ptr %i.ba, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bc = zext i1 %.053 to i8
  store i8 %i.bc, ptr %i.bb, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  store i8 1, ptr %i.bd, align 1, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i64 0, ptr %i.be, align 8, !tbaa !64
  call void @_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %.053, label %bb.k, label %bb.ba

bb.k:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %4, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !64 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #18
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre.pre = load i64, ptr %i.be, align 8, !tbaa !64
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !83
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !80
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.m, %bb.k
  %i.bk = phi i64 [ %.pre.pre, %bb.m ], [ 0, %bb.k ]
  %i.bl = phi ptr [ %i.bi, %bb.m ], [ null, %bb.k ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 %i.bk, ptr %i.bn, align 8, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !66
  store i8 0, ptr %i.bb, align 8, !tbaa !61
  store i8 0, ptr %i.bd, align 1, !tbaa !65
  invoke void @_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !64
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !66
  %.not70 = icmp eq i64 %i.bp, %i.bq
  br i1 %.not70, label %bb.p, label %bb.as

bb.o:                                             ; preds = %bb.l, %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.br = phi ptr [ null, %bb.l ], [ %i.bl, %_ZN7CBufferIhE11SetCapacityEm.exit ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN8NArchive3N7z22CCompressionMethodModeC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.06490, i64 68
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !107, !range !62, !noundef !63
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i8 %i.bu, ptr %i.bv, align 4, !tbaa !107
  %i.bw = getelementptr inbounds nuw i8, ptr %.06490, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 4 uses
  %i.by = icmp eq ptr %.06490, %5
  br i1 %i.by, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !99
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !100 ; 2 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !102
  %i.cb = getelementptr inbounds nuw i8, ptr %.06490, i64 80 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !99 ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1                    ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !108
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = zext nneg i32 %i.cd to i64
  %i.ci = icmp slt i32 %i.cc, -1
  %i.cj = shl nuw nsw i64 %i.ch, 2
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj
  %i.cl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #18
          to label %.noexc80 unwind label %bb.y   ; 10 uses

.noexc80:                                         ; preds = %bb.s
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = load i32, ptr %i.ce, align 4, !tbaa !108
  %i.co = icmp sgt i32 %i.cn, 0
  %.pre7.i = load i32, ptr %i.bz, align 8, !tbaa !99 ; 5 uses
  br i1 %i.co, label %.preheader.i.i, label %bb.t

.preheader.i.i:                                   ; preds = %.noexc80
  %i.cp = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %i.bx, align 8, !tbaa !100 ; 9 uses
  br i1 %i.cp, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i120 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  %i.cq = sub i64 %.pre.i.i120, %i.cm
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond135 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond135, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !102
  %wide.load121 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !102
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load, ptr %i.ct, align 4, !tbaa !102
  store <4 x i32> %wide.load121, ptr %i.cu, align 4, !tbaa !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !102
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i.i.prol
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !102
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !226

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.cz = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.db = icmp eq ptr %.pre.i.i, null
  br i1 %i.db, label %bb.t, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !102
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !102
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !102
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !102
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !102
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i.1
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !102
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !102
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i.2
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !102
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !227

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #19
  %.pre.i = load i32, ptr %i.bz, align 8, !tbaa !99
  br label %bb.t

end_hunk_0
