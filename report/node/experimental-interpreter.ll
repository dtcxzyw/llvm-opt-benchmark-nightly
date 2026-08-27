Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/experimental-interpreter?download=true
inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21RunActiveThreadsToEndEv:bb.a
_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i: ; preds = %bb.as, %bb.ar, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i
  %i.ht = load i8, ptr %i.y, align 8, !range !28, !noundef !29
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i
  %i.hv = load ptr, ptr %i.z, align 8
  %i.hw = load ptr, ptr %i.aa, align 8
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 5                 ; 5 uses
  %i.ib = and i64 %i.ia, 2305843009213693950
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i5.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8
  %.not7.i.i6.i = icmp ugt i64 %i.if, %i.ia
  br i1 %.not7.i.i6.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.8.0.copyload, i64 8
  store i64 %i.ia, ptr %i.ig, align 8
  %i.ih = load ptr, ptr %i.ab, align 8
  store ptr %i.ih, ptr %.sroa.4.sroa.8.0.copyload, align 8
  store ptr %.sroa.4.sroa.8.0.copyload, ptr %i.ab, align 8
  %.pre.i = load ptr, ptr %i.z, align 8
  %.pre9.i = load ptr, ptr %i.aa, align 8
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.pre-phi16.i = phi i64 [ %i.ia, %bb.at ], [ %i.ia, %bb.av ], [ %.pre15.i, %bb.aw ] ; 3 uses
  %i.ii = and i64 %.pre-phi16.i, 4611686018427387900
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i
  %i.ik = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i7.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i64, ptr %i.il, align 8
  %.not7.i.i8.i = icmp ugt i64 %i.im, %.pre-phi16.i
  br i1 %.not7.i.i8.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload, i64 8
  store i64 %.pre-phi16.i, ptr %i.in, align 8
  %i.io = load ptr, ptr %i.ac, align 8
  store ptr %i.io, ptr %.sroa.4.sroa.5.0.copyload, align 8
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %bb.az, %bb.ay, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.ip = icmp sgt i64 %indvars.iv63.i, 1
  br i1 %i.ip, label %bb.aa, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.z
  store i32 0, ptr %i.e, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  br label %bb.b

.critedge:                                        ; preds = %bb.j, %bb.c, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %bb.f, %_ZNK2v84base6VectorIKhE6lengthEv.exit14, %.thread24
  %.4 = phi i32 [ %.3.i.ph, %.thread24 ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit14 ], [ 1, %bb.f ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ 1, %bb.c ], [ 1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.sroa.1146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.1141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.1156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph, %bb.ee
  %i.al = phi i32 [ %i.c, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph ], [ %.pr, %bb.ee ]
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !75
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [56 x i8], ptr %.val.i, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false)
  store i32 %i.am, ptr %i.b, align 4, !noalias !75
  %i.ap = load i32, ptr %1, align 8               ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i6, label %._crit_edge.i, !prof !32

._crit_edge.i:                                    ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #9
  unreachable

.lr.ph.i6:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i
  %i.ar = phi i32 [ %i.pp, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ], [ %i.ap, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit ] ; 11 uses
  %i.as = load i64, ptr %i.f, align 8
  %i.at = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %.lr.ph.i6
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #9
  unreachable

bb.c:                                             ; preds = %.lr.ph.i6
  %i.av = load i64, ptr %i.g, align 8
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.g, align 8
  %i.ax = load i32, ptr %i.h, align 8             ; 4 uses
  %.val47.i = load i32, ptr %i.i, align 8         ; 3 uses
  %.val48.i = load ptr, ptr %i.j, align 8
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val48.i, i64 %i.at ; 3 uses
  %.pn.in.idx.i.i = select i1 %i.ay, i64 0, i64 4
  %.pn.in.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.pn.in.idx.i.i
  %.pn.i.i = load i32, ptr %.pn.in.i.i, align 4
  %.0.i.i = icmp eq i32 %.pn.i.i, %.val47.i
  br i1 %.0.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %1)
  br label %bb.ee

bb.e:                                             ; preds = %bb.c
  switch i32 %i.ax, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 %.val47.i, ptr %i.az, align 4
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %.val47.i, ptr %i.ba, align 4
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.bb = load ptr, ptr %i.e, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %i.bc, align 4            ; 7 uses
  %.sroa.0257.0.extract.trunc.i = trunc i64 %i.bd to i32
  %.sroa.4258.0.extract.shift.i = lshr i64 %i.bd, 32 ; 5 uses
  %.sroa.4258.0.extract.trunc.i = trunc nuw i64 %.sroa.4258.0.extract.shift.i to i32 ; 6 uses
  switch i32 %.sroa.0257.0.extract.trunc.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.ac
    i32 6, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i
    i32 0, label %bb.cp
    i32 8, label %bb.cs
    i32 2, label %bb.ct
    i32 7, label %bb.cw
    i32 9, label %bb.db
    i32 10, label %bb.db
    i32 11, label %bb.db
    i32 12, label %bb.db
    i32 13, label %bb.dc
    i32 14, label %bb.dd
    i32 15, label %bb.dg
    i32 16, label %bb.dh
    i32 17, label %bb.dk
    i32 18, label %bb.ds
  ]

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.be = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bf = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.bg = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.aj, align 8
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.ad, align 4
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [56 x i8], ptr %i.bi, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.ee

bb.j:                                             ; preds = %bb.h
  %i.bm = shl nsw i32 %i.bg, 1
  %i.bn = or disjoint i32 %i.bm, 1                ; 2 uses
  %i.bo = icmp sgt i32 %i.bg, -1
  br i1 %i.bo, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = mul nuw nsw i64 %i.bp, 56               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sub i64 %i.bs, %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 noundef %i.bq) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bx = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.m ], [ %i.bu, %bb.l ] ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = add i64 %i.bx, %i.bq
  store i64 %i.bz, ptr %i.bt, align 8
  %i.ca = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cc = load ptr, ptr %i.aj, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = mul nuw nsw i64 %i.cd, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.n, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cf = phi i32 [ %i.ca, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.n ] ; 2 uses
  store ptr %i.by, ptr %i.aj, align 8
  store i32 %i.bn, ptr %i.ak, align 8
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ad, align 4
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.by, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.ee

bb.o:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8 ; 5 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 7 uses
  %i.cj = load i32, ptr %i.i, align 8             ; 10 uses
  switch i32 %.sroa.4258.0.extract.trunc.i, label %bb.aa [
    i32 1, label %.split458.i
    i32 3, label %bb.p
    i32 0, label %bb.r
    i32 2, label %bb.s
    i32 4, label %bb.u
    i32 5, label %.loopexit50.i.i
  ]

.split458.i:                                      ; preds = %bb.o
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.critedge.i, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cl, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, label %bb.q, !prof !30

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !78
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i:        ; preds = %bb.p
  %i.cm = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cn = icmp eq i32 %i.cj, %i.cm
  br i1 %i.cn, label %.critedge.i, label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.co = icmp eq i32 %i.cj, 0
  br i1 %i.co, label %.critedge.i, label %.split.i

.split.i:                                         ; preds = %bb.r
  %i.cp = sext i32 %i.cj to i64
  %i.cq = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1
  switch i8 %i.cs, label %bb.ab [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
  ]

bb.s:                                             ; preds = %bb.o
  %i.ct = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.ct, label %_ZNK2v84base6VectorIKhE6lengthEv.exit16.i.i, label %bb.t, !prof !30

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !78
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit16.i.i:      ; preds = %bb.s
  %i.cu = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cv = icmp eq i32 %i.cj, %i.cu
  br i1 %i.cv, label %.critedge.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i

.loopexit50.i.i:                                  ; preds = %bb.o
  br label %bb.u

bb.u:                                             ; preds = %.loopexit50.i.i, %bb.o
  %accumulator.tr.lcssa43.i.i = phi i1 [ false, %bb.o ], [ true, %.loopexit50.i.i ] ; 2 uses
  %i.cw = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cw, label %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i, label %bb.v, !prof !30

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !78
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i:      ; preds = %bb.u
  %i.cx = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cy = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.cy, label %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, label %bb.w

_ZNK2v84base6VectorIKhE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i
  br i1 %accumulator.tr.lcssa43.i.i, label %.critedge.i, label %bb.ab

bb.w:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i
  %i.cz = icmp eq i32 %i.cj, 0
  br i1 %i.cz, label %bb.x, label %_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i

bb.x:                                             ; preds = %bb.w
  %i.da = load i8, ptr %.sroa.0.0.copyload.i, align 1 ; 3 uses
  %i.db = or i8 %i.da, 32
  %i.dc = add i8 %i.db, -97
  %i.dd = icmp ult i8 %i.dc, 26
  %i.de = add i8 %i.da, -48
  %i.df = icmp ult i8 %i.de, 10
  %i.dg = or i1 %i.df, %i.dd
  %i.dh = icmp eq i8 %i.da, 95
  %i.di = or i1 %i.dh, %i.dg
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i:      ; preds = %bb.w
  %i.dj = icmp eq i32 %i.cj, %i.cx
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i
  %i.dk = zext nneg i32 %i.cj to i64
  %i.dl = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  %i.dn = load i8, ptr %i.dm, align 1             ; 3 uses
  %i.do = or i8 %i.dn, 32
  %i.dp = add i8 %i.do, -97
  %i.dq = icmp ult i8 %i.dp, 26
  %i.dr = add i8 %i.dn, -48
  %i.ds = icmp ult i8 %i.dr, 10
  %i.dt = or i1 %i.ds, %i.dq
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv:bb.a
_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i: ; preds = %bb.bq, %bb.bp
  %i.jg = phi i64 [ %.pre.i.i.i.i.i25.i.i, %bb.bq ], [ %i.jd, %bb.bp ] ; 2 uses
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = add i64 %i.jg, %i.iz
  store i64 %i.ji, ptr %i.jc, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE22NewUninitializedThreadEi.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE22NewUninitializedThreadEi.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i, %bb.bm, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i, %bb.bf, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i.i
  %.sroa.11228.0.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %.0.i.i.i.i, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %.0.i.i.i.i, %bb.bf ], [ %i.er, %bb.bm ], [ %i.jh, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.24.0.i = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %i.iq, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %i.ic, %bb.bf ], [ null, %bb.bm ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.21.0.i = phi ptr [ %.0.i.i13.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %.0.i.i13.i.i, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %.0.i.i13.i.i, %bb.bf ], [ null, %bb.bm ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.18.0.i = phi ptr [ %.0.i.i9.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %.0.i.i9.i.i, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %.0.i.i9.i.i, %bb.bf ], [ null, %bb.bm ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.14.0.i = phi ptr [ %i.gj, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %i.gj, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %i.gj, %bb.bf ], [ null, %bb.bm ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.val57.i = load i32, ptr %i.p, align 8         ; 3 uses
  %.sroa.1204.0.copyload.i = load ptr, ptr %.sroa.1146.0..sroa_idx.i, align 8 ; 2 uses
  %i.jj = icmp ugt i32 %.val57.i, 1
  br i1 %i.jj, label %bb.br, label %bb.bs, !prof !30

bb.br:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE22NewUninitializedThreadEi.exit.i
  %i.jk = sext i32 %.val57.i to i64
  %.idx.i = shl nuw nsw i64 %i.jk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.11228.0.i, ptr align 4 %.sroa.1204.0.copyload.i, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.bs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE22NewUninitializedThreadEi.exit.i
  %i.jl = icmp eq i32 %.val57.i, 1
  br i1 %i.jl, label %bb.bt, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.jm = load i32, ptr %.sroa.1204.0.copyload.i, align 4
  store i32 %i.jm, ptr %.sroa.11228.0.i, align 4
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.bt, %bb.bs, %bb.br
  %i.jn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.bu, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

bb.bu:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %.val63.i = load i32, ptr %i.v, align 4         ; 3 uses
  %.sroa.1193.0.copyload.i = load ptr, ptr %.sroa.1156.0..sroa_idx.i, align 8 ; 2 uses
  %i.jp = icmp ugt i32 %.val63.i, 1
  br i1 %i.jp, label %bb.bv, label %bb.bw, !prof !30

bb.bv:                                            ; preds = %bb.bu
  %i.jq = sext i32 %.val63.i to i64
  %.idx291.i = shl nuw nsw i64 %i.jq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.18.0.i, ptr align 8 %.sroa.1193.0.copyload.i, i64 %.idx291.i, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.jr = icmp eq i32 %.val63.i, 1
  br i1 %i.jr, label %bb.bx, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.bx:                                            ; preds = %bb.bw
  %i.js = load i64, ptr %.sroa.1193.0.copyload.i, align 8
  store i64 %i.js, ptr %.sroa.18.0.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.bx, %bb.bw, %bb.bv
  %.val69.i = load i32, ptr %i.p, align 8         ; 3 uses
  %.sroa.1182.0.copyload.i = load ptr, ptr %.sroa.1141.0..sroa_idx.i, align 8 ; 2 uses
  %i.jt = icmp ugt i32 %.val69.i, 1
  br i1 %i.jt, label %bb.by, label %bb.bz, !prof !30

bb.by:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.ju = sext i32 %.val69.i to i64
  %.idx292.i = shl nuw nsw i64 %i.ju, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.21.0.i, ptr align 8 %.sroa.1182.0.copyload.i, i64 %.idx292.i, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i

bb.bz:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.jv = icmp eq i32 %.val69.i, 1
  br i1 %i.jv, label %bb.ca, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i

bb.ca:                                            ; preds = %bb.bz
  %i.jw = load i64, ptr %.sroa.1182.0.copyload.i, align 8
  store i64 %i.jw, ptr %.sroa.21.0.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i:            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.jx = load i8, ptr %i.k, align 8, !range !28, !noundef !29
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i, label %bb.cb

bb.cb:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i
  %.val77.i = load ptr, ptr %i.m, align 8
  %.val78.i = load ptr, ptr %i.l, align 8
  %i.jz = ptrtoint ptr %.val78.i to i64
  %i.ka = ptrtoint ptr %.val77.i to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 2 uses
  %.sroa.1171.0.copyload.i = load ptr, ptr %.sroa.1.0..sroa_idx.i, align 8 ; 2 uses
  %i.kc = ashr exact i64 %i.kb, 3                 ; 2 uses
  %i.kd = icmp sgt i64 %i.kc, 4
  br i1 %i.kd, label %bb.cc, label %bb.cd, !prof !30

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.14.0.i, ptr align 4 %.sroa.1171.0.copyload.i, i64 %i.kc, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i

bb.cd:                                            ; preds = %bb.cb
  %i.ke = icmp eq i64 %i.kb, 32
  br i1 %i.ke, label %bb.ce, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i

bb.ce:                                            ; preds = %bb.cd
  %i.kf = load i32, ptr %.sroa.1171.0.copyload.i, align 4
  store i32 %i.kf, ptr %.sroa.14.0.i, align 4
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i:            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.val86.i = load ptr, ptr %i.m, align 8
  %.val87.i = load ptr, ptr %i.l, align 8
  %i.kg = ptrtoint ptr %.val87.i to i64
  %i.kh = ptrtoint ptr %.val86.i to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 2 uses
  %.sroa.1161.0.copyload.i = load ptr, ptr %.sroa.1136.0..sroa_idx.i, align 8 ; 2 uses
  %i.kj = ashr exact i64 %i.ki, 2                 ; 2 uses
  %i.kk = icmp sgt i64 %i.kj, 8
  br i1 %i.kk, label %bb.cf, label %bb.cg, !prof !30

bb.cf:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.24.0.i, ptr align 8 %.sroa.1161.0.copyload.i, i64 %i.kj, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

bb.cg:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i
  %i.kl = icmp eq i64 %i.ki, 32
  br i1 %i.kl, label %bb.ch, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

bb.ch:                                            ; preds = %bb.cg
  %i.km = load i64, ptr %.sroa.1161.0.copyload.i, align 8
  store i64 %i.km, ptr %.sroa.24.0.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i:            ; preds = %bb.ch, %bb.cg, %bb.cf, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %i.kn = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ko = load i32, ptr %i.b, align 4             ; 2 uses
  %i.kp = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.kq = icmp slt i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i
  %i.kr = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i

bb.cj:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i
  %i.ks = shl nsw i32 %i.kp, 1
  %i.kt = or disjoint i32 %i.ks, 1                ; 2 uses
  %i.ku = icmp sgt i32 %i.kp, -1
  br i1 %i.ku, label %bb.cl, label %bb.ck, !prof !30

bb.ck:                                            ; preds = %bb.cj
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.kv = zext nneg i32 %i.kt to i64
  %i.kw = mul nuw nsw i64 %i.kv, 56               ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 3 uses
  %i.la = load i64, ptr %i.kz, align 8            ; 2 uses
  %i.lb = sub i64 %i.ky, %i.la
  %i.lc = icmp ugt i64 %i.kw, %i.lb
  br i1 %i.lc, label %bb.cm, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i, !prof !31

bb.cm:                                            ; preds = %bb.cl
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.kn, i64 noundef %i.kw) #8
  %.pre.i.i.i.i.i.i117.i = load i64, ptr %i.kz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i: ; preds = %bb.cm, %bb.cl
  %i.ld = phi i64 [ %.pre.i.i.i.i.i.i117.i, %bb.cm ], [ %i.la, %bb.cl ] ; 2 uses
  %i.le = inttoptr i64 %i.ld to ptr               ; 3 uses
  %i.lf = add i64 %i.ld, %i.kw
  store i64 %i.lf, ptr %i.kz, align 8
  %i.lg = load i32, ptr %i.b, align 4             ; 3 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %bb.cn, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i

bb.cn:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i
  %i.li = load ptr, ptr %i.a, align 8
  %i.lj = zext nneg i32 %i.lg to i64
  %i.lk = mul nuw nsw i64 %i.lj, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr align 1 %i.li, i64 %i.lk, i1 false)
  %.pre.i.i.i116.i = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i: ; preds = %bb.cn, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i
  %i.ll = phi i32 [ %i.lg, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i ], [ %.pre.i.i.i116.i, %bb.cn ]
  store ptr %i.le, ptr %i.a, align 8
  store i32 %i.kt, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i, %bb.ci
  %.sink522.i = phi i32 [ %i.ko, %bb.ci ], [ %i.ll, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i ] ; 2 uses
  %.sink519.i = phi ptr [ %i.kr, %bb.ci ], [ %i.le, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i ]
  %i.lm = add nsw i32 %.sink522.i, 1
  store i32 %i.lm, ptr %i.b, align 4
  %i.ln = sext i32 %.sink522.i to i64
  %i.lo = getelementptr inbounds [56 x i8], ptr %.sink519.i, i64 %i.ln ; 7 uses
  store i64 %.sroa.4258.0.extract.shift.i, ptr %i.lo, align 8
  %.sroa.11228.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %.sroa.11228.0.i, ptr %.sroa.11228.0..sroa_idx229.i, align 8
  %.sroa.14.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store ptr %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx235.i, align 8
  %.sroa.18.0..sroa_idx240.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store ptr %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx240.i, align 8
  %.sroa.21.0..sroa_idx244.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store ptr %.sroa.21.0.i, ptr %.sroa.21.0..sroa_idx244.i, align 8
  %.sroa.24.0..sroa_idx247.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  store ptr %.sroa.24.0.i, ptr %.sroa.24.0..sroa_idx247.i, align 8
  %.sroa.27.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  store i32 %i.ax, ptr %.sroa.27.0..sroa_idx249.i, align 8
  %i.lp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.co, label %.thread.i

bb.co:                                            ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i
  %i.lr = load i32, ptr %i.ad, align 4
  %i.ls = load i32, ptr %i.b, align 4
  %i.lt = add nsw i32 %i.ls, %i.lr
  %i.lu = sext i32 %i.lt to i64
  %i.lv = load i64, ptr %i.ae, align 8
  %i.lw = mul i64 %i.lv, %i.lu
  %i.lx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1616), align 16
  %i.ly = shl i64 %i.lx, 20
  %i.lz = icmp ult i64 %i.lw, %i.ly
  br i1 %i.lz, label %.thread.i, label %.loopexit.sink.split

.thread.i:                                        ; preds = %bb.co, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i
  %i.ma = load i32, ptr %1, align 8
  %i.mb = add nsw i32 %i.ma, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.cp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.val90.i = load i8, ptr %i.ai, align 8, !range !28, !noundef !29
  %i.mc = trunc nuw i8 %.val90.i to i1
  br i1 %i.mc, label %bb.cq, label %.thread459.i

bb.cq:                                            ; preds = %bb.cp
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %i.ah)
  %.val.i.pre.i = load i8, ptr %i.ai, align 8, !range !28
  %i.md = trunc nuw i8 %.val.i.pre.i to i1
  br i1 %i.md, label %bb.cr, label %.thread459.i

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

.thread459.i:                                     ; preds = %bb.cq, %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i8 1, ptr %i.ai, align 8
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i: ; preds = %.thread459.i, %bb.cr
  %.val42.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.val46.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.me = sext i32 %.val46.i to i64
  %.idx376.i = mul nsw i64 %i.me, 56
  %i.mf = getelementptr inbounds i8, ptr %.val42.i, i64 %.idx376.i
  %.not40371.i = icmp eq i32 %.val46.i, 0
  br i1 %.not40371.i, label %.thread, label %.lr.ph373.i

.lr.ph373.i:                                      ; preds = %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i, %.lr.ph373.i
  %.031372.i = phi ptr [ %i.mg, %.lr.ph373.i ], [ %.val42.i, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ] ; 2 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %.031372.i)
  %i.mg = getelementptr inbounds nuw i8, ptr %.031372.i, i64 56 ; 2 uses
  %.not40.i = icmp eq ptr %i.mg, %i.mf
  br i1 %.not40.i, label %.thread, label %.lr.ph373.i

bb.cs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.mh = load i64, ptr %i.g, align 8
  %.sroa.1156.0.copyload.i = load ptr, ptr %.sroa.1156.0..sroa_idx.i, align 8
  %i.mi = ashr i64 %i.bd, 32
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1156.0.copyload.i, i64 %i.mi
  store i64 %i.mh, ptr %i.mj, align 8
  %i.mk = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.ct:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.ml = load i32, ptr %i.p, align 8
  %i.mm = icmp ugt i32 %i.ml, %.sroa.4258.0.extract.trunc.i
  br i1 %i.mm, label %bb.cv, label %bb.cu, !prof !30

bb.cu:                                            ; preds = %bb.ct
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #9
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %.sroa.1151.0.copyload.i = load ptr, ptr %.sroa.1146.0..sroa_idx.i, align 8
  %i.mn = ashr i64 %i.bd, 32
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1151.0.copyload.i, i64 %i.mn
  store i32 -1, ptr %i.mo, align 4
  %i.mp = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.cw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.mq = load i32, ptr %i.p, align 8
  %i.mr = icmp ugt i32 %i.mq, %.sroa.4258.0.extract.trunc.i
  br i1 %i.mr, label %bb.cy, label %bb.cx, !prof !30

bb.cx:                                            ; preds = %bb.cw
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #9
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.ms = load i32, ptr %i.i, align 8
  %.sroa.1146.0.copyload.i = load ptr, ptr %.sroa.1146.0..sroa_idx.i, align 8
  %i.mt = ashr i64 %i.bd, 32                      ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1146.0.copyload.i, i64 %i.mt
  store i32 %i.ms, ptr %i.mu, align 4
  %i.mv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.mx = load i64, ptr %i.g, align 8
  %.sroa.1141.0.copyload.i = load ptr, ptr %.sroa.1141.0..sroa_idx.i, align 8
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1141.0.copyload.i, i64 %i.mt
  store i64 %i.mx, ptr %i.my, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.mz = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.db:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #9
  unreachable

bb.dc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  store i32 1, ptr %i.h, align 8
  %i.na = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.dd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.nb = icmp eq i32 %i.ax, 1
  br i1 %i.nb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %1)
  br label %bb.ee

bb.df:                                            ; preds = %bb.dd
  %i.nc = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.dg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.nd = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.dh:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.val89.i = load i8, ptr %i.ai, align 8, !range !28, !noundef !29
  %i.ne = trunc nuw i8 %.val89.i to i1
  br i1 %i.ne, label %bb.di, label %.thread461.i

bb.di:                                            ; preds = %bb.dh
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %i.ah)
  %.val.i127.pre.i = load i8, ptr %i.ai, align 8, !range !28
  %i.nf = trunc nuw i8 %.val.i127.pre.i to i1
  br i1 %i.nf, label %bb.dj, label %.thread461.i

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i

.thread461.i:                                     ; preds = %bb.di, %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i8 1, ptr %i.ai, align 8
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i

_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i: ; preds = %.thread461.i, %bb.dj
  %.val.i7 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.val44.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.ng = sext i32 %.val44.i to i64
  %.idx375.i = mul nsw i64 %i.ng, 56
  %i.nh = getelementptr inbounds i8, ptr %.val.i7, i64 %.idx375.i
  %.not39367.i = icmp eq i32 %.val44.i, 0
  br i1 %.not39367.i, label %.thread, label %.lr.ph369.i

.lr.ph369.i:                                      ; preds = %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i, %.lr.ph369.i
  %.0368.i = phi ptr [ %i.ni, %.lr.ph369.i ], [ %.val.i7, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i ] ; 2 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %.0368.i)
  %i.ni = getelementptr inbounds nuw i8, ptr %.0368.i, i64 56 ; 2 uses
  %.not39.i = icmp eq ptr %i.ni, %i.nh
  br i1 %.not39.i, label %.thread, label %.lr.ph369.i

bb.dk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.nj = load i8, ptr %i.k, align 8, !range !28, !noundef !29
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nl = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.nm = load ptr, ptr %i.l, align 8
  %i.nn = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = ashr exact i64 %i.nq, 5
  %i.ns = zext i32 %i.nl to i64
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21RunActiveThreadsToEndEv:bb.a
_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i: ; preds = %bb.as, %bb.ar, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i
  %i.ht = load i8, ptr %i.y, align 8, !range !28, !noundef !29
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i
  %i.hv = load ptr, ptr %i.z, align 8
  %i.hw = load ptr, ptr %i.aa, align 8
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 5                 ; 5 uses
  %i.ib = and i64 %i.ia, 2305843009213693950
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i5.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8
  %.not7.i.i6.i = icmp ugt i64 %i.if, %i.ia
  br i1 %.not7.i.i6.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.8.0.copyload, i64 8
  store i64 %i.ia, ptr %i.ig, align 8
  %i.ih = load ptr, ptr %i.ab, align 8
  store ptr %i.ih, ptr %.sroa.4.sroa.8.0.copyload, align 8
  store ptr %.sroa.4.sroa.8.0.copyload, ptr %i.ab, align 8
  %.pre.i = load ptr, ptr %i.z, align 8
  %.pre9.i = load ptr, ptr %i.aa, align 8
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.pre-phi16.i = phi i64 [ %i.ia, %bb.at ], [ %i.ia, %bb.av ], [ %.pre15.i, %bb.aw ] ; 3 uses
  %i.ii = and i64 %.pre-phi16.i, 4611686018427387900
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i
  %i.ik = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i7.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i64, ptr %i.il, align 8
  %.not7.i.i8.i = icmp ugt i64 %i.im, %.pre-phi16.i
  br i1 %.not7.i.i8.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload, i64 8
  store i64 %.pre-phi16.i, ptr %i.in, align 8
  %i.io = load ptr, ptr %i.ac, align 8
  store ptr %i.io, ptr %.sroa.4.sroa.5.0.copyload, align 8
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %bb.az, %bb.ay, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.ip = icmp sgt i64 %indvars.iv63.i, 1
  br i1 %i.ip, label %bb.aa, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.z
  store i32 0, ptr %i.e, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  br label %bb.b

.critedge:                                        ; preds = %bb.j, %bb.c, %_ZNK2v84base6VectorIKtE6lengthEv.exit, %bb.f, %_ZNK2v84base6VectorIKtE6lengthEv.exit14, %.thread24
  %.4 = phi i32 [ %.3.i.ph, %.thread24 ], [ 1, %_ZNK2v84base6VectorIKtE6lengthEv.exit14 ], [ 1, %bb.f ], [ 1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ 1, %bb.c ], [ 1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.sroa.1146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.1141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.1156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph, %bb.ef
  %i.al = phi i32 [ %i.c, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph ], [ %.pr, %bb.ef ]
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !128
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [56 x i8], ptr %.val.i, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false)
  store i32 %i.am, ptr %i.b, align 4, !noalias !128
  %i.ap = load i32, ptr %1, align 8               ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i6, label %._crit_edge.i, !prof !32

._crit_edge.i:                                    ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #9
  unreachable

.lr.ph.i6:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i
  %i.ar = phi i32 [ %i.pn, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ], [ %i.ap, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit ] ; 11 uses
  %i.as = load i64, ptr %i.f, align 8
  %i.at = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %.lr.ph.i6
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #9
  unreachable

bb.c:                                             ; preds = %.lr.ph.i6
  %i.av = load i64, ptr %i.g, align 8
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.g, align 8
  %i.ax = load i32, ptr %i.h, align 8             ; 4 uses
  %.val47.i = load i32, ptr %i.i, align 8         ; 3 uses
  %.val48.i = load ptr, ptr %i.j, align 8
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val48.i, i64 %i.at ; 3 uses
  %.pn.in.idx.i.i = select i1 %i.ay, i64 0, i64 4
  %.pn.in.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.pn.in.idx.i.i
  %.pn.i.i = load i32, ptr %.pn.in.i.i, align 4
  %.0.i.i = icmp eq i32 %.pn.i.i, %.val47.i
  br i1 %.0.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %1)
  br label %bb.ef

bb.e:                                             ; preds = %bb.c
  switch i32 %i.ax, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 %.val47.i, ptr %i.az, align 4
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %.val47.i, ptr %i.ba, align 4
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.bb = load ptr, ptr %i.e, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %i.bc, align 4            ; 7 uses
  %.sroa.0257.0.extract.trunc.i = trunc i64 %i.bd to i32
  %.sroa.4258.0.extract.shift.i = lshr i64 %i.bd, 32 ; 5 uses
  %.sroa.4258.0.extract.trunc.i = trunc nuw i64 %.sroa.4258.0.extract.shift.i to i32 ; 6 uses
  switch i32 %.sroa.0257.0.extract.trunc.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.ad
    i32 6, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i
    i32 0, label %bb.cq
    i32 8, label %bb.ct
    i32 2, label %bb.cu
    i32 7, label %bb.cx
    i32 9, label %bb.dc
    i32 10, label %bb.dc
    i32 11, label %bb.dc
    i32 12, label %bb.dc
    i32 13, label %bb.dd
    i32 14, label %bb.de
    i32 15, label %bb.dh
    i32 16, label %bb.di
    i32 17, label %bb.dl
    i32 18, label %bb.dt
  ]

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.be = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bf = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.bg = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.aj, align 8
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.ad, align 4
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [56 x i8], ptr %i.bi, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.ef

bb.j:                                             ; preds = %bb.h
  %i.bm = shl nsw i32 %i.bg, 1
  %i.bn = or disjoint i32 %i.bm, 1                ; 2 uses
  %i.bo = icmp sgt i32 %i.bg, -1
  br i1 %i.bo, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = mul nuw nsw i64 %i.bp, 56               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sub i64 %i.bs, %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 noundef %i.bq) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bx = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.m ], [ %i.bu, %bb.l ] ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = add i64 %i.bx, %i.bq
  store i64 %i.bz, ptr %i.bt, align 8
  %i.ca = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cc = load ptr, ptr %i.aj, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = mul nuw nsw i64 %i.cd, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.n, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cf = phi i32 [ %i.ca, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.n ] ; 2 uses
  store ptr %i.by, ptr %i.aj, align 8
  store i32 %i.bn, ptr %i.ak, align 8
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ad, align 4
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.by, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.ef

bb.o:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8 ; 5 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 7 uses
  %i.cj = load i32, ptr %i.i, align 8             ; 9 uses
  switch i32 %.sroa.4258.0.extract.trunc.i, label %bb.ac [
    i32 1, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i
    i32 3, label %bb.p
    i32 0, label %bb.r
    i32 2, label %bb.t
    i32 4, label %bb.w
    i32 5, label %.loopexit47.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.ck, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, label %bb.q, !prof !30

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i:        ; preds = %bb.p
  %i.cl = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i

bb.r:                                             ; preds = %bb.o
  %i.cm = icmp eq i32 %i.cj, 0
  br i1 %i.cm, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = sext i32 %i.cj to i64
  %i.co = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i16, ptr %i.cp, align 2
  switch i16 %i.cq, label %.critedge293.i [
    i16 8232, label %.critedge.i
    i16 13, label %.critedge.i
    i16 10, label %.critedge.i
    i16 8233, label %.critedge.i
  ]

bb.t:                                             ; preds = %bb.o
  %i.cr = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cr, label %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i, label %bb.u, !prof !30

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i:      ; preds = %bb.t
  %i.cs = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.ct = icmp eq i32 %i.cj, %i.cs
  br i1 %i.ct, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i
  %i.cu = sext i32 %i.cj to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2
  switch i16 %i.cw, label %.critedge293.i [
    i16 8232, label %.critedge.i
    i16 13, label %.critedge.i
    i16 10, label %.critedge.i
    i16 8233, label %.critedge.i
  ]

.loopexit47.i.i:                                  ; preds = %bb.o
  br label %bb.w

bb.w:                                             ; preds = %.loopexit47.i.i, %bb.o
  %accumulator.tr.lcssa40.i.i = phi i1 [ false, %bb.o ], [ true, %.loopexit47.i.i ] ; 2 uses
  %i.cx = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cx, label %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i, label %bb.x, !prof !30

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i:      ; preds = %bb.w
  %i.cy = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cz = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.cz, label %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, label %bb.y

_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i
  br i1 %accumulator.tr.lcssa40.i.i, label %.critedge.i, label %.critedge293.i

bb.y:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i
  %i.da = icmp eq i32 %i.cj, 0
  br i1 %i.da, label %bb.z, label %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i

bb.z:                                             ; preds = %bb.y
  %i.db = load i16, ptr %.sroa.0.0.copyload.i, align 2 ; 3 uses
  %i.dc = or i16 %i.db, 32
  %i.dd = add i16 %i.dc, -97
  %i.de = icmp ult i16 %i.dd, 26
  %i.df = add i16 %i.db, -48
  %i.dg = icmp ult i16 %i.df, 10
  %i.dh = or i1 %i.dg, %i.de
  %i.di = icmp eq i16 %i.db, 95
  %i.dj = or i1 %i.di, %i.dh
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i:      ; preds = %bb.y
  %i.dk = icmp eq i32 %i.cj, %i.cy
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i
  %i.dl = zext nneg i32 %i.cj to i64
  %i.dm = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dl
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv:bb.a
_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i: ; preds = %bb.br, %bb.bq
  %i.je = phi i64 [ %.pre.i.i.i.i.i25.i.i, %bb.br ], [ %i.jb, %bb.bq ] ; 2 uses
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = add i64 %i.je, %i.ix
  store i64 %i.jg, ptr %i.ja, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE22NewUninitializedThreadEi.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE22NewUninitializedThreadEi.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i, %bb.bn, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i, %bb.bg, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i
  %.sroa.11228.0.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %.0.i.i.i.i, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %.0.i.i.i.i, %bb.bg ], [ %i.ep, %bb.bn ], [ %i.jf, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.24.0.i = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %i.io, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %i.ia, %bb.bg ], [ null, %bb.bn ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.21.0.i = phi ptr [ %.0.i.i13.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %.0.i.i13.i.i, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %.0.i.i13.i.i, %bb.bg ], [ null, %bb.bn ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.18.0.i = phi ptr [ %.0.i.i9.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %.0.i.i9.i.i, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %.0.i.i9.i.i, %bb.bg ], [ null, %bb.bn ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.sroa.14.0.i = phi ptr [ %i.gh, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i ], [ %i.gh, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i19.i.i ], [ %i.gh, %bb.bg ], [ null, %bb.bn ], [ null, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i24.i.i ] ; 3 uses
  %.val57.i = load i32, ptr %i.p, align 8         ; 3 uses
  %.sroa.1204.0.copyload.i = load ptr, ptr %.sroa.1146.0..sroa_idx.i, align 8 ; 2 uses
  %i.jh = icmp ugt i32 %.val57.i, 1
  br i1 %i.jh, label %bb.bs, label %bb.bt, !prof !30

bb.bs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE22NewUninitializedThreadEi.exit.i
  %i.ji = sext i32 %.val57.i to i64
  %.idx.i = shl nuw nsw i64 %i.ji, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.11228.0.i, ptr align 4 %.sroa.1204.0.copyload.i, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.bt:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE22NewUninitializedThreadEi.exit.i
  %i.jj = icmp eq i32 %.val57.i, 1
  br i1 %i.jj, label %bb.bu, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.jk = load i32, ptr %.sroa.1204.0.copyload.i, align 4
  store i32 %i.jk, ptr %.sroa.11228.0.i, align 4
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.jl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.bv, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

bb.bv:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %.val63.i = load i32, ptr %i.v, align 4         ; 3 uses
  %.sroa.1193.0.copyload.i = load ptr, ptr %.sroa.1156.0..sroa_idx.i, align 8 ; 2 uses
  %i.jn = icmp ugt i32 %.val63.i, 1
  br i1 %i.jn, label %bb.bw, label %bb.bx, !prof !30

bb.bw:                                            ; preds = %bb.bv
  %i.jo = sext i32 %.val63.i to i64
  %.idx291.i = shl nuw nsw i64 %i.jo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.18.0.i, ptr align 8 %.sroa.1193.0.copyload.i, i64 %.idx291.i, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.jp = icmp eq i32 %.val63.i, 1
  br i1 %i.jp, label %bb.by, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.jq = load i64, ptr %.sroa.1193.0.copyload.i, align 8
  store i64 %i.jq, ptr %.sroa.18.0.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.by, %bb.bx, %bb.bw
  %.val69.i = load i32, ptr %i.p, align 8         ; 3 uses
  %.sroa.1182.0.copyload.i = load ptr, ptr %.sroa.1141.0..sroa_idx.i, align 8 ; 2 uses
  %i.jr = icmp ugt i32 %.val69.i, 1
  br i1 %i.jr, label %bb.bz, label %bb.ca, !prof !30

bb.bz:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.js = sext i32 %.val69.i to i64
  %.idx292.i = shl nuw nsw i64 %i.js, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.21.0.i, ptr align 8 %.sroa.1182.0.copyload.i, i64 %.idx292.i, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i

bb.ca:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.jt = icmp eq i32 %.val69.i, 1
  br i1 %i.jt, label %bb.cb, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i

bb.cb:                                            ; preds = %bb.ca
  %i.ju = load i64, ptr %.sroa.1182.0.copyload.i, align 8
  store i64 %i.ju, ptr %.sroa.21.0.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i:            ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.jv = load i8, ptr %i.k, align 8, !range !28, !noundef !29
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i, label %bb.cc

bb.cc:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i
  %.val77.i = load ptr, ptr %i.m, align 8
  %.val78.i = load ptr, ptr %i.l, align 8
  %i.jx = ptrtoint ptr %.val78.i to i64
  %i.jy = ptrtoint ptr %.val77.i to i64
  %i.jz = sub i64 %i.jx, %i.jy                    ; 2 uses
  %.sroa.1171.0.copyload.i = load ptr, ptr %.sroa.1.0..sroa_idx.i, align 8 ; 2 uses
  %i.ka = ashr exact i64 %i.jz, 3                 ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, 4
  br i1 %i.kb, label %bb.cd, label %bb.ce, !prof !30

bb.cd:                                            ; preds = %bb.cc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.14.0.i, ptr align 4 %.sroa.1171.0.copyload.i, i64 %i.ka, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i

bb.ce:                                            ; preds = %bb.cc
  %i.kc = icmp eq i64 %i.jz, 32
  br i1 %i.kc, label %bb.cf, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i

bb.cf:                                            ; preds = %bb.ce
  %i.kd = load i32, ptr %.sroa.1171.0.copyload.i, align 4
  store i32 %i.kd, ptr %.sroa.14.0.i, align 4
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i:            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.val86.i = load ptr, ptr %i.m, align 8
  %.val87.i = load ptr, ptr %i.l, align 8
  %i.ke = ptrtoint ptr %.val87.i to i64
  %i.kf = ptrtoint ptr %.val86.i to i64
  %i.kg = sub i64 %i.ke, %i.kf                    ; 2 uses
  %.sroa.1161.0.copyload.i = load ptr, ptr %.sroa.1136.0..sroa_idx.i, align 8 ; 2 uses
  %i.kh = ashr exact i64 %i.kg, 2                 ; 2 uses
  %i.ki = icmp sgt i64 %i.kh, 8
  br i1 %i.ki, label %bb.cg, label %bb.ch, !prof !30

bb.cg:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.24.0.i, ptr align 8 %.sroa.1161.0.copyload.i, i64 %i.kh, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

bb.ch:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit108.i
  %i.kj = icmp eq i64 %i.kg, 32
  br i1 %i.kj, label %bb.ci, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

bb.ci:                                            ; preds = %bb.ch
  %i.kk = load i64, ptr %.sroa.1161.0.copyload.i, align 8
  store i64 %i.kk, ptr %.sroa.24.0.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i:            ; preds = %bb.ci, %bb.ch, %bb.cg, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit103.i, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %i.kl = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.km = load i32, ptr %i.b, align 4             ; 2 uses
  %i.kn = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ko = icmp slt i32 %i.km, %i.kn
  br i1 %i.ko, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i
  %i.kp = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i

bb.ck:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit113.i
  %i.kq = shl nsw i32 %i.kn, 1
  %i.kr = or disjoint i32 %i.kq, 1                ; 2 uses
  %i.ks = icmp sgt i32 %i.kn, -1
  br i1 %i.ks, label %bb.cm, label %bb.cl, !prof !30

bb.cl:                                            ; preds = %bb.ck
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.kt = zext nneg i32 %i.kr to i64
  %i.ku = mul nuw nsw i64 %i.kt, 56               ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 3 uses
  %i.ky = load i64, ptr %i.kx, align 8            ; 2 uses
  %i.kz = sub i64 %i.kw, %i.ky
  %i.la = icmp ugt i64 %i.ku, %i.kz
  br i1 %i.la, label %bb.cn, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i, !prof !31

bb.cn:                                            ; preds = %bb.cm
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.kl, i64 noundef %i.ku) #8
  %.pre.i.i.i.i.i.i117.i = load i64, ptr %i.kx, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i: ; preds = %bb.cn, %bb.cm
  %i.lb = phi i64 [ %.pre.i.i.i.i.i.i117.i, %bb.cn ], [ %i.ky, %bb.cm ] ; 2 uses
  %i.lc = inttoptr i64 %i.lb to ptr               ; 3 uses
  %i.ld = add i64 %i.lb, %i.ku
  store i64 %i.ld, ptr %i.kx, align 8
  %i.le = load i32, ptr %i.b, align 4             ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %bb.co, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i

bb.co:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i
  %i.lg = load ptr, ptr %i.a, align 8
  %i.lh = zext nneg i32 %i.le to i64
  %i.li = mul nuw nsw i64 %i.lh, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 1 %i.lg, i64 %i.li, i1 false)
  %.pre.i.i.i116.i = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i: ; preds = %bb.co, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i
  %i.lj = phi i32 [ %i.le, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i114.i ], [ %.pre.i.i.i116.i, %bb.co ]
  store ptr %i.lc, ptr %i.a, align 8
  store i32 %i.kr, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i, %bb.cj
  %.sink522.i = phi i32 [ %i.km, %bb.cj ], [ %i.lj, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i ] ; 2 uses
  %.sink519.i = phi ptr [ %i.kp, %bb.cj ], [ %i.lc, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i115.i ]
  %i.lk = add nsw i32 %.sink522.i, 1
  store i32 %i.lk, ptr %i.b, align 4
  %i.ll = sext i32 %.sink522.i to i64
  %i.lm = getelementptr inbounds [56 x i8], ptr %.sink519.i, i64 %i.ll ; 7 uses
  store i64 %.sroa.4258.0.extract.shift.i, ptr %i.lm, align 8
  %.sroa.11228.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store ptr %.sroa.11228.0.i, ptr %.sroa.11228.0..sroa_idx229.i, align 8
  %.sroa.14.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store ptr %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx235.i, align 8
  %.sroa.18.0..sroa_idx240.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store ptr %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx240.i, align 8
  %.sroa.21.0..sroa_idx244.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  store ptr %.sroa.21.0.i, ptr %.sroa.21.0..sroa_idx244.i, align 8
  %.sroa.24.0..sroa_idx247.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  store ptr %.sroa.24.0.i, ptr %.sroa.24.0..sroa_idx247.i, align 8
  %.sroa.27.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  store i32 %i.ax, ptr %.sroa.27.0..sroa_idx249.i, align 8
  %i.ln = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.cp, label %.thread.i

bb.cp:                                            ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i
  %i.lp = load i32, ptr %i.ad, align 4
  %i.lq = load i32, ptr %i.b, align 4
  %i.lr = add nsw i32 %i.lq, %i.lp
  %i.ls = sext i32 %i.lr to i64
  %i.lt = load i64, ptr %i.ae, align 8
  %i.lu = mul i64 %i.lt, %i.ls
  %i.lv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1616), align 16
  %i.lw = shl i64 %i.lv, 20
  %i.lx = icmp ult i64 %i.lu, %i.lw
  br i1 %i.lx, label %.thread.i, label %.loopexit.sink.split

.thread.i:                                        ; preds = %bb.cp, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit118.i
  %i.ly = load i32, ptr %1, align 8
  %i.lz = add nsw i32 %i.ly, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.cq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.val90.i = load i8, ptr %i.ai, align 8, !range !28, !noundef !29
  %i.ma = trunc nuw i8 %.val90.i to i1
  br i1 %i.ma, label %bb.cr, label %.thread459.i

bb.cr:                                            ; preds = %bb.cq
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %i.ah)
  %.val.i.pre.i = load i8, ptr %i.ai, align 8, !range !28
  %i.mb = trunc nuw i8 %.val.i.pre.i to i1
  br i1 %i.mb, label %bb.cs, label %.thread459.i

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

.thread459.i:                                     ; preds = %bb.cr, %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i8 1, ptr %i.ai, align 8
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i: ; preds = %.thread459.i, %bb.cs
  %.val42.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.val46.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.mc = sext i32 %.val46.i to i64
  %.idx377.i = mul nsw i64 %i.mc, 56
  %i.md = getelementptr inbounds i8, ptr %.val42.i, i64 %.idx377.i
  %.not40372.i = icmp eq i32 %.val46.i, 0
  br i1 %.not40372.i, label %.thread, label %.lr.ph374.i

.lr.ph374.i:                                      ; preds = %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i, %.lr.ph374.i
  %.031373.i = phi ptr [ %i.me, %.lr.ph374.i ], [ %.val42.i, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ] ; 2 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %.031373.i)
  %i.me = getelementptr inbounds nuw i8, ptr %.031373.i, i64 56 ; 2 uses
  %.not40.i = icmp eq ptr %i.me, %i.md
  br i1 %.not40.i, label %.thread, label %.lr.ph374.i

bb.ct:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.mf = load i64, ptr %i.g, align 8
  %.sroa.1156.0.copyload.i = load ptr, ptr %.sroa.1156.0..sroa_idx.i, align 8
  %i.mg = ashr i64 %i.bd, 32
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1156.0.copyload.i, i64 %i.mg
  store i64 %i.mf, ptr %i.mh, align 8
  %i.mi = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.cu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.mj = load i32, ptr %i.p, align 8
  %i.mk = icmp ugt i32 %i.mj, %.sroa.4258.0.extract.trunc.i
  br i1 %i.mk, label %bb.cw, label %bb.cv, !prof !30

bb.cv:                                            ; preds = %bb.cu
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #9
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %.sroa.1151.0.copyload.i = load ptr, ptr %.sroa.1146.0..sroa_idx.i, align 8
  %i.ml = ashr i64 %i.bd, 32
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1151.0.copyload.i, i64 %i.ml
  store i32 -1, ptr %i.mm, align 4
  %i.mn = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.cx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.mo = load i32, ptr %i.p, align 8
  %i.mp = icmp ugt i32 %i.mo, %.sroa.4258.0.extract.trunc.i
  br i1 %i.mp, label %bb.cz, label %bb.cy, !prof !30

bb.cy:                                            ; preds = %bb.cx
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #9
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.mq = load i32, ptr %i.i, align 8
  %.sroa.1146.0.copyload.i = load ptr, ptr %.sroa.1146.0..sroa_idx.i, align 8
  %i.mr = ashr i64 %i.bd, 32                      ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1146.0.copyload.i, i64 %i.mr
  store i32 %i.mq, ptr %i.ms, align 4
  %i.mt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.mv = load i64, ptr %i.g, align 8
  %.sroa.1141.0.copyload.i = load ptr, ptr %.sroa.1141.0..sroa_idx.i, align 8
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1141.0.copyload.i, i64 %i.mr
  store i64 %i.mv, ptr %i.mw, align 8
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.mx = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.dc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #9
  unreachable

bb.dd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  store i32 1, ptr %i.h, align 8
  %i.my = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.de:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.mz = icmp eq i32 %i.ax, 1
  br i1 %i.mz, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %1)
  br label %bb.ef

bb.dg:                                            ; preds = %bb.de
  %i.na = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.dh:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.nb = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.di:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.val89.i = load i8, ptr %i.ai, align 8, !range !28, !noundef !29
  %i.nc = trunc nuw i8 %.val89.i to i1
  br i1 %i.nc, label %bb.dj, label %.thread461.i

bb.dj:                                            ; preds = %bb.di
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %i.ah)
  %.val.i127.pre.i = load i8, ptr %i.ai, align 8, !range !28
  %i.nd = trunc nuw i8 %.val.i127.pre.i to i1
  br i1 %i.nd, label %bb.dk, label %.thread461.i

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i

.thread461.i:                                     ; preds = %bb.dj, %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i8 1, ptr %i.ai, align 8
  br label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i

_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i: ; preds = %.thread461.i, %bb.dk
  %.val.i7 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.val44.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.ne = sext i32 %.val44.i to i64
  %.idx376.i = mul nsw i64 %i.ne, 56
  %i.nf = getelementptr inbounds i8, ptr %.val.i7, i64 %.idx376.i
  %.not39368.i = icmp eq i32 %.val44.i, 0
  br i1 %.not39368.i, label %.thread, label %.lr.ph370.i

.lr.ph370.i:                                      ; preds = %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i, %.lr.ph370.i
  %.0369.i = phi ptr [ %i.ng, %.lr.ph370.i ], [ %.val.i7, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit128.i ] ; 2 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %.0369.i)
  %i.ng = getelementptr inbounds nuw i8, ptr %.0369.i, i64 56 ; 2 uses
  %.not39.i = icmp eq ptr %i.ng, %i.nf
  br i1 %.not39.i, label %.thread, label %.lr.ph370.i

bb.dl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.nh = load i8, ptr %i.k, align 8, !range !28, !noundef !29
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nj = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.nk = load ptr, ptr %i.l, align 8
  %i.nl = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = ashr exact i64 %i.no, 5
  %i.nq = zext i32 %i.nj to i64
end_hunk_3
