Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 383
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1355
begin_hunk_0_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.an, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bn

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c, %bb.b
  %i.au = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.av = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.086 = phi i64 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i8 6, ptr %i.b, align 1, !tbaa !1126
  %i.aw = load ptr, ptr %0, align 8, !tbaa !1113
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = invoke noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.az)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.ba, 221
  br i1 %i.bb, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.p, label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.r
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %.not166 = icmp eq ptr %i.av, null
  %or.cond194 = select i1 %i.r, i1 true, i1 %.not166
  br i1 %or.cond194, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !1126
  br label %.invoke

bb.s:                                             ; preds = %bb.p
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %.invoke, %bb.n, %bb.s
  %i.bf = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bi)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1131
  br label %bb.x

bb.w:                                             ; preds = %.invoke, %bb.m, %bb.q, %bb.s, %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.x:                                             ; preds = %bb.v, %bb.u
  %.sroa.0152.0 = phi i32 [ 0, %bb.u ], [ %i.bk, %bb.v ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.0152.0, ptr %9, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bm = load i8, ptr %i.b, align 1, !tbaa !1126 ; 3 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.thread189, label %bb.y

.thread189:                                       ; preds = %bb.x
  store i32 %.sroa.0152.0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.y:                                             ; preds = %bb.x
  %i.bo = sub i32 0, %.sroa.0152.0
  store i32 %i.bo, ptr %10, align 4
  switch i8 %i.bm, label %bb.af [
    i8 5, label %bb.z
    i8 4, label %bb.z
    i8 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y
  br i1 %i.r, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread157 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.ae, %.thread158, %bb.ac, %bb.aa
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ac:                                            ; preds = %bb.z
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 4)
          to label %bb.ad unwind label %bb.ab     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bs = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 5
  br i1 %i.bt, label %bb.ae, label %.thread191

.thread157:                                       ; preds = %bb.aa
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 5
  br i1 %i.bv, label %.thread158, label %bb.af

.thread158:                                       ; preds = %.thread157
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread158._crit_edge unwind label %bb.ab ; 0 uses

.thread158._crit_edge:                            ; preds = %.thread158
  %.pre172 = load i8, ptr %i.b, align 1, !tbaa !1126
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 4)
          to label %.thread159 unwind label %bb.ab ; 0 uses

bb.af:                                            ; preds = %.thread158._crit_edge, %bb.y, %.thread157
  %i.by = phi i8 [ %.pre172, %.thread158._crit_edge ], [ %i.bu, %.thread157 ], [ %i.bm, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  %i.bz = add i8 %i.by, -3
  %or.cond13 = icmp ult i8 %i.bz, 3
  br i1 %or.cond13, label %bb.ag, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread191:                                       ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  %i.ca = add i8 %i.bs, -3
  %or.cond13192 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13192, label %.thread161, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread159:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  %i.cb = load i8, ptr %i.b, align 1, !tbaa !1126
  %i.cc = add i8 %i.cb, -3
  %or.cond13160 = icmp ult i8 %i.cc, 3
  br i1 %or.cond13160, label %.thread161, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ag:                                            ; preds = %bb.af
  br i1 %i.r, label %.thread161, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %.thread162 ; 0 uses

.thread161:                                       ; preds = %.thread191, %.thread159, %bb.ag
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %.thread162 ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread191, %.thread189, %.thread161, %.thread159, %bb.ah, %bb.af
  %i.cf = load i8, ptr %i.b, align 1
  %i.cg = icmp ne i8 %i.cf, 6
  %or.cond16 = select i1 %i.q, i1 %i.cg, i1 false
  br i1 %or.cond16, label %bb.ai, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ai:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.ch = load <8 x i64>, ptr %3, align 8, !tbaa !1156
  %i.ci = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ch)
  %i.cj = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ci) ; 3 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32          ; 3 uses
  br i1 %i.r, label %bb.aj, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.aj:                                            ; preds = %bb.ai
  %.not106 = icmp eq i32 %2, %i.ck
  br i1 %.not106, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cl = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #32
          to label %bb.al unwind label %.thread162 ; 5 uses

.thread162:                                       ; preds = %bb.ah, %.thread161, %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.co = icmp eq i64 %i.cj, 0
  br i1 %i.co, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit: ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cm, i8 0, i64 %i.cl, i1 false), !tbaa !6423
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.am:                                            ; preds = %.invoke200, %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit, %bb.al, %bb.ai, %bb.aj, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.aj ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ai ], [ %i.cm, %bb.al ], [ %i.cm, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.aj ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ai ], [ %i.cm, %bb.al ], [ %i.cm, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.aj ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.ck, %bb.ai ], [ 0, %bb.al ], [ %i.ck, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %i.cq = select i1 %i.r, ptr %.085, ptr null     ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null                 ; 3 uses
  %i.cs = and i32 %i.o, 5
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = icmp ne ptr %i.av, null
  %i.cv = and i1 %i.ct, %i.cu
  %or.cond3.i.i = and i1 %i.cr, %i.cv             ; 2 uses
  br i1 %4, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = and i32 %i.o, 4
  %.not.i.i123 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i123, label %bb.ap, label %.invoke198

bb.ap:                                            ; preds = %bb.ao
  %i.cx = and i32 %i.o, 1
  %.not27.i.i = icmp eq i32 %i.cx, 0
  %i.cy = zext i32 %.084 to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2                ; 3 uses
  br i1 %.not27.i.i, label %bb.aq, label %.invoke197

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.cr, label %.invoke196, label %.invoke195

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.as

.invoke200:                                       ; preds = %bb.ar, %bb.an
  %i.da = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke196 unwind label %bb.am

bb.as:                                            ; preds = %bb.ar
  %i.db = and i32 %i.o, 4
  %.not.i130 = icmp eq i32 %i.db, 0
  br i1 %.not.i130, label %bb.at, label %.invoke198

.invoke198:                                       ; preds = %bb.as, %bb.ao
  %i.dc = zext i32 %.084 to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cq, i64 noundef %i.dd)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.am

bb.at:                                            ; preds = %bb.as
  %i.de = and i32 %i.o, 1
  %.not27.i = icmp eq i32 %i.de, 0
  %i.df = zext i32 %.084 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2                ; 3 uses
  br i1 %.not27.i, label %bb.au, label %.invoke197

.invoke197:                                       ; preds = %bb.at, %bb.ap
  %i.dh = phi i64 [ %i.cz, %bb.ap ], [ %i.dg, %bb.at ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cq, i64 noundef %i.dh)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.am

bb.au:                                            ; preds = %bb.at
  br i1 %i.cr, label %.invoke196, label %.invoke195

.invoke196:                                       ; preds = %.invoke200, %bb.au, %bb.aq
  %i.di = phi i64 [ %i.da, %.invoke200 ], [ %i.cz, %bb.aq ], [ %i.dg, %bb.au ]
  %i.dj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.di, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.am ; 0 uses

.invoke195:                                       ; preds = %bb.au, %bb.aq
  %i.dk = phi i64 [ %i.cz, %bb.aq ], [ %i.dg, %bb.au ]
  %i.dl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.dk)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.am ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %.not115 = icmp ne i32 %.084, %2
  %i.dm = and i1 %i.q, %.not115
  %or.cond117.not = and i1 %i.r, %i.dm
  br i1 %or.cond117.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.val = load i32, ptr %9, align 4
  %.val116 = load i32, ptr %10, align 4
  br label %bb.av

bb.av:                                            ; preds = %.preheader, %bb.ay
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ay ] ; 4 uses
  %.0170 = phi i32 [ 0, %.preheader ], [ %.1, %bb.ay ] ; 3 uses
  %i.dn = lshr i64 %indvars.iv, 6
  %i.do = and i64 %i.dn, 67108863                 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1156
  %i.dr = and i64 %indvars.iv, 63
  %i.ds = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dt = and i64 %i.dq, %i.ds
  %.not167 = icmp eq i64 %i.dt, 0
  br i1 %.not167, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.du = zext i32 %.0170 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !1131
  %i.dx = add i32 %.0170, 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.do
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156
  %i.ea = and i64 %i.dz, %i.ds
  %.not168 = icmp eq i64 %i.ea, 0
  %i.eb = select i1 %.not168, i32 %.val116, i32 %.val
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.sink = phi i32 [ %i.eb, %bb.ax ], [ %i.dw, %bb.aw ]
  %.1 = phi i32 [ %.0170, %bb.ax ], [ %i.dx, %bb.aw ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.ec, align 4, !tbaa !1131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %bb.av, !llvm.loop !19768

.loopexit:                                        ; preds = %bb.ay, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i137 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i137, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i138

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i138: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i140 = icmp eq ptr %i.au, null
  br i1 %.not.i.i140, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, label %bb.az

bb.az:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139
  %i.ed = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 4294967297
  %i.eg = trunc i64 %i.ee to i32                  ; 2 uses
  br i1 %i.ef, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.ed, align 8, !tbaa !1115
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eh, align 4, !tbaa !1116
  %i.ei = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  %i.el = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144

bb.bb:                                            ; preds = %bb.az
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i141 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i141, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ep = add nsw i32 %i.eg, -1
  store i32 %i.ep, ptr %i.ed, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

bb.bd:                                            ; preds = %bb.bb
  %i.eq = atomicrmw volatile add ptr %i.ed, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i143 = phi i32 [ %i.eg, %bb.bc ], [ %i.eq, %bb.bd ]
  %i.er = icmp eq i32 %.0.i.i.i.i143, 1
  br i1 %i.er, label %bb.be, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, !prof !1183

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i145 = icmp eq ptr %i.et, null
  br i1 %.not.i.i145, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bf
end_hunk_0
