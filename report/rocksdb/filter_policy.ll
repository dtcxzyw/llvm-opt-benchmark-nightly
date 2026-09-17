Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/filter_policy?download=true
inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE:bb.a
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !270
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !273
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not46 = icmp eq ptr %2, null
  br i1 %.not46, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !245 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !245
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(316) %0, i64 noundef %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr null, ptr %7, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store ptr null, ptr %8, align 8, !tbaa !278
  %i.ak = invoke fastcc noundef i64 @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder21AllocateMaybeRoundingEmmPSt10unique_ptrIA_cSt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.aj, i64 noundef %i.ac, ptr noundef %7)
          to label %bb.e unwind label %bb.h       ; 8 uses

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145 ; 3 uses
  %.not99 = icmp eq ptr %i.am, null
  br i1 %.not99, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %i.ak, ptr noundef nonnull %8)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !245 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i48, label %_ZN7rocksdb6StatusD2Ev.exit50, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i49

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i49: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit50

_ZN7rocksdb6StatusD2Ev.exit50:                    ; preds = %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.i:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bd

bb.j:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit50, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.au, align 8, !tbaa !260
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val47 = load i32, ptr %i.av, align 8
  %i.aw = mul i64 %i.ak, 8000
  %i.ax = add i64 %i.aw, -40000
  %i.ay = udiv i64 %i.ax, %i.ac
  %i.az = trunc i64 %i.ay to i32
  %.not.i54 = icmp eq ptr %.val, null
  %spec.select.i = select i1 %.not.i54, i32 %.val47, i32 %i.az ; 14 uses
  %i.ba = icmp slt i32 %spec.select.i, 2081
  br i1 %i.ba, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign ult i32 %spec.select.i, 3581
  br i1 %i.bb, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp samesign ult i32 %spec.select.i, 5101
  br i1 %i.bc, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp samesign ult i32 %spec.select.i, 6641
  br i1 %i.bd, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp samesign ult i32 %spec.select.i, 8301
  br i1 %i.be, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp samesign ult i32 %spec.select.i, 10071
  br i1 %i.bf, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp samesign ult i32 %spec.select.i, 11721
  br i1 %i.bg, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp samesign ult i32 %spec.select.i, 14002
  br i1 %i.bh, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp samesign ult i32 %spec.select.i, 16051
  br i1 %i.bi, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp samesign ult i32 %spec.select.i, 18301
  br i1 %i.bj, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ult i32 %spec.select.i, 22002
  br i1 %i.bk, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = icmp samesign ult i32 %spec.select.i, 25502
  br i1 %i.bl, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = icmp samesign ugt i32 %spec.select.i, 50000
  br i1 %i.bm, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = trunc nuw i32 %spec.select.i to i16
  %.lhs.trunc.i.i = add i16 %i.bn, -1
  %i.bo = udiv i16 %.lhs.trunc.i.i, 2000
  %.zext.i.i = zext nneg i16 %i.bo to i32
  %i.bp = add nsw i32 %.zext.i.i, -1
  br label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit

_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i.i = phi i32 [ %i.bp, %bb.w ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 5, %bb.n ], [ 6, %bb.o ], [ 7, %bb.p ], [ 8, %bb.q ], [ 9, %bb.r ], [ 10, %bb.s ], [ 11, %bb.t ], [ 12, %bb.u ], [ 24, %bb.v ] ; 7 uses
  %i.bq = trunc i64 %i.ak to i32
  %i.br = add i32 %i.bq, -5                       ; 4 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.av, label %bb.x

bb.x:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder12GetNumProbesEmm.exit
  %i.bs = load ptr, ptr %7, align 8, !tbaa !245   ; 12 uses
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !271 ; 2 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !271 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ne ptr %i.bt, null
  %.neg.i.i.i = sext i1 %i.bz to i64
  %i.ca = add nsw i64 %i.by, %.neg.i.i.i
  %i.cb = shl nsw i64 %i.ca, 6
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !270
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = add nsw i64 %i.cb, %i.ch
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !273 ; 3 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !269 ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = add nsw i64 %i.ci, %i.co                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %invariant.umin.i = call i64 @llvm.umin.i64(i64 %i.cp, i64 8) ; 2 uses
  %.not.i55 = icmp eq i64 %i.cp, 0
  br i1 %.not.i55, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  %i.cq = lshr i32 %i.br, 6                       ; 8 uses
  %i.cr = load i64, ptr %i.ck, align 8, !tbaa !272 ; 2 uses
  %11 = trunc i64 %i.cr to i32
  %12 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %11)
  %13 = shl nuw i32 %12, 6                        ; 2 uses
  %14 = zext i32 %13 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %14 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.cs, i32 0, i32 1, i32 1)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.ct, i32 0, i32 1, i32 1)
  store i32 %13, ptr %6, align 4, !tbaa !139
  %i.cu = lshr i64 %i.cr, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  store i32 %i.cv, ptr %5, align 4, !tbaa !139
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cj
  br i1 %i.cx, label %bb.z, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i

.preheader47.i:                                   ; preds = %bb.am, %bb.an, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i
  %.sroa.19.2.i.lcssa = phi ptr [ %.sroa.19.2.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i ], [ %.sroa.19.2.i.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1 ], [ %.sroa.19.2.i.2, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2 ], [ %.sroa.19.2.i.3, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3 ], [ %.sroa.19.2.i.4, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4 ], [ %.sroa.19.2.i.5, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5 ], [ %.sroa.19.2.i.6, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6 ], [ %i.iu, %bb.an ], [ %.sroa.19.2.i.6, %bb.am ]
  %.sroa.14.2.i.lcssa = phi ptr [ %.sroa.14.2.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i ], [ %.sroa.14.2.i.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1 ], [ %.sroa.14.2.i.2, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2 ], [ %.sroa.14.2.i.3, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3 ], [ %.sroa.14.2.i.4, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4 ], [ %.sroa.14.2.i.5, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5 ], [ %.sroa.14.2.i.6, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6 ], [ %i.iw, %bb.an ], [ %.sroa.14.2.i.6, %bb.am ]
  %.sroa.0.2.i.lcssa = phi ptr [ %.sroa.0.2.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i ], [ %.sroa.0.2.i.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1 ], [ %.sroa.0.2.i.2, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2 ], [ %.sroa.0.2.i.3, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3 ], [ %.sroa.0.2.i.4, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4 ], [ %.sroa.0.2.i.5, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5 ], [ %.sroa.0.2.i.6, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6 ], [ %i.iv, %bb.an ], [ %i.is, %bb.am ]
  %i.cy = icmp ugt i64 %i.cp, 8
  br i1 %i.cy, label %.lr.ph.i.preheader.us.i.preheader, label %.lr.ph.i37.preheader.i.preheader

.lr.ph.i37.preheader.i.preheader:                 ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i, %.preheader47.i
  %i.cz = add i32 %.0.i.i, -1
  %xtraiter153 = and i32 %.0.i.i, 3               ; 3 uses
  %i.da = icmp ult i32 %i.cz, 3
  %unroll_iter157 = and i32 %.0.i.i, -4
  %lcmp.mod155.not = icmp eq i32 %xtraiter153, 0
  %lcmp.mod156 = icmp ne i32 %xtraiter153, 0
  br label %.lr.ph.i37.preheader.i

.lr.ph.i.preheader.us.i.preheader:                ; preds = %.preheader47.i
  %i.db = lshr i32 %i.br, 6
  %i.dc = add i32 %.0.i.i, -1
  %xtraiter = and i32 %.0.i.i, 3                  ; 3 uses
  %i.dd = icmp ult i32 %i.dc, 3
  %unroll_iter = and i32 %.0.i.i, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod152 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.i.preheader.us.i

.lr.ph.i.preheader.us.i:                          ; preds = %.lr.ph.i.preheader.us.i.preheader, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i
  %.158.us.i = phi i64 [ %i.fc, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i ], [ %invariant.umin.i, %.lr.ph.i.preheader.us.i.preheader ] ; 2 uses
  %.sroa.0.157.us.i = phi ptr [ %.sroa.0.3.us.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i ], [ %.sroa.0.2.i.lcssa, %.lr.ph.i.preheader.us.i.preheader ] ; 2 uses
  %.sroa.14.156.us.i = phi ptr [ %.sroa.14.3.us.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i ], [ %.sroa.14.2.i.lcssa, %.lr.ph.i.preheader.us.i.preheader ] ; 2 uses
  %.sroa.19.155.us.i = phi ptr [ %.sroa.19.3.us.i, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i ], [ %.sroa.19.2.i.lcssa, %.lr.ph.i.preheader.us.i.preheader ] ; 2 uses
  %i.de = and i64 %.158.us.i, 7                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.de ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !139 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !139
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.dj ; 5 uses
  br i1 %i.dd, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.preheader.us.i, %.lr.ph.i.us.i
  %.010.i.us.i = phi i32 [ %i.ey, %.lr.ph.i.us.i ], [ %i.dh, %.lr.ph.i.preheader.us.i ] ; 6 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i.us.i ], [ 0, %.lr.ph.i.preheader.us.i ]
  %i.dl = lshr i32 %.010.i.us.i, 23
  %i.dm = and i32 %i.dl, 7
  %i.dn = shl nuw nsw i32 1, %i.dm
  %i.do = lshr i32 %.010.i.us.i, 26
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !63
  %i.ds = trunc nuw i32 %i.dn to i8
  %i.dt = or i8 %i.dr, %i.ds
  store i8 %i.dt, ptr %i.dq, align 1, !tbaa !63
  %i.du = mul i32 %.010.i.us.i, -1640531527       ; 2 uses
  %i.dv = lshr i32 %i.du, 23
  %i.dw = and i32 %i.dv, 7
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = lshr i32 %i.du, 26
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !63
  %i.ec = trunc nuw i32 %i.dx to i8
  %i.ed = or i8 %i.eb, %i.ec
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !63
  %i.ee = mul i32 %.010.i.us.i, -480352335        ; 2 uses
  %i.ef = lshr i32 %i.ee, 23
  %i.eg = and i32 %i.ef, 7
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = lshr i32 %i.ee, 26
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ej ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !63
  %i.em = trunc nuw i32 %i.eh to i8
  %i.en = or i8 %i.el, %i.em
  store i8 %i.en, ptr %i.ek, align 1, !tbaa !63
  %i.eo = mul i32 %.010.i.us.i, 1933744105        ; 2 uses
  %i.ep = lshr i32 %i.eo, 23
  %i.eq = and i32 %i.ep, 7
  %i.er = shl nuw nsw i32 1, %i.eq
  %i.es = lshr i32 %i.eo, 26
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !63
  %i.ew = trunc nuw i32 %i.er to i8
  %i.ex = or i8 %i.ev, %i.ew
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !63
  %i.ey = mul i32 %.010.i.us.i, 905701473         ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !470

bb.y:                                             ; preds = %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.19.155.us.i, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !267 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i

_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i:    ; preds = %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i, %bb.y
  %.sroa.19.3.us.i = phi ptr [ %i.ez, %bb.y ], [ %.sroa.19.155.us.i, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i ]
  %.sroa.14.3.us.i = phi ptr [ %i.fb, %bb.y ], [ %.sroa.14.156.us.i, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i ]
  %.sroa.0.3.us.i = phi ptr [ %i.fa, %bb.y ], [ %i.ft, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i ]
  %i.fc = add nuw i64 %.158.us.i, 1               ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.cp
  br i1 %i.fd, label %.lr.ph.i.preheader.us.i, label %.lr.ph.i37.preheader.i.preheader, !llvm.loop !471

_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.us.i
  br i1 %lcmp.mod.not, label %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.preheader.us.i
  %.010.i.us.i.epil.init = phi i32 [ %i.dh, %.lr.ph.i.preheader.us.i ], [ %i.ey, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %.010.i.us.i.epil = phi i32 [ %i.fn, %.lr.ph.i.us.i.epil ], [ %.010.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.us.i.epil ], [ 0, %.lr.ph.i.us.i.epil.preheader ]
  %i.fe = lshr i32 %.010.i.us.i.epil, 23
  %i.ff = and i32 %i.fe, 7
  %i.fg = shl nuw nsw i32 1, %i.ff
  %i.fh = lshr i32 %.010.i.us.i.epil, 26
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !63
  %i.fl = trunc nuw i32 %i.fg to i8
  %i.fm = or i8 %i.fk, %i.fl
  store i8 %i.fm, ptr %i.fj, align 1, !tbaa !63
  %i.fn = mul i32 %.010.i.us.i.epil, -1640531527
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !472

_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i: ; preds = %.lr.ph.i.us.i.epil, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit.loopexit.us.i.unr-lcssa
  %i.fo = load i64, ptr %.sroa.0.157.us.i, align 8, !tbaa !272 ; 2 uses
  %15 = trunc i64 %i.fo to i32
  %16 = call noundef i32 @llvm.umulh.i32(i32 %i.db, i32 %15)
  %17 = shl nuw i32 %16, 6                        ; 2 uses
  %18 = zext i32 %17 to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %18 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.fp, i32 0, i32 1, i32 1)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.fq, i32 0, i32 1, i32 1)
  store i32 %17, ptr %i.dg, align 4, !tbaa !139
  %i.fr = lshr i64 %i.fo, 32
  %i.fs = trunc nuw i64 %i.fr to i32
  store i32 %i.fs, ptr %i.df, align 4, !tbaa !139
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.157.us.i, i64 8 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %.sroa.14.156.us.i
  br i1 %i.fu, label %bb.y, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit36.us.i

bb.z:                                             ; preds = %.lr.ph.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !267 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i:         ; preds = %bb.z, %.lr.ph.i
  %.sroa.19.2.i = phi ptr [ %i.fv, %bb.z ], [ %i.bu, %.lr.ph.i ] ; 3 uses
  %.sroa.14.2.i = phi ptr [ %i.fx, %bb.z ], [ %i.cj, %.lr.ph.i ] ; 3 uses
  %.sroa.0.2.i = phi ptr [ %i.fw, %bb.z ], [ %i.cw, %.lr.ph.i ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.cp, 1
  br i1 %exitcond.not.i, label %.preheader47.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i
  %i.fy = load i64, ptr %.sroa.0.2.i, align 8, !tbaa !272 ; 2 uses
  %19 = trunc i64 %i.fy to i32
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %21 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %19)
  %22 = shl nuw i32 %21, 6                        ; 2 uses
  %23 = zext i32 %22 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %23 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.fz, i32 0, i32 1, i32 1)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 1, i32 1)
  store i32 %22, ptr %20, align 4, !tbaa !139
  %i.gb = lshr i64 %i.fy, 32
  %i.gc = trunc nuw i64 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !139
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 8 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %.sroa.14.2.i
  br i1 %i.gf, label %bb.ab, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !267 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1:       ; preds = %bb.ab, %bb.aa
  %.sroa.19.2.i.1 = phi ptr [ %i.gg, %bb.ab ], [ %.sroa.19.2.i, %bb.aa ] ; 3 uses
  %.sroa.14.2.i.1 = phi ptr [ %i.gi, %bb.ab ], [ %.sroa.14.2.i, %bb.aa ] ; 3 uses
  %.sroa.0.2.i.1 = phi ptr [ %i.gh, %bb.ab ], [ %i.ge, %bb.aa ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cp, 2
  br i1 %exitcond.not.i.1, label %.preheader47.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.1
  %i.gj = load i64, ptr %.sroa.0.2.i.1, align 8, !tbaa !272 ; 2 uses
  %24 = trunc i64 %i.gj to i32
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %26 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %24)
  %27 = shl nuw i32 %26, 6                        ; 2 uses
  %28 = zext i32 %27 to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bs, i64 %28 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.gk, i32 0, i32 1, i32 1)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.gl, i32 0, i32 1, i32 1)
  store i32 %27, ptr %25, align 4, !tbaa !139
  %i.gm = lshr i64 %i.gj, 32
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !139
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.1, i64 8 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %.sroa.14.2.i.1
  br i1 %i.gq, label %bb.ad, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2

bb.ad:                                            ; preds = %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i.1, i64 8 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !267 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2:       ; preds = %bb.ad, %bb.ac
  %.sroa.19.2.i.2 = phi ptr [ %i.gr, %bb.ad ], [ %.sroa.19.2.i.1, %bb.ac ] ; 3 uses
  %.sroa.14.2.i.2 = phi ptr [ %i.gt, %bb.ad ], [ %.sroa.14.2.i.1, %bb.ac ] ; 3 uses
  %.sroa.0.2.i.2 = phi ptr [ %i.gs, %bb.ad ], [ %i.gp, %bb.ac ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i64 %i.cp, 3
  br i1 %exitcond.not.i.2, label %.preheader47.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.2
  %i.gu = load i64, ptr %.sroa.0.2.i.2, align 8, !tbaa !272 ; 2 uses
  %29 = trunc i64 %i.gu to i32
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %31 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %29)
  %32 = shl nuw i32 %31, 6                        ; 2 uses
  %33 = zext i32 %32 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %33 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.gv, i32 0, i32 1, i32 1)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.gw, i32 0, i32 1, i32 1)
  store i32 %32, ptr %30, align 4, !tbaa !139
  %i.gx = lshr i64 %i.gu, 32
  %i.gy = trunc nuw i64 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !139
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.2, i64 8 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %.sroa.14.2.i.2
  br i1 %i.hb, label %bb.af, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3

bb.af:                                            ; preds = %bb.ae
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i.2, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !267 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3:       ; preds = %bb.af, %bb.ae
  %.sroa.19.2.i.3 = phi ptr [ %i.hc, %bb.af ], [ %.sroa.19.2.i.2, %bb.ae ] ; 3 uses
  %.sroa.14.2.i.3 = phi ptr [ %i.he, %bb.af ], [ %.sroa.14.2.i.2, %bb.ae ] ; 3 uses
  %.sroa.0.2.i.3 = phi ptr [ %i.hd, %bb.af ], [ %i.ha, %bb.ae ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cp, 4
  br i1 %exitcond.not.i.3, label %.preheader47.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.3
  %i.hf = load i64, ptr %.sroa.0.2.i.3, align 8, !tbaa !272 ; 2 uses
  %34 = trunc i64 %i.hf to i32
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %36 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %34)
  %37 = shl nuw i32 %36, 6                        ; 2 uses
  %38 = zext i32 %37 to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %38 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.hg, i32 0, i32 1, i32 1)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.hh, i32 0, i32 1, i32 1)
  store i32 %37, ptr %35, align 4, !tbaa !139
  %i.hi = lshr i64 %i.hf, 32
  %i.hj = trunc nuw i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !139
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.3, i64 8 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %.sroa.14.2.i.3
  br i1 %i.hm, label %bb.ah, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4

bb.ah:                                            ; preds = %bb.ag
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i.3, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !267 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4:       ; preds = %bb.ah, %bb.ag
  %.sroa.19.2.i.4 = phi ptr [ %i.hn, %bb.ah ], [ %.sroa.19.2.i.3, %bb.ag ] ; 3 uses
  %.sroa.14.2.i.4 = phi ptr [ %i.hp, %bb.ah ], [ %.sroa.14.2.i.3, %bb.ag ] ; 3 uses
  %.sroa.0.2.i.4 = phi ptr [ %i.ho, %bb.ah ], [ %i.hl, %bb.ag ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i64 %i.cp, 5
  br i1 %exitcond.not.i.4, label %.preheader47.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.4
  %i.hq = load i64, ptr %.sroa.0.2.i.4, align 8, !tbaa !272 ; 2 uses
  %39 = trunc i64 %i.hq to i32
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %41 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %39)
  %42 = shl nuw i32 %41, 6                        ; 2 uses
  %43 = zext i32 %42 to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bs, i64 %43 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.hr, i32 0, i32 1, i32 1)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.hs, i32 0, i32 1, i32 1)
  store i32 %42, ptr %40, align 4, !tbaa !139
  %i.ht = lshr i64 %i.hq, 32
  %i.hu = trunc nuw i64 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !139
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.4, i64 8 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %.sroa.14.2.i.4
  br i1 %i.hx, label %bb.aj, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5

bb.aj:                                            ; preds = %bb.ai
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i.4, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !267 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5:       ; preds = %bb.aj, %bb.ai
  %.sroa.19.2.i.5 = phi ptr [ %i.hy, %bb.aj ], [ %.sroa.19.2.i.4, %bb.ai ] ; 3 uses
  %.sroa.14.2.i.5 = phi ptr [ %i.ia, %bb.aj ], [ %.sroa.14.2.i.4, %bb.ai ] ; 3 uses
  %.sroa.0.2.i.5 = phi ptr [ %i.hz, %bb.aj ], [ %i.hw, %bb.ai ] ; 3 uses
  %exitcond.not.i.5 = icmp eq i64 %i.cp, 6
  br i1 %exitcond.not.i.5, label %.preheader47.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.5
  %i.ib = load i64, ptr %.sroa.0.2.i.5, align 8, !tbaa !272 ; 2 uses
  %44 = trunc i64 %i.ib to i32
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %46 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %44)
  %47 = shl nuw i32 %46, 6                        ; 2 uses
  %48 = zext i32 %47 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bs, i64 %48 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ic, i32 0, i32 1, i32 1)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.id, i32 0, i32 1, i32 1)
  store i32 %47, ptr %45, align 4, !tbaa !139
  %i.ie = lshr i64 %i.ib, 32
  %i.if = trunc nuw i64 %i.ie to i32
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !139
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.5, i64 8 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %.sroa.14.2.i.5
  br i1 %i.ii, label %bb.al, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6

bb.al:                                            ; preds = %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i.5, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !267 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6

_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6:       ; preds = %bb.al, %bb.ak
  %.sroa.19.2.i.6 = phi ptr [ %i.ij, %bb.al ], [ %.sroa.19.2.i.5, %bb.ak ] ; 3 uses
  %.sroa.14.2.i.6 = phi ptr [ %i.il, %bb.al ], [ %.sroa.14.2.i.5, %bb.ak ] ; 3 uses
  %.sroa.0.2.i.6 = phi ptr [ %i.ik, %bb.al ], [ %i.ih, %bb.ak ] ; 3 uses
  %exitcond.not.i.6 = icmp eq i64 %i.cp, 7
  br i1 %exitcond.not.i.6, label %.preheader47.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit.i.6
  %i.im = load i64, ptr %.sroa.0.2.i.6, align 8, !tbaa !272 ; 2 uses
  %49 = trunc i64 %i.im to i32
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %51 = call noundef i32 @llvm.umulh.i32(i32 %i.cq, i32 %49)
  %52 = shl nuw i32 %51, 6                        ; 2 uses
  %53 = zext i32 %52 to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.bs, i64 %53 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.in, i32 0, i32 1, i32 1)
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 63
  call void @llvm.prefetch.p0(ptr nonnull %i.io, i32 0, i32 1, i32 1)
  store i32 %52, ptr %50, align 4, !tbaa !139
  %i.ip = lshr i64 %i.im, 32
  %i.iq = trunc nuw i64 %i.ip to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !139
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.6, i64 8 ; 2 uses
  %i.it = icmp eq ptr %i.is, %.sroa.14.2.i.6
  br i1 %i.it, label %bb.an, label %.preheader47.i

bb.an:                                            ; preds = %bb.am
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.19.2.i.6, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !267 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 512
  br label %.preheader47.i

.lr.ph.i37.preheader.i:                           ; preds = %.lr.ph.i37.preheader.i.preheader, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i
  %.261.i = phi i64 [ %i.lb, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i ], [ 0, %.lr.ph.i37.preheader.i.preheader ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.261.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !139 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.261.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !139
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.jb ; 5 uses
  br i1 %i.da, label %.lr.ph.i37.i.epil.preheader, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.preheader.i, %.lr.ph.i37.i
  %.010.i38.i = phi i32 [ %i.kq, %.lr.ph.i37.i ], [ %i.iy, %.lr.ph.i37.preheader.i ] ; 6 uses
  %niter158 = phi i32 [ %niter158.next.3, %.lr.ph.i37.i ], [ 0, %.lr.ph.i37.preheader.i ]
  %i.jd = lshr i32 %.010.i38.i, 23
  %i.je = and i32 %i.jd, 7
  %i.jf = shl nuw nsw i32 1, %i.je
  %i.jg = lshr i32 %.010.i38.i, 26
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jh ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !63
  %i.jk = trunc nuw i32 %i.jf to i8
  %i.jl = or i8 %i.jj, %i.jk
  store i8 %i.jl, ptr %i.ji, align 1, !tbaa !63
  %i.jm = mul i32 %.010.i38.i, -1640531527        ; 2 uses
  %i.jn = lshr i32 %i.jm, 23
  %i.jo = and i32 %i.jn, 7
  %i.jp = shl nuw nsw i32 1, %i.jo
  %i.jq = lshr i32 %i.jm, 26
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jr ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !63
  %i.ju = trunc nuw i32 %i.jp to i8
  %i.jv = or i8 %i.jt, %i.ju
  store i8 %i.jv, ptr %i.js, align 1, !tbaa !63
  %i.jw = mul i32 %.010.i38.i, -480352335         ; 2 uses
  %i.jx = lshr i32 %i.jw, 23
  %i.jy = and i32 %i.jx, 7
  %i.jz = shl nuw nsw i32 1, %i.jy
  %i.ka = lshr i32 %i.jw, 26
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.kb ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !63
  %i.ke = trunc nuw i32 %i.jz to i8
  %i.kf = or i8 %i.kd, %i.ke
  store i8 %i.kf, ptr %i.kc, align 1, !tbaa !63
  %i.kg = mul i32 %.010.i38.i, 1933744105         ; 2 uses
  %i.kh = lshr i32 %i.kg, 23
  %i.ki = and i32 %i.kh, 7
  %i.kj = shl nuw nsw i32 1, %i.ki
  %i.kk = lshr i32 %i.kg, 26
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.kl ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !63
  %i.ko = trunc nuw i32 %i.kj to i8
  %i.kp = or i8 %i.kn, %i.ko
  store i8 %i.kp, ptr %i.km, align 1, !tbaa !63
  %i.kq = mul i32 %.010.i38.i, 905701473          ; 2 uses
  %niter158.next.3 = add i32 %niter158, 4         ; 2 uses
  %niter158.ncmp.3 = icmp eq i32 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i.unr-lcssa, label %.lr.ph.i37.i, !llvm.loop !470

_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i37.i
  br i1 %lcmp.mod155.not, label %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i, label %.lr.ph.i37.i.epil.preheader

.lr.ph.i37.i.epil.preheader:                      ; preds = %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i.unr-lcssa, %.lr.ph.i37.preheader.i
  %.010.i38.i.epil.init = phi i32 [ %i.iy, %.lr.ph.i37.preheader.i ], [ %i.kq, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i37.i.epil

.lr.ph.i37.i.epil:                                ; preds = %.lr.ph.i37.i.epil, %.lr.ph.i37.i.epil.preheader
  %.010.i38.i.epil = phi i32 [ %i.la, %.lr.ph.i37.i.epil ], [ %.010.i38.i.epil.init, %.lr.ph.i37.i.epil.preheader ] ; 3 uses
  %epil.iter154 = phi i32 [ %epil.iter154.next, %.lr.ph.i37.i.epil ], [ 0, %.lr.ph.i37.i.epil.preheader ]
  %i.kr = lshr i32 %.010.i38.i.epil, 23
  %i.ks = and i32 %i.kr, 7
  %i.kt = shl nuw nsw i32 1, %i.ks
  %i.ku = lshr i32 %.010.i38.i.epil, 26
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.kv ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !63
  %i.ky = trunc nuw i32 %i.kt to i8
  %i.kz = or i8 %i.kx, %i.ky
  store i8 %i.kz, ptr %i.kw, align 1, !tbaa !63
  %i.la = mul i32 %.010.i38.i.epil, -1640531527
  %epil.iter154.next = add i32 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i32 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i, label %.lr.ph.i37.i.epil, !llvm.loop !473

_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i: ; preds = %.lr.ph.i37.i.epil, %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i.unr-lcssa
  %i.lb = add nuw nsw i64 %.261.i, 1              ; 2 uses
  %exitcond64.not.i = icmp eq i64 %i.lb, %invariant.umin.i
  br i1 %exitcond64.not.i, label %.loopexit, label %.lr.ph.i37.preheader.i, !llvm.loop !474

.loopexit:                                        ; preds = %_ZN7rocksdb18FastLocalBloomImpl15AddHashPreparedEjiPc.exit41.loopexit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder30MaybeVerifyHashEntriesChecksumEv(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %.loopexit
  %i.lc = load i8, ptr %10, align 8, !tbaa !242   ; 2 uses
  %i.ld = icmp eq i8 %i.lc, 0
  br i1 %i.ld, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not37 = icmp eq ptr %2, null
  %.not.i56 = icmp eq ptr %2, %10
  %or.cond = or i1 %.not37, %.not.i56
  br i1 %or.cond, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 %i.lc, ptr %2, align 8, !tbaa !242
  %i.le = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.lg = load <4 x i8>, ptr %i.le, align 1, !tbaa !63
  store <4 x i8> %i.lg, ptr %i.lf, align 1, !tbaa !63
  %i.lh = getelementptr inbounds nuw i8, ptr %10, i64 5
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !244
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.lk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !245 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i57, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull %i.ll)
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %bb.ar
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !245
  br label %bb.as

bb.as:                                            ; preds = %.noexc, %bb.aq
  %i.lm = phi ptr [ %.pre.i, %.noexc ], [ null, %bb.aq ]
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !245
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !245 ; 2 uses
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !245
  %.not.i.i.i.i.i58 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i58, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.lo) #39
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !245  ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i59

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i59: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #39
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i59, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

bb.at:                                            ; preds = %.loopexit
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit63

bb.au:                                            ; preds = %bb.ar
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load ptr, ptr %i.lk, align 8, !tbaa !245 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i60, label %_ZN7rocksdb6StatusD2Ev.exit63, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i61

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i61: ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.lr) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit63

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %bb.ap, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i
  %i.ls = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !245 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i64, label %_ZN7rocksdb6StatusD2Ev.exit67, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i65

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i65: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.lt) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit67

_ZN7rocksdb6StatusD2Ev.exit67:                    ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit82
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE11FilterQueryINS0_14StandardHasherIS5_EEEEbRKmRKT_:bb.a
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27.i = load i32, ptr %i.n, align 8, !tbaa !196 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val28.i = load i32, ptr %i.o, align 4, !tbaa !195 ; 2 uses
  %i.p = lshr i32 %i.m, 7                         ; 3 uses
  %i.q = mul i32 %i.p, %.val28.i
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.val27.i, i32 %i.p)
  %i.r = sub i32 %i.q, %.sroa.speculated.i        ; 5 uses
  %i.s = icmp ult i32 %i.p, %.val27.i
  %.neg.i = sext i1 %i.s to i32
  %i.t = add i32 %.val28.i, %.neg.i               ; 7 uses
  %i.u = and i32 %i.m, 127                        ; 7 uses
  %i.v = icmp eq i32 %i.u, 0                      ; 2 uses
  %i.w = select i1 %i.v, i32 0, i32 %i.t
  %i.x = add i32 %i.w, %i.t                       ; 2 uses
  %.val29.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = zext i32 %i.r to i64
  %i.aa = shl nuw nsw i64 %i.z, 4                 ; 2 uses
  %i.ab = add i32 %i.r, -1
  %i.ac = add i32 %i.ab, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 4                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.ae ; 2 uses
  %i.ag = icmp samesign ult i64 %i.aa, %i.ae
  br i1 %i.ag, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.aa
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.01.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.01.i.i, i32 0, i32 1, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 64 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.af
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  tail call void @llvm.prefetch.p0(ptr readonly %i.af, i32 0, i32 1, i32 1)
  br label %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit

_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit: ; preds = %bb.a, %._crit_edge.i.i
  %i.ak = mul i64 %i.b, -6572915358331089655      ; 6 uses
  %i.al = and i64 %i.ak, -2
  %i.am = xor i64 %i.al, -4366375858499063011     ; 5 uses
  %i.an = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.v, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit
  %.not4523.not.i = icmp eq i32 %i.t, 0
  br i1 %.not4523.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count35.i = zext i32 %i.t to i64
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next33.i, %.lr.ph25.i ] ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv32.i to i32    ; 2 uses
  %i.aq = add i32 %i.r, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.au, align 1
  %.0.copyload.i2.i.i.i.i = load i64, ptr %i.at, align 1
  %i.av = and i64 %.0.copyload.i2.i.i.i.i, %i.am
  %i.aw = and i64 %.0.copyload.i.i.i.i.i, %i.ak
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = lshr i32 %i.ao, %i.ap
  %i.bb = xor i32 %i.ba, %i.az
  %i.bc = and i32 %i.bb, 1
  %.not44.i = icmp eq i32 %i.bc, 0                ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp ne i64 %indvars.iv.next33.i, %wide.trip.count35.i
  %or.cond.not = select i1 %.not44.i, i1 %exitcond36.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph25.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, !llvm.loop !17

bb.c:                                             ; preds = %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit
  %i.bd = icmp samesign ugt i32 %i.u, 63
  br i1 %i.bd, label %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i, label %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread

_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread: ; preds = %bb.c
  %i.be = and i64 %i.l, 127                       ; 2 uses
  %i.bf = shl i64 %i.am, %i.be
  %i.bg = lshr i64 %i.am, 1
  %i.bh = sub nuw nsw i32 63, %i.u
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.bg, %i.bi
  %i.bk = shl i64 %i.ak, %i.be
  %i.bl = or i64 %i.bj, %i.bk
  %i.bm = sub nuw nsw i32 128, %i.u
  br label %bb.d

_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i:        ; preds = %bb.c
  %i.bn = and i64 %i.l, 63
  %i.bo = shl i64 %i.am, %i.bn                    ; 2 uses
  %i.bp = sub nuw nsw i32 128, %i.u               ; 2 uses
  %i.bq = icmp eq i32 %i.u, 64
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i
  %i.br = phi i32 [ %i.bm, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread ], [ %i.bp, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i ]
  %.sroa.4.0.i.i18 = phi i64 [ %i.bl, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread ], [ %i.bo, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i ]
  %.sroa.0.0.i.i16 = phi i64 [ %i.bf, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread ], [ 0, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i ]
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = lshr i64 %i.ak, %i.bt
  %i.bv = insertelement <2 x i64> poison, i64 %.sroa.0.0.i.i16, i64 0
  %i.bw = insertelement <2 x i64> %i.bv, i64 %.sroa.4.0.i.i18, i64 1
  %i.bx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bu, i64 0
  br label %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i

bb.e:                                             ; preds = %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i
  %i.by = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bz = lshr i64 %i.ak, %i.by
  %i.ca = mul i64 %i.b, 5300913357047372306
  %i.cb = add nsw i32 %i.u, -65
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl i64 %i.ca, %i.cc
  %i.ce = lshr i64 %i.am, %i.by
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.bo, i64 1
  %i.ch = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ci = insertelement <2 x i64> %i.ch, i64 %i.bz, i64 1
  br label %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i

_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i:        ; preds = %bb.e, %bb.d
  %i.cj = phi <2 x i64> [ %i.bw, %bb.d ], [ %i.cg, %bb.e ]
  %i.ck = phi <2 x i64> [ %i.bx, %bb.d ], [ %i.ci, %bb.e ]
  %.not4319.not.i = icmp eq i32 %i.t, 0
  br i1 %.not4319.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i
  %i.cl = add i32 %i.t, %i.r
  %wide.trip.count.i = zext i32 %i.t to i64
  %i.cm = shufflevector <2 x i64> %i.cj, <2 x i64> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.cn = trunc nuw i64 %indvars.iv.i to i32      ; 3 uses
  %i.co = add i32 %i.r, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.cq
  %i.cs = add i32 %i.cl, %i.cn
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.cu
  %i.cw = load <2 x i64>, ptr %i.cr, align 1
  %i.cx = load <2 x i64>, ptr %i.cv, align 1
  %i.cy = shufflevector <2 x i64> %i.cw, <2 x i64> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cz = and <4 x i64> %i.cy, %i.cm
  %i.da = tail call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> %i.cz)
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.da)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = lshr i32 %i.ao, %i.cn
  %i.de = xor i32 %i.dd, %i.dc
  %i.df = and i32 %i.de, 1
  %.not.i = icmp eq i32 %i.df, 0                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond23.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond23.not, label %bb.f, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, !llvm.loop !18

_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit: ; preds = %bb.f, %.lr.ph25.i, %.preheader.i, %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i
  %.4.i = phi i1 [ true, %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i ], [ %.not44.i, %.lr.ph25.i ], [ true, %.preheader.i ], [ %.not.i, %bb.f ]
  ret i1 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16FilterBitsReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader8MayMatchERKNS_5SliceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #30 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !180
  %i.d = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.a, i64 noundef %i.c) ; 2 uses
  %2 = trunc i64 %i.d to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = lshr i32 %i.f, 6
  %3 = tail call noundef i32 @llvm.umulh.i32(i32 %i.i, i32 %2)
  %4 = shl nuw i32 %3, 6
  %5 = zext i32 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %5 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 63
  tail call void @llvm.prefetch.p0(ptr nonnull %i.k, i32 0, i32 1, i32 1)
  %i.l = lshr i64 %i.d, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !191
  %i.p = load <8 x i32>, ptr %i.j, align 1, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.r = load <8 x i32>, ptr %i.q, align 1, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.031.i = phi i32 [ %i.m, %bb.a ], [ %i.ap, %bb.c ] ; 2 uses
  %.030.i = phi i32 [ %i.o, %bb.a ], [ %i.aq, %bb.c ] ; 3 uses
  %i.s = insertelement <8 x i32> poison, i32 %.031.i, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.u = mul <8 x i32> %i.t, <i32 1, i32 -1640531527, i32 -480352335, i32 1933744105, i32 905701473, i32 -558381287, i32 71873041, i32 878294857> ; 2 uses
  %i.v = lshr <8 x i32> %i.u, splat (i32 28)      ; 2 uses
  %i.w = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.p, <8 x i32> %i.v)
  %i.x = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.r, <8 x i32> %i.v)
  %i.y = ashr <8 x i32> %i.u, splat (i32 31)
  %i.z = bitcast <8 x i32> %i.w to <32 x i8>
  %i.aa = bitcast <8 x i32> %i.x to <32 x i8>
  %i.ab = bitcast <8 x i32> %i.y to <32 x i8>
  %i.ac = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.z, <32 x i8> %i.aa, <32 x i8> %i.ab)
  %i.ad = bitcast <32 x i8> %i.ac to <4 x i64>
  %i.ae = insertelement <8 x i32> poison, i32 %.030.i, i64 0
  %i.af = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ag = sub <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %i.af
  %i.ah = lshr <8 x i32> %i.ag, splat (i32 31)
  %i.ai = mul <8 x i32> %i.t, <i32 16, i32 -478700656, i32 904297232, i32 875134608, i32 1606321680, i32 -344166000, i32 1149968656, i32 1167815824>
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 27)
  %i.ak = shl nuw <8 x i32> %i.ah, %i.aj
  %i.al = bitcast <8 x i32> %i.ak to <4 x i64>
  %i.am = tail call noundef i32 @llvm.x86.avx.ptestc.256(<4 x i64> %i.ad, <4 x i64> %i.al)
  %i.an = icmp ne i32 %i.am, 0                    ; 2 uses
  %i.ao = icmp sgt i32 %.030.i, 8
  %brmerge.not.i = and i1 %i.ao, %i.an
  br i1 %brmerge.not.i, label %bb.c, label %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.ap = mul i32 %.031.i, -1423575871
  %i.aq = add nsw i32 %.030.i, -8
  br label %bb.b, !llvm.loop !19

_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit: ; preds = %bb.b
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader8MayMatchEiPPNS_5SliceEPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #30 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.177", align 4   ; 4 uses
  %5 = alloca %"struct.std::array.177", align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

.lr.ph20:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190
  %wide.trip.count25 = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !180
  %i.m = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.j, i64 noundef %i.l) ; 2 uses
  %6 = trunc i64 %i.m to i32
  %i.n = load i32, ptr %i.b, align 4, !tbaa !192
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !190
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.q = lshr i32 %i.n, 6
  %7 = tail call noundef i32 @llvm.umulh.i32(i32 %i.q, i32 %6)
  %8 = shl nuw i32 %7, 6                          ; 2 uses
  %9 = zext i32 %8 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %9 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 1, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 63
  tail call void @llvm.prefetch.p0(ptr nonnull %i.s, i32 0, i32 1, i32 1)
  store i32 %8, ptr %i.p, align 4, !tbaa !139
  %i.t = lshr i64 %i.m, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph20, label %bb.b, !llvm.loop !619

._crit_edge:                                      ; preds = %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.c:                                             ; preds = %.lr.ph20, %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit
  %indvars.iv22 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next23, %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv22
  %i.x = load i32, ptr %i.w, align 4, !tbaa !139
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv22
  %i.z = load i32, ptr %i.y, align 4, !tbaa !139
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa ; 2 uses
  %i.ac = load <8 x i32>, ptr %i.ab, align 1, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load <8 x i32>, ptr %i.ad, align 1, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.031.i = phi i32 [ %i.x, %bb.c ], [ %i.bc, %bb.e ] ; 2 uses
  %.030.i = phi i32 [ %i.e, %bb.c ], [ %i.bd, %bb.e ] ; 3 uses
  %i.af = insertelement <8 x i32> poison, i32 %.031.i, i64 0
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ah = mul <8 x i32> %i.ag, <i32 1, i32 -1640531527, i32 -480352335, i32 1933744105, i32 905701473, i32 -558381287, i32 71873041, i32 878294857> ; 2 uses
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 28)    ; 2 uses
  %i.aj = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.ac, <8 x i32> %i.ai)
  %i.ak = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.ae, <8 x i32> %i.ai)
  %i.al = ashr <8 x i32> %i.ah, splat (i32 31)
  %i.am = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.an = bitcast <8 x i32> %i.ak to <32 x i8>
  %i.ao = bitcast <8 x i32> %i.al to <32 x i8>
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.am, <32 x i8> %i.an, <32 x i8> %i.ao)
  %i.aq = bitcast <32 x i8> %i.ap to <4 x i64>
  %i.ar = insertelement <8 x i32> poison, i32 %.030.i, i64 0
  %i.as = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.at = sub <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %i.as
  %i.au = lshr <8 x i32> %i.at, splat (i32 31)
  %i.av = mul <8 x i32> %i.ag, <i32 16, i32 -478700656, i32 904297232, i32 875134608, i32 1606321680, i32 -344166000, i32 1149968656, i32 1167815824>
  %i.aw = lshr <8 x i32> %i.av, splat (i32 27)
  %i.ax = shl nuw <8 x i32> %i.au, %i.aw
  %i.ay = bitcast <8 x i32> %i.ax to <4 x i64>
  %i.az = tail call noundef i32 @llvm.x86.avx.ptestc.256(<4 x i64> %i.aq, <4 x i64> %i.ay)
  %i.ba = icmp ne i32 %i.az, 0                    ; 2 uses
  %i.bb = icmp sgt i32 %.030.i, 8
  %brmerge.not.i = and i1 %i.bb, %i.ba
  br i1 %brmerge.not.i, label %bb.e, label %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = mul i32 %.031.i, -1423575871
  %i.bd = add nsw i32 %.030.i, -8
  br label %bb.d, !llvm.loop !19

_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit: ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv22
  %i.bf = zext i1 %i.ba to i8
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !249
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge, label %bb.c, !llvm.loop !620
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader12HashMayMatchEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #31 align 2 {
bb.a:
  %2 = trunc i64 %1 to i32
  %i.a = lshr i64 %1, 32
  %i.b = trunc nuw i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !191
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = lshr i32 %i.d, 6
  %3 = tail call noundef i32 @llvm.umulh.i32(i32 %i.i, i32 %2)
  %4 = shl nuw i32 %3, 6
  %5 = zext i32 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %5 ; 2 uses
  %i.k = load <8 x i32>, ptr %i.j, align 1, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load <8 x i32>, ptr %i.l, align 1, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.031.i.i = phi i32 [ %i.b, %bb.a ], [ %i.ak, %bb.c ] ; 2 uses
  %.030.i.i = phi i32 [ %i.f, %bb.a ], [ %i.al, %bb.c ] ; 3 uses
  %i.n = insertelement <8 x i32> poison, i32 %.031.i.i, i64 0
  %i.o = shufflevector <8 x i32> %i.n, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.p = mul <8 x i32> %i.o, <i32 1, i32 -1640531527, i32 -480352335, i32 1933744105, i32 905701473, i32 -558381287, i32 71873041, i32 878294857> ; 2 uses
  %i.q = lshr <8 x i32> %i.p, splat (i32 28)      ; 2 uses
  %i.r = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.k, <8 x i32> %i.q)
  %i.s = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.m, <8 x i32> %i.q)
  %i.t = ashr <8 x i32> %i.p, splat (i32 31)
  %i.u = bitcast <8 x i32> %i.r to <32 x i8>
  %i.v = bitcast <8 x i32> %i.s to <32 x i8>
  %i.w = bitcast <8 x i32> %i.t to <32 x i8>
  %i.x = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.u, <32 x i8> %i.v, <32 x i8> %i.w)
  %i.y = bitcast <32 x i8> %i.x to <4 x i64>
  %i.z = insertelement <8 x i32> poison, i32 %.030.i.i, i64 0
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ab = sub <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %i.aa
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 31)
  %i.ad = mul <8 x i32> %i.o, <i32 16, i32 -478700656, i32 904297232, i32 875134608, i32 1606321680, i32 -344166000, i32 1149968656, i32 1167815824>
  %i.ae = lshr <8 x i32> %i.ad, splat (i32 27)
  %i.af = shl nuw <8 x i32> %i.ac, %i.ae
  %i.ag = bitcast <8 x i32> %i.af to <4 x i64>
  %i.ah = tail call noundef i32 @llvm.x86.avx.ptestc.256(<4 x i64> %i.y, <4 x i64> %i.ag)
  %i.ai = icmp ne i32 %i.ah, 0                    ; 2 uses
  %i.aj = icmp sgt i32 %.030.i.i, 8
  %brmerge.not.i.i = and i1 %i.aj, %i.ai
  br i1 %brmerge.not.i.i, label %bb.c, label %_ZN7rocksdb18FastLocalBloomImpl12HashMayMatchEjjjiPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = mul i32 %.031.i.i, -1423575871
  %i.al = add nsw i32 %.030.i.i, -8
  br label %bb.b, !llvm.loop !19

_ZN7rocksdb18FastLocalBloomImpl12HashMayMatchEjjjiPKc.exit: ; preds = %bb.b
  ret i1 %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestc.256(<4 x i64>, <4 x i64>) #32

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb14OptionTypeInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(180) %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !211
  store i32 %i.a, ptr %0, align 8, !tbaa !211
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEEC2ERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !212
  store <2 x ptr> %i.h, ptr %i.c, align 8, !tbaa !212
  br label %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEEC2ERKSF_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #38
  unreachable

common.resume:                                    ; preds = %bb.ag, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEEC2ERKSF_.exit: ; preds = %bb.a, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.not.i15 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i15, label %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EEC2ERKSH_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEEC2ERKSF_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.t = load <2 x ptr>, ptr %i.p, align 8, !tbaa !212
  store <2 x ptr> %i.t, ptr %i.o, align 8, !tbaa !212
  br label %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EEC2ERKSH_.exit

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !201  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.v, null
  br i1 %.not.i.i16, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #38
  unreachable

_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EEC2ERKSH_.exit: ; preds = %bb.h, %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEEC2ERKSF_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.not.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.not.i18, label %_ZNSt8functionIFbRKN7rocksdb13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSD_PS9_EEC2ERKSG_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EEC2ERKSH_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.af = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !212
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !212
  br label %_ZNSt8functionIFbRKN7rocksdb13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSD_PS9_EEC2ERKSG_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !201 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i19, label %.body21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3)
          to label %.body21 unwind label %bb.p    ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #38
  unreachable

_ZNSt8functionIFbRKN7rocksdb13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSD_PS9_EEC2ERKSG_.exit: ; preds = %bb.m, %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EEC2ERKSH_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.not.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.not.i23, label %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvEEC2ERKSF_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFbRKN7rocksdb13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSD_PS9_EEC2ERKSG_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aq = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ar = load <2 x ptr>, ptr %i.an, align 8, !tbaa !212
  store <2 x ptr> %i.ar, ptr %i.am, align 8, !tbaa !212
  br label %_ZNSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvEEC2ERKSF_.exit

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !201 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i.i24, label %.body26, label %bb.t
end_hunk_1
begin_hunk_2_@_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !352
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.015 = load ptr, ptr %i.c, align 8, !tbaa !220 ; 3 uses
  %i.d = icmp eq ptr %.sroa.06.015, null
  br i1 %i.d, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  %.fr22 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr22, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us
  %.sroa.06.016.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us ], [ %.sroa.06.015, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.016.us, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.016.us, align 8, !tbaa !220 ; 2 uses
  %i.l = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.l, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !731

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10
  %.sroa.06.016 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10 ], [ %.sroa.06.015, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = icmp eq i64 %.fr22, %i.n
  br i1 %i.o, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.q, i64 %.fr22)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.016, align 8, !tbaa !220 ; 2 uses
  %i.s = icmp eq ptr %.sroa.06.0, null
  br i1 %i.s, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !731

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39
  %i.w = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.t, i64 noundef %i.v, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #38
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !346 ; 3 uses
  %i.ab = urem i64 %i.w, %i.aa                    ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !347
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !309 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !220 ; 3 uses
  %i.ag = load i64, ptr %i.u, align 8
  %.fr22.i.i = freeze i64 %i.ag                   ; 3 uses
  %i.ah = icmp eq i64 %.fr22.i.i, 0
  %i.ai = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !311 ; 2 uses
  br i1 %i.ah, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.aj = phi i64 [ %i.aq, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.ao = load ptr, ptr %.0.us.i.i, align 8, !tbaa !220 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !311 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.aa
  %.not19.us.i.i = icmp eq i64 %i.ar, %i.ab
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !24

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.as = phi i64 [ %i.bc, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.af, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp eq i64 %i.w, %i.as
  br i1 %i.au, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !39
  %i.ax = icmp eq i64 %.fr22.i.i, %i.aw
  br i1 %i.ax, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !40
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ay, i64 %.fr22.i.i)
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ba = load ptr, ptr %.0.i.i, align 8, !tbaa !220 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !311 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.aa
  %.not19.i.i = icmp eq i64 %i.bd, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !24

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.016.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v4i64(<4 x i64>) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #37 = { nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { builtin nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn }
attributes #42 = { cold }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{null, null, null, null, null, null}
!4 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{!6, !64}
!7 = distinct !{!7, !64}
!8 = distinct !{!8, !64}
!9 = distinct !{!9, !64}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null, null, null, null, null, null}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{!15, !64}
!16 = distinct !{!16, !64}
!17 = distinct !{!17, !64}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{null, null}
!22 = distinct !{!22, !64}
!23 = distinct !{null, null}
!24 = distinct !{!24, !64}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"frame-pointer", i32 4}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !{!"p1 omnipotent char", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!37 = !{!"long", !30, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !37, i64 8, !30, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !35, i64 0}
!41 = !{!"vtable pointer", !29, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"bool", !30, i64 0}
!44 = !{!"_ZTSSt13__atomic_baseIbE", !43, i64 0}
!45 = !{!"_ZTSSt13__atomic_baseIlE", !37, i64 0}
!46 = !{!"p1 _ZTSN7rocksdb12Configurable17RegisteredOptionsE", !34, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !49, i64 0}
!51 = !{!"_ZTSN7rocksdb12ConfigurableE", !50, i64 8}
!52 = !{!"_ZTSN7rocksdb12CustomizableE", !51, i64 0}
!53 = !{!"_ZTSN7rocksdb12FilterPolicyE", !52, i64 0}
!54 = !{!"_ZTSN7rocksdb19BuiltinFilterPolicyE", !53, i64 0}
!55 = !{!"double", !30, i64 0}
!56 = !{!"_ZTSSt6atomicIbE", !44, i64 0}
!57 = !{!"_ZTSSt6atomicIlE", !45, i64 0}
!58 = !{!"_ZTSN7rocksdb21BloomLikeFilterPolicyE", !54, i64 0, !31, i64 32, !31, i64 36, !55, i64 40, !56, i64 48, !57, i64 56}
!59 = !{!58, !31, i64 32}
!60 = !{!58, !55, i64 40}
!61 = !{!58, !31, i64 36}
!62 = !{!36, !35, i64 0}
!63 = !{!30, !30, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"p1 _ZTSN7rocksdb22BlockBasedTableOptionsE", !34, i64 0}
!66 = !{!"_ZTSN7rocksdb15CompactionStyleE", !30, i64 0}
!67 = !{!"p1 _ZTSN7rocksdb6LoggerE", !34, i64 0}
!68 = !{!"_ZTSN7rocksdb23TableFileCreationReasonE", !30, i64 0}
!69 = !{!"_ZTSN7rocksdb21FilterBuildingContextE", !65, i64 0, !66, i64 8, !31, i64 12, !67, i64 16, !38, i64 24, !31, i64 56, !43, i64 60, !68, i64 64}
!70 = !{!69, !65, i64 0}
!71 = !{}
!72 = !{i64 8}
!73 = !{!"p1 _ZTSN7rocksdb23FlushBlockPolicyFactoryE", !34, i64 0}
!74 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!75 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0}
!76 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23FlushBlockPolicyFactoryELN9__gnu_cxx12_Lock_policyE2EE", !73, i64 0, !75, i64 8}
!77 = !{!"_ZTSSt10shared_ptrIN7rocksdb23FlushBlockPolicyFactoryEE", !76, i64 0}
!78 = !{!"_ZTSN7rocksdb11PinningTierE", !30, i64 0}
!79 = !{!"_ZTSN7rocksdb20MetadataCacheOptionsE", !78, i64 0, !78, i64 4, !78, i64 8}
!80 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions9IndexTypeE", !30, i64 0}
!81 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions15BlockSearchTypeE", !30, i64 0}
!82 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions18DataBlockIndexTypeE", !30, i64 0}
!83 = !{!"_ZTSN7rocksdb12ChecksumTypeE", !30, i64 0}
!84 = !{!"p1 _ZTSN7rocksdb5CacheE", !34, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !75, i64 8}
!86 = !{!"_ZTSSt10shared_ptrIN7rocksdb5CacheEE", !85, i64 0}
!87 = !{!"p1 _ZTSN7rocksdb15PersistentCacheE", !34, i64 0}
!88 = !{!"_ZTSSt12__shared_ptrIN7rocksdb15PersistentCacheELN9__gnu_cxx12_Lock_policyE2EE", !87, i64 0, !75, i64 8}
!89 = !{!"_ZTSSt10shared_ptrIN7rocksdb15PersistentCacheEE", !88, i64 0}
!90 = !{!"_ZTSN7rocksdb21CacheEntryRoleOptions8DecisionE", !30, i64 0}
!91 = !{!"_ZTSN7rocksdb21CacheEntryRoleOptionsE", !90, i64 0}
!92 = !{!"_ZTSSt4lessIN7rocksdb14CacheEntryRoleEE"}
!93 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN7rocksdb14CacheEntryRoleEEE", !92, i64 0}
!94 = !{!"_ZTSSt14_Rb_tree_color", !30, i64 0}
!95 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !34, i64 0}
!96 = !{!"_ZTSSt18_Rb_tree_node_base", !94, i64 0, !95, i64 8, !95, i64 16, !95, i64 24}
!97 = !{!"_ZTSSt15_Rb_tree_header", !96, i64 0, !37, i64 32}
!98 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb14CacheEntryRoleESt4pairIKS1_NS0_21CacheEntryRoleOptionsEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !93, i64 0, !97, i64 8}
!99 = !{!"_ZTSSt8_Rb_treeIN7rocksdb14CacheEntryRoleESt4pairIKS1_NS0_21CacheEntryRoleOptionsEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE", !98, i64 0}
!100 = !{!"_ZTSSt3mapIN7rocksdb14CacheEntryRoleENS0_21CacheEntryRoleOptionsESt4lessIS1_ESaISt4pairIKS1_S2_EEE", !99, i64 0}
!101 = !{!"_ZTSN7rocksdb17CacheUsageOptionsE", !91, i64 0, !100, i64 8}
!102 = !{!"p1 _ZTSN7rocksdb12FilterPolicyE", !34, i64 0}
!103 = !{!"_ZTSSt12__shared_ptrIKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0, !75, i64 8}
!104 = !{!"_ZTSSt10shared_ptrIKN7rocksdb12FilterPolicyEE", !103, i64 0}
!105 = !{!"p1 _ZTSN7rocksdb23UserDefinedIndexFactoryE", !34, i64 0}
!106 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23UserDefinedIndexFactoryELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !75, i64 8}
!107 = !{!"_ZTSSt10shared_ptrIN7rocksdb23UserDefinedIndexFactoryEE", !106, i64 0}
!108 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions19IndexShorteningModeE", !30, i64 0}
!109 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions21PrepopulateBlockCacheE", !30, i64 0}
!110 = !{!"_ZTSN7rocksdb22BlockBasedTableOptionsE", !77, i64 0, !43, i64 16, !43, i64 17, !43, i64 18, !43, i64 19, !79, i64 20, !80, i64 32, !81, i64 33, !82, i64 34, !55, i64 40, !83, i64 48, !43, i64 49, !86, i64 56, !89, i64 72, !37, i64 88, !31, i64 96, !31, i64 100, !31, i64 104, !37, i64 112, !101, i64 120, !43, i64 176, !43, i64 177, !43, i64 178, !43, i64 179, !104, i64 184, !107, i64 200, !43, i64 216, !43, i64 217, !43, i64 218, !43, i64 219, !43, i64 220, !31, i64 224, !31, i64 228, !43, i64 232, !55, i64 240, !43, i64 248, !43, i64 249, !37, i64 256, !37, i64 264, !108, i64 272, !37, i64 280, !109, i64 288, !37, i64 296, !37, i64 304}
!111 = !{!69, !67, i64 16}
!112 = !{i8 0, i8 2}
!113 = !{!"_ZTSN7rocksdb17FilterBitsBuilderE"}
!114 = !{!"p1 int", !34, i64 0}
end_hunk_2
