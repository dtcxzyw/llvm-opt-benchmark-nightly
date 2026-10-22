Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AssignmentTrackingAnalysis?download=true
inline.NumInlined: 9322
inline.NumDeleted: 4239
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK4llvm15FunctionVarLocs5printERNS_11raw_ostreamERKNS_8FunctionE:bb.a
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.hw ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !119
  %i.hz = icmp eq ptr %i.fx, %i.hy
  br i1 %i.hz, label %bb.ar, label %bb.aq, !prof !120

bb.aq:                                            ; preds = %.lr.ph.i.i.i103
  %i.ia = add nuw i32 %.017.i.i.i104, 1
  %i.ib = and i32 %i.ia, %i.hi                    ; 3 uses
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = lshr i64 %i.ic, 5
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !116
  %i.ig = and i32 %i.ib, 31
  %i.ih = lshr i32 %i.if, %i.ig
  %i.ii = trunc i32 %i.ih to i1
  br i1 %i.ii, label %.lr.ph.i.i.i103, label %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit, !prof !121

bb.ar:                                            ; preds = %.lr.ph.i.i.i103
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ik = load i64, ptr %i.ij, align 4
  %i.il = lshr i64 %i.ik, 32
  br label %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit

_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit: ; preds = %bb.aq, %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit, %bb.ap, %bb.ar
  %.sroa.3.1.i.i100 = phi i64 [ %i.il, %bb.ar ], [ 0, %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit ], [ 0, %bb.ap ], [ 0, %bb.aq ] ; 2 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %.sroa.3.1.i.i100
  %.not56141 = icmp samesign eq i64 %.sroa.3.1.i.i, %.sroa.3.1.i.i100
  br i1 %.not56141, label %._crit_edge144, label %.lr.ph143

._crit_edge144:                                   ; preds = %.lr.ph143, %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit
  tail call void @_ZNK4llvm5Value5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext false) #22
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.io = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge144
  %i.iq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.15, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.at:                                            ; preds = %._crit_edge144
  store i8 10, ptr %i.io, align 1
  %i.ir = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store ptr %i.is, ptr %i.c, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

_ZN4llvm11raw_ostreamlsEPKc.exit107:              ; preds = %bb.as, %bb.at
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0108.0147, i64 8
  %.sroa.0108.0 = load ptr, ptr %i.it, align 8, !tbaa !112 ; 2 uses
  %.not130 = icmp eq ptr %.sroa.0108.0, %i.fv
  br i1 %.not130, label %._crit_edge149, label %.lr.ph148

.lr.ph143:                                        ; preds = %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit, %.lr.ph143
  %.0142 = phi ptr [ %i.iu, %.lr.ph143 ], [ %i.hh, %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit ] ; 2 uses
  tail call fastcc void @"_ZZNK4llvm15FunctionVarLocs5printERNS_11raw_ostreamERKNS_8FunctionEENK3$_0clERKNS_10VarLocInfoE"(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %.0142)
  %i.iu = getelementptr inbounds nuw i8, ptr %.0142, i64 32 ; 2 uses
  %.not56 = icmp eq ptr %i.iu, %i.im
  br i1 %.not56, label %._crit_edge144, label %.lr.ph143, !llvm.loop !546
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK4llvm15FunctionVarLocs5printERNS_11raw_ostreamERKNS_8FunctionEENK3$_0clERKNS_10VarLocInfoE"(ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::iterator_range.255", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 9
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noundef nonnull @.str.19, i64 noundef 9) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.19, i64 9, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  store ptr %i.k, ptr %i.c, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %.0.val, %bb.c ]
  %i.l = load i32, ptr %0, align 8, !tbaa !127
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.m) #22 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull @.str.20, i64 noundef 1) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 93, ptr %i.r, align 1
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %.0.i.i8 = phi ptr [ %i.t, %bb.d ], [ %i.n, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, ptr noundef nonnull @.str.21, i64 noundef 6) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.w, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.f, %bb.g
  %.0.i.i11 = phi ptr [ %i.ad, %bb.f ], [ %.0.i.i8, %bb.g ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !128
  tail call void @_ZNK4llvm8Metadata5printERNS_11raw_ostreamEPKNS_6ModuleEb(ptr noundef nonnull align 4 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef null, i1 noundef zeroext false) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i11, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i11, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !77 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 9
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef nonnull @.str.22, i64 noundef 9) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.am, ptr noundef nonnull align 1 dereferenceable(9) @.str.22, i64 9, i1 false)
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  store ptr %i.at, ptr %i.al, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.255") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #22
  %i.av = load i64, ptr %1, align 8, !noalias !552 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !553 ; 2 uses
  %.not4 = icmp eq i64 %i.av, %i.ax
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21, %_ZN4llvm11raw_ostreamlsEPKc.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.ay = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #22 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !77 ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, 2
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull @.str.24, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.k:                                             ; preds = %._crit_edge
  store i16 2601, ptr %i.bc, align 1
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.j, %bb.k
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15, %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %.sroa.01.05 = phi i64 [ %storemerge.i, %_ZN4llvm11raw_ostreamlsEPKc.exit21 ], [ %i.av, %_ZN4llvm11raw_ostreamlsEPKc.exit15 ] ; 5 uses
  %i.bk = and i64 %.sroa.01.05, 4
  %i.bl = icmp eq i64 %i.bk, 0                    ; 2 uses
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bm = inttoptr i64 %.sroa.01.05 to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bn = and i64 %.sroa.01.05, -5
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !130
  br label %_ZN4llvm20location_op_iteratordeEv.exit

_ZN4llvm20location_op_iteratordeEv.exit:          ; preds = %bb.l, %bb.m
  %i.bq = phi ptr [ %i.bm, %bb.l ], [ %i.bp, %bb.m ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.bt = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #22 ; 5 uses
  %i.bu = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #22 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !77 ; 3 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp ugt i64 %i.bw, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm20location_op_iteratordeEv.exit
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef %i.bv, i64 noundef %i.bw) #22 ; 2 uses
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.pre7 = load ptr, ptr %.phi.trans.insert6, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.o:                                             ; preds = %_ZN4llvm20location_op_iteratordeEv.exit
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bw ; 2 uses
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.n, %bb.o, %bb.p
  %i.ci = phi ptr [ %.pre7, %bb.n ], [ %i.ch, %bb.p ], [ %i.ca, %bb.o ] ; 2 uses
  %.0.i = phi ptr [ %i.cf, %bb.n ], [ %i.bt, %bb.p ], [ %i.bt, %bb.o ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !76
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.cm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.23, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i8 32, ptr %i.ci, align 1
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.q, %bb.r
  %2 = and i64 %.sroa.01.05, -5
  %3 = add nuw i64 %2, 12
  %storemerge.i.a = add nuw i64 %.sroa.01.05, 144
  %storemerge.i = select i1 %i.bl, i64 %storemerge.i.a, i64 %3 ; 2 uses
  %.not = icmp eq i64 %storemerge.i, %i.ax
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15FunctionVarLocs4initER22FunctionVarLocsBuilder(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::VarLocInfo", align 8 ; 4 uses
  %3 = alloca %"struct.llvm::VarLocInfo", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::DebugVariable", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not96 = icmp eq i32 %i.e, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplINS_10VarLocInfoEE12emplace_backIJRKS1_EEERS1_DpOT_.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.n, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.081.0110 = load ptr, ptr %i.p, align 8, !tbaa !142 ; 2 uses
  %.not87111 = icmp eq ptr %.sroa.081.0110, null
  br i1 %.not87111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplINS_10VarLocInfoEE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %.097 = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %_ZN4llvm15SmallVectorImplINS_10VarLocInfoEE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 3 uses
  %i.u = load i32, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %i.v = load i32, ptr %i.j, align 4, !tbaa !143
  %.not.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !120

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE18growAndEmplaceBackIJRKS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.097) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_10VarLocInfoEE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %.097, i64 32, i1 false), !tbaa.struct !148
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !78
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !78
  br label %_ZN4llvm15SmallVectorImplINS_10VarLocInfoEE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_10VarLocInfoEE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.097, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge115:                                   ; preds = %bb.w, %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !151
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !152
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  %i.al = add nsw i64 %i.ak, 1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !143 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit

bb.e:                                             ; preds = %._crit_edge115
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.aq, i64 noundef %i.al, i64 noundef 40) #22
  %.pre = load i32, ptr %i.am, align 4, !tbaa !143
  br label %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit: ; preds = %._crit_edge115, %bb.e
  %i.ar = phi i32 [ %i.an, %._crit_edge115 ], [ %.pre, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !101
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %.sroa.485.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.as, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %.not.i47 = icmp ult i32 %i.au, %i.ar
  br i1 %.not.i47, label %bb.g, label %bb.f, !prof !120

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.pre124 = load i32, ptr %i.at, align 8, !tbaa !78
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %0, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  %i.ay = load i32, ptr %i.at, align 8, !tbaa !78
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.at, align 8, !tbaa !78
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit: ; preds = %bb.f, %bb.g
  %i.ba = phi i32 [ %.pre124, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !153 ; 3 uses
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !153 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 40                ; 2 uses
  %i.bh = zext i32 %i.ba to i64                   ; 2 uses
  %i.bi = add nsw i64 %i.bg, %i.bh                ; 2 uses
  %i.bj = load i32, ptr %i.am, align 4, !tbaa !143
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp ugt i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.h, label %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bm, i64 noundef %i.bi, i64 noundef 40) #22
  %.pre.i = load i32, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %.pre12.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit.i: ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit
  %.pre-phi.i = phi i64 [ %i.bh, %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit ], [ %.pre12.i, %bb.h ]
  %i.bn = phi i32 [ %i.ba, %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE9push_backERKS1_.exit ], [ %.pre.i, %bb.h ]
  %.not7.i.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE6appendIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEvEEvT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !71
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.09.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i, i64 40, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEES6_EEvT_SB_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !554

_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEES6_EEvT_SB_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre11.i = load i32, ptr %i.at, align 8, !tbaa !78
  br label %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE6appendIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEvEEvT_SB_.exit

_ZN4llvm15SmallVectorImplINS_13DebugVariableEE6appendIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEEvEEvT_SB_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEES6_EEvT_SB_T0_.exit.loopexit.i
  %i.bs = phi i32 [ %.pre11.i, %_ZN4llvm23SmallVectorTemplateBaseINS_13DebugVariableELb1EE18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_SaIS1_EEEES6_EEvT_SB_T0_.exit.loopexit.i ], [ %i.bn, %_ZN4llvm15SmallVectorImplINS_13DebugVariableEE7reserveEm.exit.i ]
  %i.bt = trunc i64 %i.bg to i32
  %i.bu = add i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.at, align 8, !tbaa !78
  ret void

bb.i:                                             ; preds = %.lr.ph114, %bb.w
  %.sroa.081.0112 = phi ptr [ %.sroa.081.0110, %.lr.ph114 ], [ %.sroa.081.0, %bb.w ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.081.0112, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bv, align 8 ; 2 uses
  %i.bw = and i64 %.0.copyload.i.i.i.i.i, 4
  %.not88 = icmp eq i64 %i.bw, 0
  br i1 %.not88, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bx = inttoptr i64 %.0.copyload.i.i.i.i.i to ptr ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !119
  %i.by = load i32, ptr %i.l, align 8, !tbaa !78  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !166 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = call { ptr, ptr } @_ZN4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ca) #22
end_hunk_0
begin_hunk_1_@_ZL15analyzeFunctionRN4llvm8FunctionERKNS_10DataLayoutEP22FunctionVarLocsBuilder:bb.a
  %.val.i.i.i.i113.i.i = load i8, ptr %i.akl, align 8, !tbaa !172
  %i.akm = icmp eq i8 %.val.i.i.i.i113.i.i, 0
  br i1 %i.akm, label %_ZNSt16reverse_iteratorIN4llvm15mapped_iteratorINS0_20filter_iterator_implINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS0_L13filterDbgVarsENS0_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS0_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS0_17DbgVariableRecordEEEEEppEv.exit.i.i, label %.lr.ph.i.i.i.i112.i.i, !llvm.loop !597

_ZNSt16reverse_iteratorIN4llvm15mapped_iteratorINS0_20filter_iterator_implINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS0_L13filterDbgVarsENS0_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS0_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS0_17DbgVariableRecordEEEEEppEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i112.i.i, %"_ZZL39removeRedundantDbgLocsUsingBackwardScanPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clINS_17DbgVariableRecordEEEDaPT_.exit.i.i"
  %.sroa.0122.1.i.i = phi ptr [ %i.akh, %"_ZZL39removeRedundantDbgLocsUsingBackwardScanPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clINS_17DbgVariableRecordEEEDaPT_.exit.i.i" ], [ %i.akk, %.lr.ph.i.i.i.i112.i.i ] ; 2 uses
  %.not155.i.i = icmp eq ptr %.sroa.0122.1.i.i, %.sroa.01.1.i.i.i.i
  br i1 %.not155.i.i, label %.loopexit.i.i13, label %.lr.ph.i.i15

_ZL39removeRedundantDbgLocsUsingBackwardScanPKN4llvm10BasicBlockER22FunctionVarLocsBuilder.exit.i: ; preds = %.loopexit.i.i13, %bb.ai
  call void @_ZN4llvm13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.akn = call noundef zeroext i1 @_ZNK4llvm10BasicBlock12isEntryBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %i.qz) #22
  br i1 %i.akn, label %bb.dw, label %bb.hp

bb.dw:                                            ; preds = %_ZL39removeRedundantDbgLocsUsingBackwardScanPKN4llvm10BasicBlockER22FunctionVarLocsBuilder.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 1, ptr %16, align 8
  store i32 0, ptr %i.ni, align 8
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.061.0187, i64 32
  %.sroa.0267.0377.i.i = load ptr, ptr %i.ako, align 8, !tbaa !112 ; 2 uses
  %.not378.i.i = icmp eq ptr %.sroa.0267.0377.i.i, %i.ra
  br i1 %.not378.i.i, label %_ZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilder.exit.i, label %.lr.ph382.i.i

.lr.ph382.i.i:                                    ; preds = %bb.dw, %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i"
  %.sroa.0267.0380.i.i = phi ptr [ %.sroa.0267.0.i.i, %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i" ], [ %.sroa.0267.0377.i.i, %bb.dw ] ; 3 uses
  %i.akp = getelementptr inbounds i8, ptr %.sroa.0267.0380.i.i, i64 -24
  %i.akq = getelementptr inbounds nuw i8, ptr %.sroa.0267.0380.i.i, i64 40
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %i.akr, null
  br i1 %.not.i.i.i11.i, label %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph382.i.i
  %i.aks = call { ptr, ptr } @_ZN4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akr) #22
  br label %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i

_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i: ; preds = %bb.dx, %.lr.ph382.i.i
  %.pn.i.i.i13.i = phi { ptr, ptr } [ %i.aks, %bb.dx ], [ { ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm9DbgMarker14EmptyDbgMarkerE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm9DbgMarker14EmptyDbgMarkerE, i64 8) }, %.lr.ph382.i.i ] ; 2 uses
  %i.akt = extractvalue { ptr, ptr } %.pn.i.i.i13.i, 0 ; 3 uses
  %i.aku = extractvalue { ptr, ptr } %.pn.i.i.i13.i, 1 ; 6 uses
  %.not1.i.i.i.i.i.i14.i = icmp eq ptr %i.akt, %i.aku
  br i1 %.not1.i.i.i.i.i.i14.i, label %_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i, label %.lr.ph.i.i.i.i.i.i15.i

.lr.ph.i.i.i.i.i.i15.i:                           ; preds = %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i, %bb.dy
  %.sroa.01.0.i.i.i16.i = phi ptr [ %i.aky, %bb.dy ], [ %i.akt, %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i ] ; 3 uses
  %i.akv = getelementptr i8, ptr %.sroa.01.0.i.i.i16.i, i64 32
  %.val.i.i.i.i.i.i17.i = load i8, ptr %i.akv, align 8, !tbaa !172, !noalias !791
  %i.akw = icmp eq i8 %.val.i.i.i.i.i.i17.i, 0
  br i1 %i.akw, label %_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i.i.i15.i
  %i.akx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i16.i, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !108, !noalias !791 ; 3 uses
  %.not.i.i.i.i.i.i18.i = icmp eq ptr %i.aky, %i.aku
  br i1 %.not.i.i.i.i.i.i18.i, label %_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i, label %.lr.ph.i.i.i.i.i.i15.i, !llvm.loop !1

_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i: ; preds = %bb.dy, %.lr.ph.i.i.i.i.i.i15.i, %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i
  %.sroa.01.1.i.i.i20.i = phi ptr [ %i.akt, %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit.i12.i ], [ %i.aky, %bb.dy ], [ %.sroa.01.0.i.i.i16.i, %.lr.ph.i.i.i.i.i.i15.i ] ; 2 uses
  %.not307374.i.i = icmp eq ptr %.sroa.01.1.i.i.i20.i, %i.aku
  br i1 %.not307374.i.i, label %._crit_edge.i.i, label %.lr.ph.i21.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit.i.i, %_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i
  %i.akz = ptrtoint ptr %i.akp to i64             ; 7 uses
  %i.ala = load i64, ptr %i.mg, align 8, !tbaa !177
  %.not.not.i.i.i.i.i26.i = icmp eq i64 %i.ala, 0
  br i1 %.not.not.i.i.i.i.i26.i, label %.preheader396.i.i, label %bb.ea

.preheader396.i.i:                                ; preds = %._crit_edge.i.i, %bb.dz
  %.sroa.06.0.in.i.i.i.i.i49.i = phi ptr [ %.sroa.06.0.i.i.i.i.i50.i, %bb.dz ], [ %i.mj, %._crit_edge.i.i ]
  %.sroa.06.0.i.i.i.i.i50.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i49.i, align 8, !tbaa !142 ; 4 uses
  %.not.i.i.i.i.i51.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i50.i, null
  br i1 %.not.i.i.i.i.i51.i, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i", label %bb.dz

bb.dz:                                            ; preds = %.preheader396.i.i
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i50.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i52.i = load i64, ptr %i.alb, align 8
  %i.alc = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i52.i, %i.akz
  br i1 %i.alc, label %.loopexit.i.i38.i, label %.preheader396.i.i, !llvm.loop !15

bb.ea:                                            ; preds = %._crit_edge.i.i
  %i.ald = load i64, ptr %i.mi, align 8, !tbaa !178 ; 2 uses
  %i.ale = urem i64 %i.akz, %i.ald                ; 2 uses
  %i.alf = load ptr, ptr %i.mh, align 8, !tbaa !179
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.alf, i64 %i.ale
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i.i.i27.i = icmp eq ptr %i.alh, null
  br i1 %.not.i.i.i.i.i.i.i27.i, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !142 ; 4 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ali, i64 64
  %i.all = load i64, ptr %i.alk, align 8, !tbaa !182
  %i.alm = icmp eq i64 %i.all, %i.akz
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i.i28.i = load i64, ptr %i.alj, align 8
  %i.aln = icmp eq i64 %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i.i28.i, %i.akz
  %i.alo = select i1 %i.alm, i1 %i.aln, i1 false
  br i1 %i.alo, label %.loopexit.i.i38.i, label %.lr.ph.i.i.i.i.i.i.i29.i

bb.ec:                                            ; preds = %bb.ed
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alq = icmp eq i64 %i.alv, %i.akz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i37.i = load i64, ptr %i.alp, align 8
  %i.alr = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i37.i, %i.akz
  %i.als = select i1 %i.alq, i1 %i.alr, i1 false
  br i1 %i.als, label %.loopexit.i.i38.i, label %.lr.ph.i.i.i.i.i.i.i29.i, !llvm.loop !2

.lr.ph.i.i.i.i.i.i.i29.i:                         ; preds = %bb.eb, %bb.ec
  %.021.i.i.i.i.i.i.i30.i = phi ptr [ %i.alt, %bb.ec ], [ %i.ali, %bb.eb ]
  %i.alt = load ptr, ptr %.021.i.i.i.i.i.i.i30.i, align 8, !tbaa !142 ; 5 uses
  %.not18.i.i.i.i.i.i.i31.i = icmp eq ptr %i.alt, null
  br i1 %.not18.i.i.i.i.i.i.i31.i, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i", label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i29.i
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 64
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !182 ; 2 uses
  %i.alw = urem i64 %i.alv, %i.ald
  %.not19.i.i.i.i.i.i.i32.i = icmp eq i64 %i.alw, %i.ale
  br i1 %.not19.i.i.i.i.i.i.i32.i, label %bb.ec, label %..loopexit_crit_edge22.i.i.i.i.i.i.i33.i, !llvm.loop !2

..loopexit_crit_edge22.i.i.i.i.i.i.i33.i:         ; preds = %bb.ed
  br label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i", !llvm.loop !2

.loopexit.i.i38.i:                                ; preds = %bb.ec, %bb.dz, %bb.eb
  %.sroa.06.1.i.i.i.i.i39.i = phi ptr [ %.sroa.06.0.i.i.i.i.i50.i, %bb.dz ], [ %i.ali, %bb.eb ], [ %i.alt, %bb.ec ] ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i39.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.nq, ptr %15, align 8, !tbaa !71
  store i32 0, ptr %i.nr, align 8, !tbaa !78
  store i32 1, ptr %i.ns, align 4, !tbaa !143
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !71 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i39.i, i64 24
  %i.ama = load i32, ptr %i.alz, align 8, !tbaa !78 ; 2 uses
  %i.amb = zext i32 %i.ama to i64
  %.idx.i.i40.i = shl nuw nsw i64 %i.amb, 5
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aly, i64 %.idx.i.i40.i ; 2 uses
  %.not2359.i.i.i = icmp eq i32 %i.ama, 0
  br i1 %.not2359.i.i.i, label %.critedge.i.i43.i, label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %.loopexit.i.i38.i, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i
  %.02061.ph.i.i.i = phi i1 [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i ], [ false, %.loopexit.i.i38.i ]
  %.02160.ph.i.i.i = phi ptr [ %i.bam, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i ], [ %i.aly, %.loopexit.i.i38.i ]
  br label %bb.ee

._crit_edge.i.i42.i:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i.i41.i
  br i1 %.02061.ph.i.i.i, label %._crit_edge.thread.i.i.i, label %.critedge.i.i43.i

bb.ee:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i.i41.i, %.outer.i.i.i
  %.02160.i.i.i = phi ptr [ %i.bal, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i.i41.i ], [ %.02160.ph.i.i.i, %.outer.i.i.i ] ; 9 uses
  %i.amd = load i32, ptr %.02160.i.i.i, align 8, !tbaa !127
  %i.ame = add i32 %i.amd, -1
  %i.amf = zext i32 %i.ame to i64
  %i.amg = load ptr, ptr %i.mt, align 8, !tbaa !152
  %i.amh = getelementptr inbounds nuw [40 x i8], ptr %i.amg, i64 %i.amf
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !101 ; 7 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %.02160.i.i.i, i64 16
  %i.amk = call noundef ptr @_ZNK4llvm8DebugLoc12getInlinedAtEv(ptr noundef nonnull align 8 dereferenceable(8) %i.amj) #22 ; 7 uses
  %i.aml = load i32, ptr %.02160.i.i.i, align 8, !tbaa !127
  %i.amm = add i32 %i.aml, -1
  %i.amn = zext i32 %i.amm to i64
  %i.amo = load ptr, ptr %i.mt, align 8, !tbaa !152
  %i.amp = getelementptr inbounds nuw [40 x i8], ptr %i.amo, i64 %i.amn ; 3 uses
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %.sroa.537.0.copyload.i.i.i = load i64, ptr %.sroa.537.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.640.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  %.sroa.640.0.copyload.i.i.i = load i64, ptr %.sroa.640.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.amp, i64 24
  %.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.02160.i.i.i, i64 24 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.02160.i.i.i, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !128
  %i.amt = load ptr, ptr %i.amq, align 8, !tbaa !349 ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 4, !tbaa !792 ; 2 uses
  %i.amv = icmp eq i8 %i.amu, 4
  br i1 %i.amv, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.amw = add i8 %i.amu, -5
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.amw, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i.i.i, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i.i.i: ; preds = %bb.ee
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 144
  %i.amy = load i32, ptr %i.amx, align 8, !tbaa !78
  %i.amz = icmp eq i32 %i.amy, 0
  br i1 %i.amz, label %bb.eg, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i.i

bb.eg:                                            ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i.i.i
  %i.ana = call noundef zeroext i1 @_ZNK4llvm12DIExpression9isComplexEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ams) #22
  br i1 %i.ana, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i.i.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i.i: ; preds = %bb.eg, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i.i.i, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.255") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.amq) #22
  %i.anb = load i64, ptr %14, align 8, !noalias !793 ; 2 uses
  %i.anc = load i64, ptr %i.nt, align 8, !noalias !794 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.anb, %i.anc
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i.i, %bb.ej
  %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i.i, %bb.ej ], [ %i.anb, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i.i ] ; 6 uses
  %i.and = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i, 4
  %i.ane = icmp eq i64 %i.and, 0                  ; 2 uses
  br i1 %i.ane, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.anf = inttoptr i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ang = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i, -5
  %i.anh = inttoptr i64 %i.ang to ptr
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !130, !noalias !795
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh
  %i.anj = phi ptr [ %i.anf, %bb.eh ], [ %i.ani, %bb.ei ]
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 136
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !139, !noalias !795
  %i.anm = load i8, ptr %i.anl, align 8, !tbaa !193, !noalias !795
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.anm, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i.i
  %34 = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i, -5
  %35 = add nuw i64 %34, 12
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.a = add nuw i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i, 144
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ane, i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.a, i64 %35 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i, %i.anc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !629

_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i47.i = icmp eq i64 %i.anc, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.not.i.i47.i, label %bb.er, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i.i.i

_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i.i.i: ; preds = %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.i.i.i, %bb.eg, %bb.ef
  %i.ann = load i32, ptr %16, align 8, !noalias !796
  %i.ano = and i32 %i.ann, 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ano, 0 ; 3 uses
  %i.anp = load ptr, ptr %i.nn, align 8, !noalias !796
  %i.anq = load ptr, ptr %i.no, align 8, !noalias !796
  %i.anr = load i32, ptr %i.np, align 8, !noalias !796
  %.sink2.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, ptr %i.anp, ptr %i.nn ; 3 uses
  %.sink1.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, ptr %i.anq, ptr %i.ni ; 2 uses
  %.sink.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i32 %i.anr, i32 4 ; 4 uses
  %i.ans = icmp eq i32 %.sink.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ans, label %.loopexit.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i.i.i
  %i.ant = add i32 %.sink.i.i.i.i.i.i.i.i.i, -1   ; 2 uses
  %i.anu = ptrtoint ptr %i.ami to i64
  %i.anv = mul i64 %i.anu, -4658895280553007687   ; 2 uses
  %i.anw = lshr i64 %i.anv, 31
  %i.anx = xor i64 %i.anw, %i.anv
  %i.any = ptrtoint ptr %i.amk to i64
  %i.anz = mul i64 %i.any, -4658895280553007687   ; 2 uses
  %i.aoa = lshr i64 %i.anz, 31
  %i.aob = xor i64 %i.aoa, %i.anz
  %i.aoc = shl i64 %i.anx, 32
  %i.aod = and i64 %i.aob, 4294967295
  %i.aoe = or disjoint i64 %i.aod, %i.aoc
  %i.aof = mul i64 %i.aoe, -4658895280553007687   ; 2 uses
  %i.aog = lshr i64 %i.aof, 31
  %i.aoh = xor i64 %i.aog, %i.aof
  %i.aoi = trunc i64 %i.aoh to i32
  %i.aoj = and i32 %i.ant, %i.aoi                 ; 3 uses
  %i.aok = zext i32 %i.aoj to i64                 ; 2 uses
  %i.aol = lshr i64 %i.aok, 5
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i.i, i64 %i.aol
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !116, !noalias !797
  %i.aoo = and i32 %i.aoj, 31
  %i.aop = lshr i32 %i.aon, %i.aoo
  %i.aoq = trunc i32 %i.aop to i1
  br i1 %i.aoq, label %.lr.ph.i.i.i.i.i113.i.i, label %.loopexit.i.i.i.i.i, !prof !117

.lr.ph.i.i.i.i.i113.i.i:                          ; preds = %bb.ek, %bb.el
  %i.aor = phi i64 [ %i.apb, %bb.el ], [ %i.aok, %bb.ek ]
  %.017.i.i.i.i.i.i.i = phi i32 [ %i.apa, %bb.el ], [ %i.aoj, %bb.ek ]
  %i.aos = getelementptr inbounds nuw [96 x i8], ptr %.sink2.i.i.i.i.i.i.i.i.i, i64 %i.aor ; 3 uses
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !225, !noalias !797
  %i.aou = icmp eq ptr %i.ami, %i.aot
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aow = load ptr, ptr %i.aov, align 8, !noalias !797
  %i.aox = icmp eq ptr %i.amk, %i.aow
  %i.aoy = select i1 %i.aou, i1 %i.aox, i1 false
  br i1 %i.aoy, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i.i.i, label %bb.el, !prof !120

bb.el:                                            ; preds = %.lr.ph.i.i.i.i.i113.i.i
  %i.aoz = add nuw i32 %.017.i.i.i.i.i.i.i, 1
  %i.apa = and i32 %i.aoz, %i.ant                 ; 3 uses
  %i.apb = zext i32 %i.apa to i64                 ; 2 uses
  %i.apc = lshr i64 %i.apb, 5
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i.i, i64 %i.apc
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !116, !noalias !797
  %i.apf = and i32 %i.apa, 31
  %i.apg = lshr i32 %i.ape, %i.apf
  %i.aph = trunc i32 %i.apg to i1
  br i1 %i.aph, label %.lr.ph.i.i.i.i.i113.i.i, label %.loopexit.i.i.i.i.i, !prof !121

.loopexit.i.i.i.i.i:                              ; preds = %bb.el, %bb.ek, %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i.i.i
  %i.api = zext i32 %.sink.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.apj = getelementptr inbounds nuw [96 x i8], ptr %.sink2.i.i.i.i.i.i.i.i.i, i64 %i.api
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i113.i.i
  %.pre.i114.i48.i = zext i32 %.sink.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i.i.i, %.loopexit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i114.i48.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i.i.i ], [ %i.api, %.loopexit.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi ptr [ %i.aos, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i.i.i ], [ %i.apj, %.loopexit.i.i.i.i.i ] ; 6 uses
  %i.apk = getelementptr inbounds nuw [96 x i8], ptr %.sink2.i.i.i.i.i.i.i.i.i, i64 %.pre-phi.i.i.i
  %i.apl = icmp eq ptr %.lcssa.sink.i.i.i.i.i, %i.apk
  br i1 %i.apl, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %bb.em

bb.em:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i.i.i
  %i.apm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 16
  %i.apn = load i32, ptr %i.apm, align 8, !noalias !798 ; 2 uses
  %i.apo = and i32 %i.apn, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.apo, 0 ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 24 ; 2 uses
  %i.apq = load ptr, ptr %i.app, align 8, !noalias !798
  %i.apr = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, ptr %i.apq, ptr %i.app
  %i.aps = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 88
  %i.apt = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 32
  %i.apu = load ptr, ptr %i.apt, align 8, !noalias !798
  %i.apv = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, ptr %i.apu, ptr %i.aps ; 4 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 40
  %i.apx = load i32, ptr %i.apw, align 8, !noalias !798
  %i.apy = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i32 %i.apx, i32 4 ; 2 uses
  %i.apz = icmp ult i32 %i.apn, 2
  %i.aqa = zext i32 %i.apy to i64                 ; 3 uses
  %.idx22.i.i.i.i = shl nuw nsw i64 %i.aqa, 4     ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.apy, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.apz, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aqb = add nuw nsw i64 %i.aqa, 31
  %i.aqc = lshr i64 %i.aqb, 5                     ; 4 uses
  %i.aqd = load i32, ptr %i.apv, align 4, !tbaa !116, !noalias !799 ; 2 uses
  %i.aqe = icmp eq i32 %i.aqd, 0
  br i1 %i.aqe, label %.lr.ph.i.i.i.i.i.i.i.i112.i.i.preheader, label %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i112.i.i.preheader:          ; preds = %bb.en
  %i.aqf = icmp eq i64 %i.aqc, 1
  br i1 %i.aqf, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %.lr.ph767

.lr.ph.i.i.i.i.i.i.i.i112.i.i:                    ; preds = %.lr.ph767
  %i.aqg = add nuw nsw i64 %i.aqi, 1              ; 2 uses
  %i.aqh = icmp eq i64 %i.aqg, %i.aqc
  br i1 %i.aqh, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %.lr.ph767, !llvm.loop !648

.lr.ph767:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i112.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i112.i.i
  %i.aqi = phi i64 [ %i.aqg, %.lr.ph.i.i.i.i.i.i.i.i112.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i112.i.i.preheader ] ; 3 uses
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.aqi
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !116, !noalias !799 ; 2 uses
  %i.aql = icmp eq i32 %i.aqk, 0
  br i1 %i.aql, label %.lr.ph.i.i.i.i.i.i.i.i112.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i, !llvm.loop !648

._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph767
  %i.aqm = shl i64 %i.aqi, 9
  br label %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i

_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i, %bb.en
  %.012.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.en ], [ %i.aqm, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aqd, %bb.en ], [ %i.aqk, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i.i ]
  %i.aqn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aqo = shl nuw nsw i32 %i.aqn, 4
  %.idx.i.i.i.i = zext nneg i32 %i.aqo to i64
  %i.aqp = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i.i.i, %.idx.i.i.i.i ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aqp, %.idx22.i.i.i.i
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i
  %i.aqq = trunc nuw i8 %.sroa.7.0.copyload.i.i.i to i1 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm13DebugVariable15DefaultFragmentE, i64 8), align 8, !tbaa !331, !noalias !800
  %.sroa.3.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i.i.i = select i1 %i.aqq, i64 %.sroa.640.0.copyload.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i.i.i = load i64, ptr @_ZN4llvm13DebugVariable15DefaultFragmentE, align 8, !tbaa !331, !noalias !800
  %.sroa.0.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i.i.i = select i1 %i.aqq, i64 %.sroa.537.0.copyload.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i.i.i
  %i.aqr = add i64 %.sroa.0.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i.i.i, %.sroa.3.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i.i.i
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pn.i.i111.i.i = phi i64 [ %i.aqp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.arq, %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aqs = getelementptr i8, ptr %i.apr, i64 %.pn.i.i111.i.i ; 2 uses
  %.val.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aqs, align 8, !tbaa !331, !noalias !800
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 8
  %.val.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aqt, align 8, !tbaa !331, !noalias !800 ; 2 uses
  %i.aqu = add i64 %.val.val1.i.i.i.i.i.i.i.i.i, %.val.val.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.aqu, %.sroa.3.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i.i.i
  %.not10.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.aqr, %.val.val1.i.i.i.i.i.i.i.i.i
  %i.aqv = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %.not10.i.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %i.aqv, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_1clESt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13DebugVariableE.exit.i.i", label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aqw = add i64 %.pn.i.i111.i.i, 16
  %i.aqx = ashr exact i64 %i.aqw, 4               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aqx, %i.aqa
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.aqy = lshr i64 %i.aqx, 5                     ; 3 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.aqy
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !116, !noalias !800
  %i.arb = trunc nuw i64 %i.aqx to i32
  %i.arc = and i32 %i.arb, 31
  %i.ard = shl nsw i32 -1, %i.arc
  %i.are = and i32 %i.ara, %i.ard                 ; 2 uses
  %i.arf = icmp eq i32 %i.are, 0
  br i1 %i.arf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.eq
  %i.arg = add nuw nsw i64 %i.aqy, 1              ; 2 uses
  %i.arh = icmp eq i64 %i.arg, %i.aqc
  br i1 %i.arh, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %.lr.ph770

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph770
  %i.ari = add i64 %i.ark, 1                      ; 2 uses
  %i.arj = icmp eq i64 %i.ari, %i.aqc
  br i1 %i.arj, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, label %.lr.ph770, !llvm.loop !648

.lr.ph770:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ark = phi i64 [ %i.ari, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.arg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.ark
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !116, !noalias !800 ; 2 uses
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !648
end_hunk_1
begin_hunk_2_@_ZL15analyzeFunctionRN4llvm8FunctionERKNS_10DataLayoutEP22FunctionVarLocsBuilder:bb.a
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_23DbgVariableFragmentInfoENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_23DbgVariableFragmentInfoENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i.i: ; preds = %.lr.ph.i.i.i46.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_23DbgVariableFragmentInfoENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i.i.i
  %i.bae = load i32, ptr %i.nr, align 8, !tbaa !78 ; 2 uses
  %i.baf = load i32, ptr %i.ns, align 4, !tbaa !143
  %.not.i.i19.i.i = icmp ult i32 %i.bae, %i.baf
  br i1 %.not.i.i19.i.i, label %bb.fb, label %bb.fa, !prof !120

bb.fa:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_23DbgVariableFragmentInfoENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) %.02160.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i.i41.i

bb.fb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_23DbgVariableFragmentInfoENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i.i
  %i.bag = zext i32 %i.bae to i64
  %i.bah = load ptr, ptr %15, align 8, !tbaa !71
  %i.bai = getelementptr inbounds nuw [32 x i8], ptr %i.bah, i64 %i.bag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bai, ptr noundef nonnull align 8 dereferenceable(32) %.02160.i.i.i, i64 32, i1 false)
  %i.baj = load i32, ptr %i.nr, align 8, !tbaa !78
  %i.bak = add i32 %i.baj, 1
  store i32 %i.bak, ptr %i.nr, align 8, !tbaa !78
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i.i41.i

_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i.i41.i: ; preds = %bb.fb, %bb.fa
  %i.bal = getelementptr inbounds nuw i8, ptr %.02160.i.i.i, i64 32 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.bal, %i.amc
  br i1 %.not23.i.i.i, label %._crit_edge.i.i42.i, label %bb.ee

_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i: ; preds = %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_1clESt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13DebugVariableE.exit.i.i", %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i, %bb.em, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i112.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i112.i.i, %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i.i, %bb.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bam = getelementptr inbounds nuw i8, ptr %.02160.i.i.i, i64 32 ; 2 uses
  %.not2376.i.i.i = icmp eq ptr %i.bam, %i.amc
  br i1 %.not2376.i.i.i, label %._crit_edge.thread.i.i.i, label %.outer.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i.i.i, %._crit_edge.i.i42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i64 %i.akz, ptr %13, align 8
  %i.ban = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8__detail9_Map_baseIN4llvm12PointerUnionIJPKNS1_11InstructionEPKNS1_9DbgRecordEEEESt4pairIKS9_NS1_11SmallVectorINS1_10VarLocInfoELj1EEEESaISF_ENS_10_Select1stESt8equal_toIS9_ESt4hashIS9_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.mh, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.bao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10VarLocInfoEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.ban, ptr noundef nonnull align 8 dereferenceable(48) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.critedge.i.i43.i

.critedge.i.i43.i:                                ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i42.i, %.loopexit.i.i38.i
  %i.bap = load ptr, ptr %15, align 8, !tbaa !71  ; 2 uses
  %i.baq = icmp eq ptr %i.bap, %i.nq
  br i1 %i.baq, label %_ZN4llvm11SmallVectorINS_10VarLocInfoELj1EED2Ev.exit.i.i45.i, label %bb.fc

bb.fc:                                            ; preds = %.critedge.i.i43.i
  call void @free(ptr noundef %i.bap) #22
  br label %_ZN4llvm11SmallVectorINS_10VarLocInfoELj1EED2Ev.exit.i.i45.i

_ZN4llvm11SmallVectorINS_10VarLocInfoELj1EED2Ev.exit.i.i45.i: ; preds = %bb.fc, %.critedge.i.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i"

"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clIKNS_11InstructionEEEDaPT_.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i29.i, %.preheader396.i.i, %_ZN4llvm11SmallVectorINS_10VarLocInfoELj1EED2Ev.exit.i.i45.i, %..loopexit_crit_edge22.i.i.i.i.i.i.i33.i, %bb.ea
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.0267.0380.i.i, i64 8
  %.sroa.0267.0.i.i = load ptr, ptr %i.bar, align 8, !tbaa !112 ; 2 uses
  %.not.i35.i = icmp eq ptr %.sroa.0267.0.i.i, %i.ra
  br i1 %.not.i35.i, label %_ZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilder.exit.i, label %.lr.ph382.i.i

.lr.ph.i21.i:                                     ; preds = %_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit.i.i
  %.sroa.0249.0376.i.i = phi ptr [ %.sroa.0249.2.i.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit.i.i ], [ %.sroa.01.1.i.i.i20.i, %_ZN4llvmL13filterDbgVarsENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE.exit.i19.i ] ; 2 uses
  %i.bas = ptrtoint ptr %.sroa.0249.0376.i.i to i64
  %i.bat = or i64 %i.bas, 4                       ; 14 uses
  %i.bau = load i64, ptr %i.mg, align 8, !tbaa !177
  %.not.not.i.i.i.i21.i.i = icmp eq i64 %i.bau, 0
  br i1 %.not.not.i.i.i.i21.i.i, label %.preheader.i78.i, label %bb.fe

.preheader.i78.i:                                 ; preds = %.lr.ph.i21.i, %bb.fd
  %.sroa.06.0.in.i.i.i.i82.i.i = phi ptr [ %.sroa.06.0.i.i.i.i83.i.i, %bb.fd ], [ %i.mj, %.lr.ph.i21.i ]
  %.sroa.06.0.i.i.i.i83.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i82.i.i, align 8, !tbaa !142 ; 4 uses
  %.not.i.i.i.i84.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i83.i.i, null
  br i1 %.not.i.i.i.i84.i.i, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clINS_17DbgVariableRecordEEEDaPT_.exit.i.i", label %bb.fd

bb.fd:                                            ; preds = %.preheader.i78.i
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i83.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i85.i.i = load i64, ptr %i.bav, align 8
  %i.baw = icmp eq i64 %i.bat, %.sroa.0.0.copyload.i.i.i.i.i.i85.i.i
  br i1 %i.baw, label %.loopexit.i30.i.i, label %.preheader.i78.i, !llvm.loop !15

bb.fe:                                            ; preds = %.lr.ph.i21.i
  %i.bax = load i64, ptr %i.mi, align 8, !tbaa !178 ; 2 uses
  %i.bay = urem i64 %i.bat, %i.bax                ; 2 uses
  %i.baz = load ptr, ptr %i.mh, align 8, !tbaa !179
  %i.bba = getelementptr inbounds nuw [8 x i8], ptr %i.baz, i64 %i.bay
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i.i22.i.i = icmp eq ptr %i.bbb, null
  br i1 %.not.i.i.i.i.i.i22.i.i, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clINS_17DbgVariableRecordEEEDaPT_.exit.i.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !142 ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbc, i64 64
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !182
  %i.bbg = icmp eq i64 %i.bat, %i.bbf
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i23.i.i = load i64, ptr %i.bbd, align 8
  %i.bbh = icmp eq i64 %i.bat, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i23.i.i
  %i.bbi = select i1 %i.bbg, i1 %i.bbh, i1 false
  br i1 %i.bbi, label %.loopexit.i30.i.i, label %.lr.ph.i.i.i.i.i.i24.i.i

bb.fg:                                            ; preds = %bb.fh
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbn, i64 8
  %i.bbk = icmp eq i64 %i.bat, %i.bbp
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.bbj, align 8
  %i.bbl = icmp eq i64 %i.bat, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i29.i.i
  %i.bbm = select i1 %i.bbk, i1 %i.bbl, i1 false
  br i1 %i.bbm, label %.loopexit.i30.i.i, label %.lr.ph.i.i.i.i.i.i24.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i.i24.i.i:                         ; preds = %bb.ff, %bb.fg
  %.021.i.i.i.i.i.i25.i.i = phi ptr [ %i.bbn, %bb.fg ], [ %i.bbc, %bb.ff ]
  %i.bbn = load ptr, ptr %.021.i.i.i.i.i.i25.i.i, align 8, !tbaa !142 ; 5 uses
  %.not18.i.i.i.i.i.i26.i.i = icmp eq ptr %i.bbn, null
  br i1 %.not18.i.i.i.i.i.i26.i.i, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clINS_17DbgVariableRecordEEEDaPT_.exit.i.i", label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i.i.i.i.i.i24.i.i
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 64
  %i.bbp = load i64, ptr %i.bbo, align 8, !tbaa !182 ; 2 uses
  %i.bbq = urem i64 %i.bbp, %i.bax
  %.not19.i.i.i.i.i.i27.i.i = icmp eq i64 %i.bbq, %i.bay
  br i1 %.not19.i.i.i.i.i.i27.i.i, label %bb.fg, label %..loopexit_crit_edge22.i.i.i.i.i.i28.i.i, !llvm.loop !2

..loopexit_crit_edge22.i.i.i.i.i.i28.i.i:         ; preds = %bb.fh
  br label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_0clINS_17DbgVariableRecordEEEDaPT_.exit.i.i", !llvm.loop !2

.loopexit.i30.i.i:                                ; preds = %bb.fg, %bb.fd, %bb.ff
  %.sroa.06.1.i.i.i.i31.i.i = phi ptr [ %.sroa.06.0.i.i.i.i83.i.i, %bb.fd ], [ %i.bbc, %bb.ff ], [ %i.bbn, %bb.fg ] ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i31.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.nj, ptr %12, align 8, !tbaa !71
  store i32 0, ptr %i.nk, align 8, !tbaa !78
  store i32 1, ptr %i.nl, align 4, !tbaa !143
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !71 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i31.i.i, i64 24
  %i.bbu = load i32, ptr %i.bbt, align 8, !tbaa !78 ; 2 uses
  %i.bbv = zext i32 %i.bbu to i64
  %.idx.i32.i.i = shl nuw nsw i64 %i.bbv, 5
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %.idx.i32.i.i ; 2 uses
  %.not2359.i33.i.i = icmp eq i32 %i.bbu, 0
  br i1 %.not2359.i33.i.i, label %.critedge.i72.i.i, label %.outer.i39.i.i

.outer.i39.i.i:                                   ; preds = %.loopexit.i30.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i
  %.02061.ph.i40.i.i = phi i1 [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i ], [ false, %.loopexit.i30.i.i ]
  %.02160.ph.i41.i.i = phi ptr [ %i.bqg, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i ], [ %i.bbs, %.loopexit.i30.i.i ]
  br label %bb.fi

._crit_edge.i71.i.i:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i69.i.i
  br i1 %.02061.ph.i40.i.i, label %._crit_edge.thread.i74.i.i, label %.critedge.i72.i.i

bb.fi:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i69.i.i, %.outer.i39.i.i
  %.02160.i42.i.i = phi ptr [ %i.bqf, %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.i69.i.i ], [ %.02160.ph.i41.i.i, %.outer.i39.i.i ] ; 9 uses
  %i.bbx = load i32, ptr %.02160.i42.i.i, align 8, !tbaa !127
  %i.bby = add i32 %i.bbx, -1
  %i.bbz = zext i32 %i.bby to i64
  %i.bca = load ptr, ptr %i.mt, align 8, !tbaa !152
  %i.bcb = getelementptr inbounds nuw [40 x i8], ptr %i.bca, i64 %i.bbz
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !101 ; 7 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.02160.i42.i.i, i64 16
  %i.bce = call noundef ptr @_ZNK4llvm8DebugLoc12getInlinedAtEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bcd) #22 ; 7 uses
  %i.bcf = load i32, ptr %.02160.i42.i.i, align 8, !tbaa !127
  %i.bcg = add i32 %i.bcf, -1
  %i.bch = zext i32 %i.bcg to i64
  %i.bci = load ptr, ptr %i.mt, align 8, !tbaa !152
  %i.bcj = getelementptr inbounds nuw [40 x i8], ptr %i.bci, i64 %i.bch ; 3 uses
  %.sroa.537.0..sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %i.bcj, i64 8
  %.sroa.537.0.copyload.i45.i.i = load i64, ptr %.sroa.537.0..sroa_idx.i44.i.i, align 8 ; 2 uses
  %.sroa.640.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %i.bcj, i64 16
  %.sroa.640.0.copyload.i47.i.i = load i64, ptr %.sroa.640.0..sroa_idx.i46.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %i.bcj, i64 24
  %.sroa.7.0.copyload.i49.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i48.i.i, align 8 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.02160.i42.i.i, i64 24 ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %.02160.i42.i.i, i64 8
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !128
  %i.bcn = load ptr, ptr %i.bck, align 8, !tbaa !349 ; 2 uses
  %i.bco = load i8, ptr %i.bcn, align 4, !tbaa !792 ; 2 uses
  %i.bcp = icmp eq i8 %i.bco, 4
  br i1 %i.bcp, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i81.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bcq = add i8 %i.bco, -5
  %switch.i.i.i.i.i.i.i.i.i.i51.i.i = icmp ult i8 %i.bcq, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i.i51.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i77.i.i, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i52.i.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i81.i.i: ; preds = %bb.fi
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcn, i64 144
  %i.bcs = load i32, ptr %i.bcr, align 8, !tbaa !78
  %i.bct = icmp eq i32 %i.bcs, 0
  br i1 %i.bct, label %bb.fk, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i52.i.i

bb.fk:                                            ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i81.i.i
  %i.bcu = call noundef zeroext i1 @_ZNK4llvm12DIExpression9isComplexEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bcm) #22
  br i1 %i.bcu, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i52.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i77.i.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i52.i.i: ; preds = %bb.fk, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i.i81.i.i, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.255") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.bck) #22
  %i.bcv = load i64, ptr %11, align 8, !noalias !806 ; 2 uses
  %i.bcw = load i64, ptr %i.nm, align 8, !noalias !807 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i53.i.i = icmp eq i64 %i.bcv, %i.bcw
  br i1 %.not3.i.i.i.i.i.i.i.i53.i.i, label %.sink.split.i61.i.i, label %.lr.ph.i.i.i.i.i.i.i.i54.i.i

.lr.ph.i.i.i.i.i.i.i.i54.i.i:                     ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i52.i.i, %bb.fn
  %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i58.i.i, %bb.fn ], [ %i.bcv, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i52.i.i ] ; 6 uses
  %i.bcx = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i, 4
  %i.bcy = icmp eq i64 %i.bcx, 0                  ; 2 uses
  br i1 %i.bcy, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i54.i.i
  %i.bcz = inttoptr i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i56.i.i

bb.fm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i54.i.i
  %i.bda = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i, -5
  %i.bdb = inttoptr i64 %i.bda to ptr
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !130, !noalias !808
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i56.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i56.i.i: ; preds = %bb.fm, %bb.fl
  %i.bdd = phi ptr [ %i.bcz, %bb.fl ], [ %i.bdc, %bb.fm ]
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 136
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !139, !noalias !808
  %i.bdg = load i8, ptr %i.bdf, align 8, !tbaa !193, !noalias !808
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i57.i.i = icmp ult i8 %i.bdg, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i57.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.i75.i.i, label %bb.fn

bb.fn:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i56.i.i
  %36 = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i, -5
  %37 = add nuw i64 %36, 12
  %storemerge.i.i.i.i.i.i.i.i.i59.i.i = add nuw i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i, 144
  %storemerge.i.i.i.i.i.i.i.i.i58.i.i = select i1 %i.bcy, i64 %storemerge.i.i.i.i.i.i.i.i.i59.i.i, i64 %37 ; 2 uses
  %.not.i.i.i.i.i.i.i.i60.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i58.i.i, %i.bcw
  br i1 %.not.i.i.i.i.i.i.i.i60.i.i, label %.sink.split.i61.i.i, label %.lr.ph.i.i.i.i.i.i.i.i54.i.i, !llvm.loop !629

_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.i75.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i56.i.i
  %.not.i76.i.i = icmp eq i64 %i.bcw, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.not.i76.i.i, label %bb.fv, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i77.i.i

_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i77.i.i: ; preds = %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.i75.i.i, %bb.fk, %bb.fj
  %i.bdh = load i32, ptr %16, align 8, !noalias !809
  %i.bdi = and i32 %i.bdh, 1
  %.not.i.i.i.i.i.i.i167.i.i = icmp eq i32 %i.bdi, 0 ; 3 uses
  %i.bdj = load ptr, ptr %i.nn, align 8, !noalias !809
  %i.bdk = load ptr, ptr %i.no, align 8, !noalias !809
  %i.bdl = load i32, ptr %i.np, align 8, !noalias !809
  %.sink2.i.i.i.i.i.i.i168.i.i = select i1 %.not.i.i.i.i.i.i.i167.i.i, ptr %i.bdj, ptr %i.nn ; 3 uses
  %.sink1.i.i.i.i.i.i.i169.i.i = select i1 %.not.i.i.i.i.i.i.i167.i.i, ptr %i.bdk, ptr %i.ni ; 2 uses
  %.sink.i.i.i.i.i.i.i170.i.i = select i1 %.not.i.i.i.i.i.i.i167.i.i, i32 %i.bdl, i32 4 ; 4 uses
  %i.bdm = icmp eq i32 %.sink.i.i.i.i.i.i.i170.i.i, 0
  br i1 %i.bdm, label %.loopexit.i.i.i171.i.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i77.i.i
  %i.bdn = add i32 %.sink.i.i.i.i.i.i.i170.i.i, -1 ; 2 uses
  %i.bdo = ptrtoint ptr %i.bcc to i64
  %i.bdp = mul i64 %i.bdo, -4658895280553007687   ; 2 uses
  %i.bdq = lshr i64 %i.bdp, 31
  %i.bdr = xor i64 %i.bdq, %i.bdp
  %i.bds = ptrtoint ptr %i.bce to i64
  %i.bdt = mul i64 %i.bds, -4658895280553007687   ; 2 uses
  %i.bdu = lshr i64 %i.bdt, 31
  %i.bdv = xor i64 %i.bdu, %i.bdt
  %i.bdw = shl i64 %i.bdr, 32
  %i.bdx = and i64 %i.bdv, 4294967295
  %i.bdy = or disjoint i64 %i.bdx, %i.bdw
  %i.bdz = mul i64 %i.bdy, -4658895280553007687   ; 2 uses
  %i.bea = lshr i64 %i.bdz, 31
  %i.beb = xor i64 %i.bea, %i.bdz
  %i.bec = trunc i64 %i.beb to i32
  %i.bed = and i32 %i.bdn, %i.bec                 ; 3 uses
  %i.bee = zext i32 %i.bed to i64                 ; 2 uses
  %i.bef = lshr i64 %i.bee, 5
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i169.i.i, i64 %i.bef
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !116, !noalias !810
  %i.bei = and i32 %i.bed, 31
  %i.bej = lshr i32 %i.beh, %i.bei
  %i.bek = trunc i32 %i.bej to i1
  br i1 %i.bek, label %.lr.ph.i.i.i.i.i215.i.i, label %.loopexit.i.i.i171.i.i, !prof !117

.lr.ph.i.i.i.i.i215.i.i:                          ; preds = %bb.fo, %bb.fp
  %i.bel = phi i64 [ %i.bev, %bb.fp ], [ %i.bee, %bb.fo ]
  %.017.i.i.i.i.i216.i.i = phi i32 [ %i.beu, %bb.fp ], [ %i.bed, %bb.fo ]
  %i.bem = getelementptr inbounds nuw [96 x i8], ptr %.sink2.i.i.i.i.i.i.i168.i.i, i64 %i.bel ; 3 uses
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !225, !noalias !810
  %i.beo = icmp eq ptr %i.bcc, %i.ben
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bem, i64 8
  %i.beq = load ptr, ptr %i.bep, align 8, !noalias !810
  %i.ber = icmp eq ptr %i.bce, %i.beq
  %i.bes = select i1 %i.beo, i1 %i.ber, i1 false
  br i1 %i.bes, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i217.i.i, label %bb.fp, !prof !120

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i.i215.i.i
  %i.bet = add nuw i32 %.017.i.i.i.i.i216.i.i, 1
  %i.beu = and i32 %i.bet, %i.bdn                 ; 3 uses
  %i.bev = zext i32 %i.beu to i64                 ; 2 uses
  %i.bew = lshr i64 %i.bev, 5
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i169.i.i, i64 %i.bew
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !116, !noalias !810
  %i.bez = and i32 %i.beu, 31
  %i.bfa = lshr i32 %i.bey, %i.bez
  %i.bfb = trunc i32 %i.bfa to i1
  br i1 %i.bfb, label %.lr.ph.i.i.i.i.i215.i.i, label %.loopexit.i.i.i171.i.i, !prof !121

.loopexit.i.i.i171.i.i:                           ; preds = %bb.fp, %bb.fo, %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread.i77.i.i
  %i.bfc = zext i32 %.sink.i.i.i.i.i.i.i170.i.i to i64 ; 2 uses
  %i.bfd = getelementptr inbounds nuw [96 x i8], ptr %.sink2.i.i.i.i.i.i.i168.i.i, i64 %i.bfc
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i172.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i217.i.i: ; preds = %.lr.ph.i.i.i.i.i215.i.i
  %.pre.i218.i.i = zext i32 %.sink.i.i.i.i.i.i.i170.i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i172.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i172.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i217.i.i, %.loopexit.i.i.i171.i.i
  %.pre-phi.i173.i.i = phi i64 [ %.pre.i218.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i217.i.i ], [ %i.bfc, %.loopexit.i.i.i171.i.i ]
  %.lcssa.sink.i.i.i174.i.i = phi ptr [ %i.bem, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.loopexit.i217.i.i ], [ %i.bfd, %.loopexit.i.i.i171.i.i ] ; 6 uses
  %i.bfe = getelementptr inbounds nuw [96 x i8], ptr %.sink2.i.i.i.i.i.i.i168.i.i, i64 %.pre-phi.i173.i.i
  %i.bff = icmp eq ptr %.lcssa.sink.i.i.i174.i.i, %i.bfe
  br i1 %i.bff, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %bb.fq

bb.fq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEELj4ENSC_IS9_vEENS_6detail12DenseMapPairIS9_SE_EEEES9_SE_SF_SI_E4findERKS9_.exit.i172.i.i
  %i.bfg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i174.i.i, i64 16
  %i.bfh = load i32, ptr %i.bfg, align 8, !noalias !811 ; 2 uses
  %i.bfi = and i32 %i.bfh, 1
  %.not.i.i.i.i.i.i.i.i.i181.i.i = icmp eq i32 %i.bfi, 0 ; 3 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i174.i.i, i64 24 ; 2 uses
  %i.bfk = load ptr, ptr %i.bfj, align 8, !noalias !811
  %i.bfl = select i1 %.not.i.i.i.i.i.i.i.i.i181.i.i, ptr %i.bfk, ptr %i.bfj
  %i.bfm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i174.i.i, i64 88
  %i.bfn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i174.i.i, i64 32
  %i.bfo = load ptr, ptr %i.bfn, align 8, !noalias !811
  %i.bfp = select i1 %.not.i.i.i.i.i.i.i.i.i181.i.i, ptr %i.bfo, ptr %i.bfm ; 4 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i174.i.i, i64 40
  %i.bfr = load i32, ptr %i.bfq, align 8, !noalias !811
  %i.bfs = select i1 %.not.i.i.i.i.i.i.i.i.i181.i.i, i32 %i.bfr, i32 4 ; 2 uses
  %i.bft = icmp ult i32 %i.bfh, 2
  %i.bfu = zext i32 %i.bfs to i64                 ; 3 uses
  %.idx22.i.i182.i.i = shl nuw nsw i64 %i.bfu, 4  ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i183.i.i = icmp eq i32 %i.bfs, 0
  %or.cond.i.i.i.i.i184.i.i = select i1 %i.bft, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i183.i.i
  br i1 %or.cond.i.i.i.i.i184.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bfv = add nuw nsw i64 %i.bfu, 31
  %i.bfw = lshr i64 %i.bfv, 5                     ; 4 uses
  %i.bfx = load i32, ptr %i.bfp, align 4, !tbaa !116, !noalias !812 ; 2 uses
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %.lr.ph.i.i.i.i.i.i.i.i212.i.i.preheader, label %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i185.i.i

.lr.ph.i.i.i.i.i.i.i.i212.i.i.preheader:          ; preds = %bb.fr
  %i.bfz = icmp eq i64 %i.bfw, 1
  br i1 %i.bfz, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %.lr.ph762

.lr.ph.i.i.i.i.i.i.i.i212.i.i:                    ; preds = %.lr.ph762
  %i.bga = add nuw nsw i64 %i.bgc, 1              ; 2 uses
  %i.bgb = icmp eq i64 %i.bga, %i.bfw
  br i1 %i.bgb, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %.lr.ph762, !llvm.loop !648

.lr.ph762:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i212.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i212.i.i
  %i.bgc = phi i64 [ %i.bga, %.lr.ph.i.i.i.i.i.i.i.i212.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i212.i.i.preheader ] ; 3 uses
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.bfp, i64 %i.bgc
  %i.bge = load i32, ptr %i.bgd, align 4, !tbaa !116, !noalias !812 ; 2 uses
  %i.bgf = icmp eq i32 %i.bge, 0
  br i1 %i.bgf, label %.lr.ph.i.i.i.i.i.i.i.i212.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i214.i.i, !llvm.loop !648

._crit_edge.i.loopexit.i.i.i.i.i.i.i214.i.i:      ; preds = %.lr.ph762
  %i.bgg = shl i64 %i.bgc, 9
  br label %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i185.i.i

_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i185.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i214.i.i, %bb.fr
  %.012.lcssa.i.i.i.i.i.i.i.i186.i.i = phi i64 [ 0, %bb.fr ], [ %i.bgg, %._crit_edge.i.loopexit.i.i.i.i.i.i.i214.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i187.i.i = phi i32 [ %i.bfx, %bb.fr ], [ %i.bge, %._crit_edge.i.loopexit.i.i.i.i.i.i.i214.i.i ]
  %i.bgh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i187.i.i, i1 true)
  %i.bgi = shl nuw nsw i32 %i.bgh, 4
  %.idx.i.i188.i.i = zext nneg i32 %i.bgi to i64
  %i.bgj = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i186.i.i, %.idx.i.i188.i.i ; 2 uses
  %.not3.i.i.i.i.i.i.i189.i.i = icmp eq i64 %i.bgj, %.idx22.i.i182.i.i
  br i1 %.not3.i.i.i.i.i.i.i189.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %.lr.ph.i.i.i.i.i.i.i190.i.i

.lr.ph.i.i.i.i.i.i.i190.i.i:                      ; preds = %_ZN4llvm9adl_beginIRNS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoIS2_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i185.i.i
  %i.bgk = trunc nuw i8 %.sroa.7.0.copyload.i49.i.i to i1 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i191.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm13DebugVariable15DefaultFragmentE, i64 8), align 8, !tbaa !331, !noalias !813
  %.sroa.3.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i192.i.i = select i1 %i.bgk, i64 %.sroa.640.0.copyload.i47.i.i, i64 %.sroa.3.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i191.i.i ; 2 uses
  %.sroa.0.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i193.i.i = load i64, ptr @_ZN4llvm13DebugVariable15DefaultFragmentE, align 8, !tbaa !331, !noalias !813
  %.sroa.0.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i194.i.i = select i1 %i.bgk, i64 %.sroa.537.0.copyload.i45.i.i, i64 %.sroa.0.0.i.i.i.i.i.sroa.speculate.load.false.i.i.i.i.i.i193.i.i
  %i.bgl = add i64 %.sroa.0.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i194.i.i, %.sroa.3.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i192.i.i
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i204.i.i, %.lr.ph.i.i.i.i.i.i.i190.i.i
  %.pn.i.i195.i.i = phi i64 [ %i.bgj, %.lr.ph.i.i.i.i.i.i.i190.i.i ], [ %i.bhk, %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i204.i.i ] ; 3 uses
  %i.bgm = getelementptr i8, ptr %i.bfl, i64 %.pn.i.i195.i.i ; 2 uses
  %.val.val.i.i.i.i.i.i.i196.i.i = load i64, ptr %i.bgm, align 8, !tbaa !331, !noalias !813
  %i.bgn = getelementptr i8, ptr %i.bgm, i64 8
  %.val.val1.i.i.i.i.i.i.i197.i.i = load i64, ptr %i.bgn, align 8, !tbaa !331, !noalias !813 ; 2 uses
  %i.bgo = add i64 %.val.val1.i.i.i.i.i.i.i197.i.i, %.val.val.i.i.i.i.i.i.i196.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i198.i.i = icmp ugt i64 %i.bgo, %.sroa.3.0.i.i.i.i.i.sroa.speculated.i.i.i.i.i.i192.i.i
  %.not10.i.not.i.i.i.i.i.i.i.i.i.i199.i.i = icmp ugt i64 %i.bgl, %.val.val1.i.i.i.i.i.i.i197.i.i
  %i.bgp = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i198.i.i, i1 %.not10.i.not.i.i.i.i.i.i.i.i.i.i199.i.i, i1 false
  br i1 %i.bgp, label %"_ZZL32removeUndefDbgLocsFromEntryBlockPKN4llvm10BasicBlockER22FunctionVarLocsBuilderENK3$_1clESt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13DebugVariableE.exit219.i.i", label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bgq = add i64 %.pn.i.i195.i.i, 16
  %i.bgr = ashr exact i64 %i.bgq, 4               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i200.i.i = icmp ult i64 %i.bgr, %i.bfu
  br i1 %.not.i.i.i.i.i.i.i.i.i.i200.i.i, label %bb.fu, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.bgs = lshr i64 %i.bgr, 5                     ; 3 uses
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.bfp, i64 %i.bgs
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !116, !noalias !813
  %i.bgv = trunc nuw i64 %i.bgr to i32
  %i.bgw = and i32 %i.bgv, 31
  %i.bgx = shl nsw i32 -1, %i.bgw
  %i.bgy = and i32 %i.bgu, %i.bgx                 ; 2 uses
  %i.bgz = icmp eq i32 %i.bgy, 0
  br i1 %i.bgz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i204.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i.preheader:      ; preds = %bb.fu
  %i.bha = add nuw nsw i64 %i.bgs, 1              ; 2 uses
  %i.bhb = icmp eq i64 %i.bha, %i.bfw
  br i1 %i.bhb, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %.lr.ph764

.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i:                ; preds = %.lr.ph764
  %i.bhc = add i64 %i.bhe, 1                      ; 2 uses
  %i.bhd = icmp eq i64 %i.bhc, %i.bfw
  br i1 %i.bhd, label %_ZN4llvm23SmallVectorTemplateBaseINS_10VarLocInfoELb1EE9push_backERKS1_.exit.thread.i79.i.i, label %.lr.ph764, !llvm.loop !648

.lr.ph764:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i
  %i.bhe = phi i64 [ %i.bhc, %.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i ], [ %i.bha, %.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i.preheader ] ; 3 uses
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bfp, i64 %i.bhe
  %i.bhg = load i32, ptr %i.bhf, align 4, !tbaa !116, !noalias !813 ; 2 uses
  %i.bhh = icmp eq i32 %i.bhg, 0
  br i1 %i.bhh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i210.i.i, label %_ZN4llvm6detail12DenseSetImplINS_23DbgVariableFragmentInfoENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i204.i.i, !llvm.loop !648
end_hunk_2
