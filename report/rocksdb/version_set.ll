Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZSt13__adjust_heapIN7rocksdb10autovectorISt4pairIiPNS0_12FileMetaDataEELm8EE13iterator_implIS6_S5_EElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS0_15CompactionStyleEE3$_0EEEvT_T0_SH_T1_T2_":bb.a
  %i.bx = getelementptr i8, ptr %i.bw, i64 -128
  %.0.i.i.i.i = select i1 %i.bu, ptr %i.bv, ptr %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %.val2.i.i = load ptr, ptr %i.by, align 8       ; 5 uses
  br i1 %.not.not.i.i.i.i.i.i, label %.preheader39.i, label %bb.h

.preheader39.i:                                   ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i, %bb.g ], [ %i.br, %bb.f ]
  %.sroa.06.0.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %i.bz = icmp eq ptr %.sroa.06.0.i.i.i.i.i.i, null
  br i1 %i.bz, label %.loopexit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader39.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !347
  %i.cc = icmp eq ptr %.val2.i.i, %i.cb
  br i1 %i.cc, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i.i, label %.preheader39.i, !llvm.loop !118

bb.h:                                             ; preds = %bb.f
  %i.cd = ptrtoint ptr %.val2.i.i to i64
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !1103 ; 3 uses
  %i.cf = urem i64 %i.cd, %i.ce                   ; 2 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !1102  ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !273 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !347
  %i.cm = icmp eq ptr %.val2.i.i, %i.cl
  br i1 %i.cm, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i.i: ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !859
  br label %bb.m

bb.j:                                             ; preds = %bb.k
  %i.cp = icmp eq ptr %.val2.i.i, %i.cs
  br i1 %i.cp, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !43

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.j ], [ %i.cj, %bb.i ]
  %i.cq = load ptr, ptr %.020.i.i.i.i.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not18.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !347 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = urem i64 %i.ct, %i.ce
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.cf
  br i1 %.not19.i.i.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i.i.i, !llvm.loop !43

..loopexit_crit_edge21.i.i.i.i.i.i.i.i:           ; preds = %bb.k
  br label %.loopexit.i.i.i.i.i, !llvm.loop !43

.loopexit.i.i.i.i.i:                              ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i, %.preheader39.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.129) #44
  unreachable

_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i.i: ; preds = %bb.j, %bb.g
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i, %bb.g ], [ %i.cq, %bb.j ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !859 ; 2 uses
  br i1 %.not.not.i.i.i.i.i.i, label %.preheader.i, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i.i

_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i.i: ; preds = %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !1103
  %.pre24.i.i.i = load ptr, ptr %5, align 8, !tbaa !1102
  br label %bb.m

.preheader.i:                                     ; preds = %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i.i, %bb.l
  %.sroa.06.0.in.i.i.i12.i.i.i = phi ptr [ %.sroa.06.0.i.i.i13.i.i.i, %bb.l ], [ %i.br, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i.i ]
  %.sroa.06.0.i.i.i13.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i12.i.i.i, align 8, !tbaa !273 ; 4 uses
  %i.cx = icmp eq ptr %.sroa.06.0.i.i.i13.i.i.i, null
  br i1 %i.cx, label %.loopexit.i.i10.i.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i13.i.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !347
  %i.da = icmp eq ptr %4, %i.cz
  br i1 %i.da, label %.loopexit.i, label %.preheader.i, !llvm.loop !118

bb.m:                                             ; preds = %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i.i, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i.i
  %i.db = phi ptr [ %i.cg, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i.i ], [ %.pre24.i.i.i, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i.i ]
  %i.dc = phi i64 [ %i.ce, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i.i ], [ %.pre.i.i.i, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i.i ] ; 2 uses
  %i.dd = phi double [ %i.co, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i.i ], [ %i.cw, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i.i ] ; 2 uses
  %i.de = urem i64 %i.bs, %i.dc                   ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i.i4.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i4.i.i.i, label %.loopexit.i.i10.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !273 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !347
  %i.dk = icmp eq ptr %4, %i.dj
  br i1 %i.dk, label %.loopexit.i, label %.lr.ph.i.i.i.i.i5.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.dl = icmp eq ptr %4, %i.do
  br i1 %i.dl, label %.loopexit.i, label %.lr.ph.i.i.i.i.i5.i.i.i, !llvm.loop !43

.lr.ph.i.i.i.i.i5.i.i.i:                          ; preds = %bb.n, %bb.o
  %.020.i.i.i.i.i6.i.i.i = phi ptr [ %i.dm, %bb.o ], [ %i.dh, %bb.n ]
  %i.dm = load ptr, ptr %.020.i.i.i.i.i6.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i.i7.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not18.i.i.i.i.i7.i.i.i, label %.loopexit.i.i10.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i5.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !347 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = urem i64 %i.dp, %i.dc
  %.not19.i.i.i.i.i8.i.i.i = icmp eq i64 %i.dq, %i.de
  br i1 %.not19.i.i.i.i.i8.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i.i9.i.i.i, !llvm.loop !43

..loopexit_crit_edge21.i.i.i.i.i9.i.i.i:          ; preds = %bb.p
  br label %.loopexit.i.i10.i.i.i, !llvm.loop !43

.loopexit.i.i10.i.i.i:                            ; preds = %bb.m, %.lr.ph.i.i.i.i.i5.i.i.i, %.preheader.i, %..loopexit_crit_edge21.i.i.i.i.i9.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.129) #44
  unreachable

.loopexit.i:                                      ; preds = %bb.o, %bb.l, %bb.n
  %i.dr = phi double [ %i.cw, %bb.l ], [ %i.dd, %bb.n ], [ %i.dd, %bb.o ]
  %.sroa.06.1.i.i.i11.i.i.i = phi ptr [ %.sroa.06.0.i.i.i13.i.i.i, %bb.l ], [ %i.dh, %bb.n ], [ %i.dm, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i11.i.i.i, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !859
  %i.du = fcmp ogt double %i.dr, %i.dt
  br i1 %i.du, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.loopexit.i
  %i.dv = add i64 %.01833.i, %.sroa.2.0.copyload  ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 8
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.val22.val.i, i64 %i.dv
  %i.dy = getelementptr [16 x i8], ptr %.val22.val25.i, i64 %i.dv
  %i.dz = getelementptr i8, ptr %i.dy, i64 -128
  %.0.i.i27.i = select i1 %i.dw, ptr %i.dx, ptr %i.dz ; 2 uses
  %i.ea = load i32, ptr %.0.i.i.i.i, align 8, !tbaa !269
  store i32 %i.ea, ptr %.0.i.i27.i, align 8, !tbaa !1071
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i27.i, i64 8
  store ptr %.val2.i.i, ptr %i.eb, align 8, !tbaa !1072
  %i.ec = icmp sgt i64 %.01734.i, %1
  br i1 %i.ec, label %bb.f, label %.loopexit, !llvm.loop !3272

.loopexit:                                        ; preds = %bb.q, %.loopexit.i, %bb.e
  %.018.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.01833.i, %.loopexit.i ], [ %.01734.i, %bb.q ]
  %i.ed = add i64 %.018.lcssa.i, %.sroa.2.0.copyload ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 144
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr [16 x i8], ptr %i.ej, i64 %i.ed
  %i.el = getelementptr i8, ptr %i.ek, i64 -128
  %.0.i.i28.i = select i1 %i.ee, ptr %i.eh, ptr %i.el ; 2 uses
  store i32 %3, ptr %.0.i.i28.i, align 8, !tbaa !1071
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i28.i, i64 8
  store ptr %4, ptr %i.em, align 8, !tbaa !1072
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #31

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN7rocksdb10autovectorISt4pairIiPNS0_12FileMetaDataEELm8EE13iterator_implIS6_S5_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS0_15CompactionStyleEE3$_0EEEvT_SG_T0_"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree readonly captures(none) %2) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::autovector<std::pair<int, rocksdb::FileMetaData *>>::iterator_impl", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1108 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1108 ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.loopexit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1107, !noalias !3290 ; 3 uses
  %.sroa.9.036 = add i64 %i.b, 1                  ; 2 uses
  %.not37 = icmp eq i64 %.sroa.9.036, %i.d
  br i1 %.not37, label %.loopexit35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 136      ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 144      ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.9.039.a = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.f ] ; 2 uses
  %.sroa.9.0.in38 = phi i64 [ %.sroa.9.036, %.lr.ph ], [ %.sroa.9.0, %bb.f ] ; 14 uses
  %4 = add i64 %i.b, %.sroa.9.039.a
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !1105 ; 2 uses
  %.sroa.224.0.copyload = load i64, ptr %i.a, align 8, !tbaa !533
  %.val9.val = load ptr, ptr %i.g, align 8
  %.val9.val13 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.sroa.023.0.copyload, i64 136
  %.val11.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.sroa.023.0.copyload, i64 144
  %.val11.val14 = load ptr, ptr %i.j, align 8
  %i.k = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS2_15CompactionStyleEE3$_0EclINS2_10autovectorISt4pairIiPNS2_12FileMetaDataEELm8EE13iterator_implISD_SC_EESF_EEbT_T0_"(ptr %2, ptr %.val9.val, ptr %.val9.val13, i64 %.sroa.9.0.in38, ptr %.val11.val, ptr %.val11.val14, i64 %.sroa.224.0.copyload)
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %.sroa.9.0.in38, 8
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.9.0.in38
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr [16 x i8], ptr %i.o, i64 %.sroa.9.0.in38
  %i.q = getelementptr i8, ptr %i.p, i64 -128
  %.0.i.i = select i1 %i.l, ptr %i.n, ptr %i.q    ; 2 uses
  %.sroa.021.0.copyload = load i32, ptr %.0.i.i, align 8
  %.sroa.522.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.522.0.copyload = load ptr, ptr %.sroa.522.0..0.i.i.sroa_idx, align 8
  %.sroa.1.0.copyload = load i64, ptr %i.a, align 8, !tbaa !533 ; 5 uses
  %i.r = sub i64 %.sroa.9.0.in38, %.sroa.1.0.copyload ; 4 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.t = add i64 %.sroa.9.0.in38, 1
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.u = add i64 %.sroa.9.0.in38, -1              ; 4 uses
  %i.v = icmp ult i64 %i.u, 8
  %i.w = load ptr, ptr %i.g, align 8, !noalias !3291 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  %i.y = load ptr, ptr %i.h, align 8, !noalias !3291 ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.y, i64 %i.u
  %i.aa = getelementptr i8, ptr %i.z, i64 -128
  %.0.i.i.i.i.i.i.i.prol = select i1 %i.v, ptr %i.x, ptr %i.aa ; 2 uses
  %i.ab = icmp ult i64 %.sroa.9.0.in38, 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.9.0.in38
  %i.ad = getelementptr [16 x i8], ptr %i.y, i64 %.sroa.9.0.in38
  %i.ae = getelementptr i8, ptr %i.ad, i64 -128
  %.0.i.i2.i.i.i.i.i.prol = select i1 %i.ab, ptr %i.ac, ptr %i.ae ; 2 uses
  %i.af = load i32, ptr %.0.i.i.i.i.i.i.i.prol, align 4, !tbaa !269, !noalias !3291
  store i32 %i.af, ptr %.0.i.i2.i.i.i.i.i.prol, align 8, !tbaa !1071, !noalias !3291
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.prol, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !347, !noalias !3291
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i2.i.i.i.i.i.prol, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1072, !noalias !3291
  %i.aj = add nsw i64 %i.r, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.3.0.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.9.0.in38, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.2.0.i.i.i.i.unr = phi i64 [ %.sroa.9.0.in38, %.lr.ph.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %.03.i.i.i.i.i.unr = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %i.ak = icmp eq i64 %4, %.sroa.1.0.copyload
  br i1 %i.ak, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.2.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.03.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.al = add i64 %.sroa.2.0.i.i.i.i, -1          ; 3 uses
  %i.am = icmp ult i64 %i.al, 8
  %i.an = load ptr, ptr %i.g, align 8, !noalias !3291 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  %i.ap = load ptr, ptr %i.h, align 8, !noalias !3291 ; 2 uses
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 -128
  %.0.i.i.i.i.i.i.i = select i1 %i.am, ptr %i.ao, ptr %i.ar ; 2 uses
  %i.as = add i64 %.sroa.3.0.i.i.i.i, -1          ; 3 uses
  %i.at = icmp ult i64 %i.as, 8
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.as
  %i.av = getelementptr [16 x i8], ptr %i.ap, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 -128
  %.0.i.i2.i.i.i.i.i = select i1 %i.at, ptr %i.au, ptr %i.aw ; 2 uses
  %i.ax = load i32, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !269, !noalias !3291
  store i32 %i.ax, ptr %.0.i.i2.i.i.i.i.i, align 8, !tbaa !1071, !noalias !3291
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !347, !noalias !3291
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i2.i.i.i.i.i, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !1072, !noalias !3291
  %i.bb = add i64 %.sroa.2.0.i.i.i.i, -2          ; 4 uses
  %i.bc = icmp ult i64 %i.bb, 8
  %i.bd = load ptr, ptr %i.g, align 8, !noalias !3291 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load ptr, ptr %i.h, align 8, !noalias !3291 ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %i.bf, i64 %i.bb
  %i.bh = getelementptr i8, ptr %i.bg, i64 -128
  %.0.i.i.i.i.i.i.i.1 = select i1 %i.bc, ptr %i.be, ptr %i.bh ; 2 uses
  %i.bi = add i64 %.sroa.3.0.i.i.i.i, -2          ; 4 uses
  %i.bj = icmp ult i64 %i.bi, 8
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bi
  %i.bl = getelementptr [16 x i8], ptr %i.bf, i64 %i.bi
  %i.bm = getelementptr i8, ptr %i.bl, i64 -128
  %.0.i.i2.i.i.i.i.i.1 = select i1 %i.bj, ptr %i.bk, ptr %i.bm ; 2 uses
  %i.bn = load i32, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !269, !noalias !3291
  store i32 %i.bn, ptr %.0.i.i2.i.i.i.i.i.1, align 8, !tbaa !1071, !noalias !3291
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !347, !noalias !3291
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i2.i.i.i.i.i.1, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !1072, !noalias !3291
  %i.br = add nsw i64 %.03.i.i.i.i.i, -2
  %i.bs = icmp sgt i64 %.03.i.i.i.i.i, 2
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !3288

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d
  %i.bt = load ptr, ptr %0, align 8, !tbaa !1107  ; 2 uses
  %i.bu = icmp ult i64 %.sroa.1.0.copyload, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.sroa.1.0.copyload
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 144
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr [16 x i8], ptr %i.bz, i64 %.sroa.1.0.copyload
  %i.cb = getelementptr i8, ptr %i.ca, i64 -128
  %.0.i.i15 = select i1 %i.bu, ptr %i.bx, ptr %i.cb ; 2 uses
  store i32 %.sroa.021.0.copyload, ptr %.0.i.i15, align 8, !tbaa !1071
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 8
  store ptr %.sroa.522.0.copyload, ptr %i.cc, align 8, !tbaa !1072
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.f, ptr %3, align 8, !tbaa !1105
  store i64 %.sroa.9.0.in38, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !533
  call fastcc void @"_ZSt25__unguarded_linear_insertIN7rocksdb10autovectorISt4pairIiPNS0_12FileMetaDataEELm8EE13iterator_implIS6_S5_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS0_15CompactionStyleEE3$_0EEEvT_T0_"(ptr noundef align 8 %3, ptr %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.9.0 = add i64 %.sroa.9.0.in38, 1         ; 2 uses
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !1108
  %.not = icmp eq i64 %.sroa.9.0, %i.cd
  %indvar.next = add i64 %.sroa.9.039.a, 1
  br i1 %.not, label %.loopexit35, label %bb.c, !llvm.loop !3289

.loopexit35:                                      ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN7rocksdb10autovectorISt4pairIiPNS0_12FileMetaDataEELm8EE13iterator_implIS6_S5_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS0_15CompactionStyleEE3$_0EEEvT_T0_"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1107   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1108 ; 4 uses
  %i.d = icmp ult i64 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr [16 x i8], ptr %i.i, i64 %i.c
  %i.k = getelementptr i8, ptr %i.j, i64 -128
  %.0.i.i = select i1 %i.d, ptr %i.g, ptr %i.k    ; 2 uses
  %.sroa.018.0.copyload = load i32, ptr %.0.i.i, align 8
  %.sroa.519.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.519.0.copyload = load ptr, ptr %.sroa.519.0..0.i.i.sroa_idx, align 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = ptrtoint ptr %.sroa.519.0.copyload to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.val4.val6.pre, %bb.m ] ; 2 uses
  %i.q = phi ptr [ %i.f, %bb.a ], [ %.val4.val.pre, %bb.m ] ; 2 uses
  %i.r = phi i64 [ %i.c, %bb.a ], [ %.sroa.7.0, %bb.m ] ; 4 uses
  %.sroa.7.0 = add i64 %i.r, -1                   ; 5 uses
  %i.s = icmp ult i64 %.sroa.7.0, 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.7.0
  %i.u = getelementptr [16 x i8], ptr %i.p, i64 %.sroa.7.0
  %i.v = getelementptr i8, ptr %i.u, i64 -128
  %.0.i.i.i = select i1 %i.s, ptr %i.t, ptr %i.v  ; 2 uses
  %i.w = getelementptr i8, ptr %.0.i.i.i, i64 8
  %.val3.i = load ptr, ptr %i.w, align 8          ; 5 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1714
  %.not.not.i.i.i.i.i = icmp eq i64 %i.x, 0       ; 2 uses
  br i1 %.not.not.i.i.i.i.i, label %.preheader35, label %bb.d

.preheader35:                                     ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.c ], [ %i.o, %bb.b ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %i.y = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %i.y, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.preheader35
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !347
  %i.ab = icmp eq ptr %.sroa.519.0.copyload, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i, label %.preheader35, !llvm.loop !118

bb.d:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !1103 ; 3 uses
  %i.ad = urem i64 %i.m, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !1102  ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !273 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !347
  %i.ak = icmp eq ptr %.sroa.519.0.copyload, %i.aj
  br i1 %i.ak, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !859
  br label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.an = icmp eq ptr %.sroa.519.0.copyload, %i.aq
  br i1 %i.an, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !43

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ah, %bb.e ]
  %i.ao = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !347 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = urem i64 %i.ar, %i.ac
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.ad
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !43

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.g
  br label %.loopexit.i.i.i.i, !llvm.loop !43

.loopexit.i.i.i.i:                                ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i, %.preheader35, %..loopexit_crit_edge21.i.i.i.i.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.129) #44
  unreachable

_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i: ; preds = %bb.f, %bb.c
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.c ], [ %i.ao, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !859 ; 2 uses
  br i1 %.not.not.i.i.i.i.i, label %.preheader, label %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i

_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i: ; preds = %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i
  %.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !1103
  %.pre24.i.i = load ptr, ptr %1, align 8, !tbaa !1102
  br label %bb.i

.preheader:                                       ; preds = %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i, %bb.h
  %.sroa.06.0.in.i.i.i12.i.i = phi ptr [ %.sroa.06.0.i.i.i13.i.i, %bb.h ], [ %i.o, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.i.i ]
  %.sroa.06.0.i.i.i13.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i12.i.i, align 8, !tbaa !273 ; 4 uses
  %i.av = icmp eq ptr %.sroa.06.0.i.i.i13.i.i, null
  br i1 %i.av, label %.loopexit.i.i10.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i13.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !347
  %i.ay = icmp eq ptr %.val3.i, %i.ax
  br i1 %i.ay, label %.loopexit, label %.preheader, !llvm.loop !118

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i
  %i.az = phi ptr [ %i.ae, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i ], [ %.pre24.i.i, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i ]
  %i.ba = phi i64 [ %i.ac, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i ] ; 2 uses
  %i.bb = phi double [ %i.am, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit.thread.i.i ], [ %i.au, %_ZNSt13unordered_mapIPKN7rocksdb12FileMetaDataEdSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_dEEE2atERS9_.exit._crit_edge.i.i ] ; 2 uses
  %i.bc = ptrtoint ptr %.val3.i to i64
  %i.bd = urem i64 %i.bc, %i.ba                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i4.i.i, label %.loopexit.i.i10.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !273 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !347
  %i.bj = icmp eq ptr %.val3.i, %i.bi
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i.i.i.i5.i.i

bb.k:                                             ; preds = %bb.l
  %i.bk = icmp eq ptr %.val3.i, %i.bn
  br i1 %i.bk, label %.loopexit, label %.lr.ph.i.i.i.i.i5.i.i, !llvm.loop !43

.lr.ph.i.i.i.i.i5.i.i:                            ; preds = %bb.j, %bb.k
  %.020.i.i.i.i.i6.i.i = phi ptr [ %i.bl, %bb.k ], [ %i.bg, %bb.j ]
  %i.bl = load ptr, ptr %.020.i.i.i.i.i6.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i.i7.i.i = icmp eq ptr %i.bl, null
  br i1 %.not18.i.i.i.i.i7.i.i, label %.loopexit.i.i10.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i5.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !347 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = urem i64 %i.bo, %i.ba
  %.not19.i.i.i.i.i8.i.i = icmp eq i64 %i.bp, %i.bd
  br i1 %.not19.i.i.i.i.i8.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i.i9.i.i, !llvm.loop !43

..loopexit_crit_edge21.i.i.i.i.i9.i.i:            ; preds = %bb.l
  br label %.loopexit.i.i10.i.i, !llvm.loop !43

.loopexit.i.i10.i.i:                              ; preds = %bb.i, %.lr.ph.i.i.i.i.i5.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i9.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.129) #44
  unreachable

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.j
  %i.bq = phi double [ %i.au, %bb.h ], [ %i.bb, %bb.j ], [ %i.bb, %bb.k ]
  %.sroa.06.1.i.i.i11.i.i = phi ptr [ %.sroa.06.0.i.i.i13.i.i, %bb.h ], [ %i.bg, %bb.j ], [ %i.bl, %bb.k ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i11.i.i, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !859
  %i.bt = fcmp ogt double %i.bq, %i.bs
  %i.bu = icmp ult i64 %i.r, 8
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  %i.bw = getelementptr [16 x i8], ptr %i.p, i64 %i.r
  %i.bx = getelementptr i8, ptr %i.bw, i64 -128
  %.0.i.i9 = select i1 %i.bu, ptr %i.bv, ptr %i.bx ; 4 uses
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.by = load i32, ptr %.0.i.i.i, align 8, !tbaa !269
  store i32 %i.by, ptr %.0.i.i9, align 8, !tbaa !1071
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 8
  store ptr %.val3.i, ptr %i.bz, align 8, !tbaa !1072
  store ptr %i.a, ptr %0, align 8, !tbaa !1105
  store i64 %.sroa.7.0, ptr %i.b, align 8, !tbaa !533
  %.val4.val.pre = load ptr, ptr %i.e, align 8
  %.val4.val6.pre = load ptr, ptr %i.h, align 8
  br label %bb.b, !llvm.loop !3292

bb.n:                                             ; preds = %.loopexit
  store i32 %.sroa.018.0.copyload, ptr %.0.i.i9, align 8, !tbaa !1071
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 8
  store ptr %.sroa.519.0.copyload, ptr %i.ca, align 8, !tbaa !1072
  ret void
}
end_hunk_0
