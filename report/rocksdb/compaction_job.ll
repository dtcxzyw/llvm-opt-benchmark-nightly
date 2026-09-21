Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJob34InitializeReadOptionsAndBoundariesEmRNS_11ReadOptionsERNS0_26SubcompactionKeyBoundariesE:bb.a
  %i.aa = trunc nuw i8 %i.z to i1
  store ptr %i.t, ptr %i.x, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.w, ptr %.sroa.490.0..sroa_idx, align 8
  br i1 %i.aa, label %_ZNSt8optionalIN7rocksdb5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.y, align 8, !tbaa !492
  br label %_ZNSt8optionalIN7rocksdb5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN7rocksdb5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.h, %bb.i
  store ptr %i.x, ptr %i.s, align 8, !tbaa !1603
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8optionalIN7rocksdb5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, %_ZN7rocksdb13CompactionJob22GetRateLimiterPriorityEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !1012, !range !408, !noundef !409
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.n

.thread:                                          ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !1012, !range !408, !noundef !409
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread91, label %.thread94.thread

.thread91:                                        ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !1604
  br label %.thread94.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !1604
  %.not59 = icmp eq i64 %1, 0
  br i1 %.not59, label %.thread94, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !489
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !490
  %i.ao = sub i64 %i.an, %1
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !492, !range !408, !noundef !409
  %i.as = trunc nuw i8 %i.ar to i1
  store ptr %i.al, ptr %i.ap, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.ao, ptr %.sroa.488.0..sroa_idx, align 8
  br i1 %i.as, label %.thread97, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.aq, align 8, !tbaa !492
  br label %.thread97

.thread97:                                        ; preds = %bb.m, %bb.l
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !1604
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.not60 = icmp eq i64 %1, 0
  br i1 %.not60, label %.thread94, label %bb.o

bb.o:                                             ; preds = %.thread97, %bb.n
  %i.at = icmp ult i64 %1, 17
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr @_ZN7rocksdb13CompactionJob26SubcompactionKeyBoundaries6kMaxTsE, ptr %i.au, align 8, !tbaa !437
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %1, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !421
  br label %.thread94

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !383
  %i.aw = icmp slt i64 %1, 0
  br i1 %i.aw, label %.noexc.i, label %bb.r

.noexc.i:                                         ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #36
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ax = add nuw i64 %1, 1                       ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %.noexc5.i, label %.thread7.i.i, !prof !385

.noexc5.i:                                        ; preds = %bb.r
  call void @_ZSt17__throw_bad_allocv() #36
  unreachable

.thread7.i.i:                                     ; preds = %bb.r
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #35 ; 4 uses
  store i64 %1, ptr %i.av, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 -1, i64 %1, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %1
  store i8 0, ptr %i.bb, align 1, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !72 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

.thread.i:                                        ; preds = %.thread7.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !72
  store i64 %1, ptr %i.bg, align 8, !tbaa !384
  store i64 %1, ptr %i.be, align 8, !tbaa !73
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %.thread7.i.i
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !73
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %1, ptr %i.bi, align 8, !tbaa !384
  store i64 %1, ptr %i.be, align 8, !tbaa !73
  %.not.i66 = icmp eq ptr %i.bd, null
  br i1 %.not.i66, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bd, ptr %4, align 8, !tbaa !72
  store i64 %i.bh, ptr %i.av, align 8, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.av, ptr %4, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.s, %bb.t
  %i.bj = phi ptr [ %i.av, %bb.t ], [ %i.bd, %bb.s ]
  store i64 0, ptr %i.ba, align 8, !tbaa !384
  store i8 0, ptr %i.bj, align 1, !tbaa !73
  %i.bk = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !73
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !384
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !437
  %.sroa.4.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx83, align 8, !tbaa !421
  %.pre = load i8, ptr %i.p, align 8, !tbaa !1012, !range !408
  br label %.thread94

.thread94:                                        ; preds = %bb.k, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %i.bs = phi i8 [ %i.q, %bb.n ], [ %i.q, %bb.p ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %bb.k ]
  %.not6096 = phi i1 [ true, %bb.n ], [ false, %bb.p ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.k ] ; 2 uses
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.thread94.thread, label %bb.x

.thread94.thread:                                 ; preds = %.thread, %.thread91, %.thread94
  %i.bu = phi ptr [ %i.ac, %.thread94 ], [ %i.ag, %.thread91 ], [ %i.ag, %.thread ]
  %i.bv = phi ptr [ %i.ab, %.thread94 ], [ %i.af, %.thread91 ], [ %i.af, %.thread ]
  %.not6096121 = phi i1 [ %.not6096, %.thread94 ], [ true, %.thread91 ], [ true, %.thread ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 5 uses
  %i.bx = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1, !tbaa !1014
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !490 ; 5 uses
  %i.ca = add i64 %i.bz, 8                        ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !708
  %i.cd = icmp ugt i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit

bb.u:                                             ; preds = %.thread94.thread
  call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.bw, i64 noundef %i.ca)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit: ; preds = %.thread94.thread, %bb.u
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !705
  %i.cf = load ptr, ptr %3, align 8, !tbaa !489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.cf, i64 %i.bz, i1 false)
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !705
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bz
  %i.ci = zext i8 %i.bx to i64
  %i.cj = or disjoint i64 %i.ci, -256             ; 2 uses
  store i64 %i.cj, ptr %i.ch, align 1
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !705 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !706
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  store i64 %i.ca, ptr %i.cm, align 8, !tbaa !707
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 215 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !tbaa !709
  br i1 %.not6096121, label %.thread122, label %bb.v

.thread122:                                       ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 560
  store ptr %i.ck, ptr %i.co, align 8, !tbaa !437
  %.sroa.46.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %i.ca, ptr %.sroa.46.0..sroa_idx123, align 8, !tbaa !421
  br label %bb.w

bb.v:                                             ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %7 = load i64, ptr %6, align 8, !tbaa !490      ; 2 uses
  %8 = sub i64 %i.bz, %7
  %9 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %8
  %10 = load ptr, ptr %5, align 8, !tbaa !489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %7, i1 false)
  %11 = load ptr, ptr %i.cl, align 8, !tbaa !706
  %12 = load ptr, ptr %i.bw, align 8, !tbaa !705  ; 2 uses
  %13 = icmp eq ptr %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %15 = load ptr, ptr %14, align 8
  %.sink.i = select i1 %13, ptr %12, ptr %15
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !707
  %i.cq = getelementptr i8, ptr %.sink.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  store i64 %i.cj, ptr %i.cr, align 1
  %.pre100.a = load ptr, ptr %i.cl, align 8, !tbaa !706 ; 2 uses
  %.pre101.a = load i64, ptr %i.cm, align 8, !tbaa !707 ; 3 uses
  %.pre102.a = load i8, ptr %i.cn, align 1, !tbaa !709, !range !408
  %.pre102.fr = freeze i8 %.pre102.a
  %i.cs = trunc i8 %.pre102.fr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 560
  store ptr %.pre100.a, ptr %i.ct, align 8, !tbaa !437
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %.pre101.a, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !421
  %i.cu = add i64 %.pre101.a, -8
  %spec.select = select i1 %i.cs, i64 %.pre101.a, i64 %i.cu
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread122
  %i.cv = phi ptr [ %i.ck, %.thread122 ], [ %.pre100.a, %bb.v ]
  %i.cw = phi i64 [ %i.bz, %.thread122 ], [ %spec.select, %bb.v ]
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 592
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !437
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 %i.cw, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !421
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread94
  %i.cy = phi ptr [ %i.bu, %bb.w ], [ %i.ac, %.thread94 ]
  %i.cz = phi ptr [ %i.bv, %bb.w ], [ %i.ab, %.thread94 ]
  %.not6096120 = phi i1 [ %.not6096121, %bb.w ], [ %.not6096, %.thread94 ]
  %i.da = load i8, ptr %i.cy, align 8, !tbaa !1012, !range !408, !noundef !409
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 5 uses
  %i.dd = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1, !tbaa !1014
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = load i64, ptr %i.de, align 8, !tbaa !490 ; 5 uses
  %i.dg = add i64 %i.df, 8                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !708
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.z, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit72

bb.z:                                             ; preds = %bb.y
  call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.dc, i64 noundef %i.dg)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit72

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit72: ; preds = %bb.y, %bb.z
  %i.dk = load ptr, ptr %i.dc, align 8, !tbaa !705
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dl, i64 %i.df, i1 false)
  %i.dm = load ptr, ptr %i.dc, align 8, !tbaa !705
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.df
  %i.do = zext i8 %i.dd to i64
  %i.dp = or disjoint i64 %i.do, -256             ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 1
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !705 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 3 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !706
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 368 ; 3 uses
  store i64 %i.dg, ptr %i.ds, align 8, !tbaa !707
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 423 ; 2 uses
  store i8 0, ptr %i.dt, align 1, !tbaa !709
  br i1 %.not6096120, label %.thread126, label %bb.aa

.thread126:                                       ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit72
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 576
  store ptr %i.dq, ptr %i.du, align 8, !tbaa !437
  %.sroa.42.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %i.dg, ptr %.sroa.42.0..sroa_idx127, align 8, !tbaa !421
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit72
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %18 = load i64, ptr %17, align 8, !tbaa !490    ; 2 uses
  %19 = sub i64 %i.df, %18
  %20 = getelementptr inbounds nuw i8, ptr %i.dq, i64 %19
  %21 = load ptr, ptr %16, align 8, !tbaa !489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %18, i1 false)
  %22 = load ptr, ptr %i.dr, align 8, !tbaa !706
  %23 = load ptr, ptr %i.dc, align 8, !tbaa !705  ; 2 uses
  %24 = icmp eq ptr %22, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 464
  %26 = load ptr, ptr %25, align 8
  %.sink.i74 = select i1 %24, ptr %23, ptr %26
  %i.dv = load i64, ptr %i.ds, align 8, !tbaa !707
  %i.dw = getelementptr i8, ptr %.sink.i74, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8
  store i64 %i.dp, ptr %i.dx, align 1
  %.pre103.a = load ptr, ptr %i.dr, align 8, !tbaa !706 ; 2 uses
  %.pre104.a = load i64, ptr %i.ds, align 8, !tbaa !707 ; 3 uses
  %.pre105 = load i8, ptr %i.dt, align 1, !tbaa !709, !range !408
  %.pre105.fr = freeze i8 %.pre105
  %i.dy = trunc i8 %.pre105.fr to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 576
  store ptr %.pre103.a, ptr %i.dz, align 8, !tbaa !437
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %.pre104.a, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !421
  %i.ea = add i64 %.pre104.a, -8
  %spec.select129 = select i1 %i.dy, i64 %.pre104.a, i64 %i.ea
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread126
  %i.eb = phi ptr [ %i.dq, %.thread126 ], [ %.pre103.a, %bb.aa ]
  %i.ec = phi i64 [ %i.df, %.thread126 ], [ %spec.select129, %bb.aa ]
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 608
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !437
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 %i.ec, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !421
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb13CompactionJob19CreateInputIteratorEPNS_18SubcompactionStateEPNS_16ColumnFamilyDataERNS0_30SubcompactionInternalIteratorsERNS0_26SubcompactionKeyBoundariesERNS_11ReadOptionsE(ptr noundef nonnull align 8 dereferenceable(1896) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(624) %4, ptr noundef nonnull align 8 dereferenceable(192) initializes((44, 48), (72, 74), (113, 114), (176, 177)) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !546
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !822  ; 2 uses
  tail call void @_ZN7rocksdb13CompactionJob34InitializeReadOptionsAndBoundariesEmRNS_11ReadOptionsERNS0_26SubcompactionKeyBoundariesE(ptr noundef nonnull align 8 dereferenceable(1896) %0, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(624) %4)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !423
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 680
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #35, !noalias !1618 ; 3 uses
  invoke void @_ZN7rocksdb28CompactionRangeDelAggregatorC2EPKNS_21InternalKeyComparatorERKSt6vectorImSaImEEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_(ptr noundef nonnull align 8 dereferenceable(176) %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
          to label %_ZSt11make_uniqueIN7rocksdb28CompactionRangeDelAggregatorEJPKNS0_21InternalKeyComparatorERSt6vectorImSaImEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1618

common.resume:                                    ; preds = %bb.k, %.body.i36, %.body.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.b ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i37, %.body.i36 ], [ %i.ci, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 176) #34, !noalias !1618
  br label %common.resume

_ZSt11make_uniqueIN7rocksdb28CompactionRangeDelAggregatorEJPKNS0_21InternalKeyComparatorERSt6vectorImSaImEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1015 ; 3 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !1015
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb28CompactionRangeDelAggregatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb28CompactionRangeDelAggregatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZSt11make_uniqueIN7rocksdb28CompactionRangeDelAggregatorEJPKNS0_21InternalKeyComparatorERSt6vectorImSaImEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(176) %i.n) #37, !inline_history !1607
  br label %_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb28CompactionRangeDelAggregatorEEclEPS1_.exit.i.i.i.i.i, %_ZSt11make_uniqueIN7rocksdb28CompactionRangeDelAggregatorEJPKNS0_21InternalKeyComparatorERSt6vectorImSaImEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !411, !nonnull !409, !align !412 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 267
  %i.u = load i8, ptr %i.t, align 1, !tbaa !434, !range !408, !noundef !409
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 266
  %i.x = load i8, ptr %i.w, align 2, !tbaa !435, !range !408, !noundef !409
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  %i.z = xor i1 %i.y, true
  %spec.select66 = select i1 %i.y, i64 1088, i64 1304
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit
  %i.aa = phi i1 [ false, %_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit ], [ %i.z, %bb.c ]
  %i.ab = phi i64 [ 1088, %_ZNSt10unique_ptrIN7rocksdb28CompactionRangeDelAggregatorESt14default_deleteIS1_EED2Ev.exit ], [ %spec.select66, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !413
  %i.af = load ptr, ptr %1, align 8, !tbaa !700
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !1015
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = tail call noundef ptr @_ZN7rocksdb10VersionSet17MakeInputIteratorERKNS_11ReadOptionsEPKNS_10CompactionEPNS_18RangeDelAggregatorERKNS_11FileOptionsERKSt8optionalIKNS_5SliceEESH_b(ptr noundef nonnull align 8 dereferenceable(874) %i.ae, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i1 noundef zeroext %i.aa) ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !752   ; 3 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !752
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i.i: ; preds = %.thread
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #37, !inline_history !1608
  %.pre = load ptr, ptr %3, align 8, !tbaa !752
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i.i, %.thread
  %i.an = phi ptr [ %.pre, %_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i.i ], [ %i.ai, %.thread ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1012, !range !408, !noundef !409
  %i.aq = trunc nuw i8 %i.ap to i1                ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre67 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !1012, !range !408
  %i.ar = trunc nuw i8 %.pre67 to i1              ; 2 uses
  %brmerge = select i1 %i.aq, i1 true, i1 %i.ar
  %not. = xor i1 %i.aq, true
  %.mux = select i1 %not., i1 true, i1 %i.ar
  br i1 %brmerge, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit._crit_edge, label %_ZNSt10unique_ptrIN7rocksdb16ClippingIteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit._crit_edge: ; preds = %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit
  %i.as = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !1619 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %.noexc.i unwind label %bb.e, !noalias !1619

.noexc.i:                                         ; preds = %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.av = select i1 %.mux, ptr %i.au, ptr null
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 560
  %i.ax = select i1 %i.aq, ptr %i.aw, ptr null
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN7rocksdb16ClippingIteratorE, i64 16), ptr %i.as, align 8, !tbaa !75, !noalias !1619
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.an, ptr %i.ay, align 8, !tbaa !1022, !noalias !1619
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !1023, !noalias !1619
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !1024, !noalias !1619
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr %i.e, ptr %i.bb, align 8, !tbaa !1025, !noalias !1619
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store i8 0, ptr %i.bc, align 8, !tbaa !1026, !noalias !1619
  invoke void @_ZN7rocksdb16ClippingIterator22UpdateAndEnforceBoundsEv(ptr noundef nonnull align 8 dereferenceable(73) %i.as)
          to label %_ZSt11make_uniqueIN7rocksdb16ClippingIteratorEJPNS0_20InternalIteratorBaseINS0_5SliceEEEPS3_S6_PKNS0_21InternalKeyComparatorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !1619

bb.d:                                             ; preds = %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #37, !noalias !1619
  br label %.body.i

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit._crit_edge
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.be, %bb.e ], [ %i.bd, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 80) #34, !noalias !1619
  br label %common.resume

_ZSt11make_uniqueIN7rocksdb16ClippingIteratorEJPNS0_20InternalIteratorBaseINS0_5SliceEEEPS3_S6_PKNS0_21InternalKeyComparatorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !752 ; 3 uses
  store ptr %i.as, ptr %i.bf, align 8, !tbaa !752
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb16ClippingIteratorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN7rocksdb16ClippingIteratorEJPNS0_20InternalIteratorBaseINS0_5SliceEEEPS3_S6_PKNS0_21InternalKeyComparatorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #37, !inline_history !1611
  %.pre68 = load ptr, ptr %i.bf, align 8, !tbaa !752
  br label %_ZNSt10unique_ptrIN7rocksdb16ClippingIteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb16ClippingIteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit, %_ZSt11make_uniqueIN7rocksdb16ClippingIteratorEJPNS0_20InternalIteratorBaseINS0_5SliceEEEPS3_S6_PKNS0_21InternalKeyComparatorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i
  %.0 = phi ptr [ %i.an, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit ], [ %.pre68, %_ZNKSt14default_deleteIN7rocksdb20InternalIteratorBaseINS0_5SliceEEEEclEPS3_.exit.i.i.i ], [ %i.as, %_ZSt11make_uniqueIN7rocksdb16ClippingIteratorEJPNS0_20InternalIteratorBaseINS0_5SliceEEEPS3_S6_PKNS0_21InternalKeyComparatorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.bk = load ptr, ptr %1, align 8, !tbaa !700
  %i.bl = tail call noundef zeroext i1 @_ZNK7rocksdb10Compaction27DoesInputReferenceBlobFilesEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.bk)
  br i1 %i.bl, label %bb.f, label %_ZNSt10unique_ptrIN7rocksdb20BlobCountingIteratorESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb16ClippingIteratorESt14default_deleteIS1_EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !761
  %i.bo = tail call noundef ptr @_ZN7rocksdb17CompactionOutputs22CreateBlobGarbageMeterEv(ptr noundef nonnull align 8 dereferenceable(544) %i.bn)
  %i.bp = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #35, !noalias !1620 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %.noexc.i38 unwind label %bb.h, !noalias !1620

.noexc.i38:                                       ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN7rocksdb20BlobCountingIteratorE, i64 16), ptr %i.bp, align 8, !tbaa !75, !noalias !1620
end_hunk_0
