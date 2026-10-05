Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a
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
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.ba, 221
  br i1 %i.bb, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.q:                                             ; preds = %bb.o
  %.not166 = icmp eq ptr %i.av, null
  %or.cond194 = select i1 %i.r, i1 true, i1 %.not166
  br i1 %or.cond194, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !1126
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.n, %bb.t
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1131
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0152.0 = phi i32 [ 0, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.0152.0, ptr %9, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !1126 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.thread189, label %bb.z

.thread189:                                       ; preds = %bb.y
  store i32 %.sroa.0152.0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bp = sub i32 0, %.sroa.0152.0
  store i32 %i.bp, ptr %10, align 4
  switch i8 %i.bn, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread157 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread158, %bb.ad, %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 5
  br i1 %i.bu, label %bb.af, label %.thread191

.thread157:                                       ; preds = %bb.ab
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %.thread158, label %bb.ag

.thread158:                                       ; preds = %.thread157
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread158._crit_edge unwind label %bb.ac ; 0 uses

.thread158._crit_edge:                            ; preds = %.thread158
  %.pre172 = load i8, ptr %i.b, align 1, !tbaa !1126
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 4)
          to label %.thread159 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread158._crit_edge, %bb.z, %.thread157
  %i.bz = phi i8 [ %.pre172, %.thread158._crit_edge ], [ %i.bv, %.thread157 ], [ %i.bn, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  %i.ca = add i8 %i.bz, -3
  %or.cond13 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread191:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  %i.cb = add i8 %i.bt, -3
  %or.cond13192 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13192, label %.thread161, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread159:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !1156
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !1126
  %i.cd = add i8 %i.cc, -3
  %or.cond13160 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13160, label %.thread161, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread161, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread161, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

.thread161:                                       ; preds = %.thread191, %.thread159, %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread191, %.thread189, %.thread161, %.thread159, %bb.ai, %bb.ag
  %i.ch = load i8, ptr %i.b, align 1
  %i.ci = icmp ne i8 %i.ch, 6
  %or.cond16 = select i1 %i.q, i1 %i.ci, i1 false
  br i1 %or.cond16, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ak:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.cj = load <8 x i64>, ptr %3, align 8, !tbaa !1156
  %i.ck = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.cj)
  %i.cl = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ck) ; 3 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32          ; 3 uses
  br i1 %i.r, label %bb.al, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %.not106 = icmp eq i32 %2, %i.cm
  br i1 %.not106, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #32
          to label %bb.an unwind label %.thread162 ; 5 uses

.thread162:                                       ; preds = %bb.am
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.cq = icmp eq i64 %i.cl, 0
  br i1 %i.cq, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit: ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.co, i8 0, i64 range(i64 0, 2049) %i.cn, i1 false), !tbaa !6423
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ao:                                            ; preds = %.invoke200, %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit, %bb.an, %bb.ak, %bb.al, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.al ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.co, %bb.an ], [ %i.co, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.al ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.co, %bb.an ], [ %i.co, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.al ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.cm, %bb.ak ], [ 0, %bb.an ], [ %i.cm, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %i.cs = select i1 %i.r, ptr %.085, ptr null     ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null                 ; 3 uses
  %i.cu = and i32 %i.o, 5
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = icmp ne ptr %i.av, null
  %i.cx = and i1 %i.cv, %i.cw
  %or.cond3.i.i = and i1 %i.ct, %i.cx             ; 2 uses
  br i1 %4, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cy = and i32 %i.o, 4
  %.not.i.i123 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i123, label %bb.ar, label %.invoke198

bb.ar:                                            ; preds = %bb.aq
  %i.cz = and i32 %i.o, 1
  %.not27.i.i = icmp eq i32 %i.cz, 0
  %i.da = zext i32 %.084 to i64
  %i.db = shl nuw nsw i64 %i.da, 2                ; 3 uses
  br i1 %.not27.i.i, label %bb.as, label %.invoke197

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ct, label %.invoke196, label %.invoke195

bb.at:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.au

.invoke200:                                       ; preds = %bb.at, %bb.ap
  %i.dc = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke196 unwind label %bb.ao

bb.au:                                            ; preds = %bb.at
  %i.dd = and i32 %i.o, 4
  %.not.i130 = icmp eq i32 %i.dd, 0
  br i1 %.not.i130, label %bb.av, label %.invoke198

.invoke198:                                       ; preds = %bb.au, %bb.aq
  %i.de = zext i32 %.084 to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cs, i64 noundef %i.df)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.ao

bb.av:                                            ; preds = %bb.au
  %i.dg = and i32 %i.o, 1
  %.not27.i = icmp eq i32 %i.dg, 0
  %i.dh = zext i32 %.084 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  br i1 %.not27.i, label %bb.aw, label %.invoke197

.invoke197:                                       ; preds = %bb.av, %bb.ar
  %i.dj = phi i64 [ %i.db, %bb.ar ], [ %i.di, %bb.av ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cs, i64 noundef %i.dj)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.ao

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ct, label %.invoke196, label %.invoke195

.invoke196:                                       ; preds = %.invoke200, %bb.aw, %bb.as
  %i.dk = phi i64 [ %i.dc, %.invoke200 ], [ %i.db, %bb.as ], [ %i.di, %bb.aw ]
  %i.dl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dk, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.ao ; 0 uses

.invoke195:                                       ; preds = %bb.aw, %bb.as
  %i.dm = phi i64 [ %i.db, %bb.as ], [ %i.di, %bb.aw ]
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.dm)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.ao ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %.not115 = icmp ne i32 %.084, %2
  %i.do = and i1 %i.q, %.not115
  %or.cond117.not = and i1 %i.r, %i.do
  br i1 %or.cond117.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.val = load i32, ptr %9, align 4
  %.val116 = load i32, ptr %10, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ba
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ba ] ; 4 uses
  %.0170 = phi i32 [ 0, %.preheader ], [ %.1, %bb.ba ] ; 3 uses
  %i.dp = lshr i64 %indvars.iv, 6
  %i.dq = and i64 %i.dp, 67108863                 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !1156
  %i.dt = and i64 %indvars.iv, 63
  %i.du = shl nuw i64 1, %i.dt                    ; 2 uses
  %i.dv = and i64 %i.ds, %i.du
  %.not167 = icmp eq i64 %i.dv, 0
  br i1 %.not167, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dw = zext i32 %.0170 to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !1131
  %i.dz = add i32 %.0170, 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dq
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1156
  %i.ec = and i64 %i.eb, %i.du
  %.not168 = icmp eq i64 %i.ec, 0
  %i.ed = select i1 %.not168, i32 %.val116, i32 %.val
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.sink = phi i32 [ %i.ed, %bb.az ], [ %i.dy, %bb.ay ]
  %.1 = phi i32 [ %.0170, %bb.az ], [ %i.dz, %bb.ay ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.ee, align 4, !tbaa !1131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %bb.ax, !llvm.loop !19716

.loopexit:                                        ; preds = %bb.ba, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
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
  br i1 %.not.i.i140, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139
  %i.ef = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ef, align 8, !tbaa !1115
  %i.ej = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !1116
  %i.ek = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  %i.en = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144

bb.bd:                                            ; preds = %bb.bb
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i141 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i141, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

bb.bf:                                            ; preds = %bb.bd
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i143 = phi i32 [ %i.ei, %bb.be ], [ %i.es, %bb.bf ]
  %i.et = icmp eq i32 %.0.i.i.i.i143, 1
  br i1 %i.et, label %bb.bg, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, !prof !1183

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit139, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i145 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i145, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b:bb.a
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %.not167 = icmp eq ptr %i.av, null
  %or.cond196 = select i1 %i.r, i1 true, i1 %.not167
  br i1 %or.cond196, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !1126
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.n, %bb.t
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1131
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0153.0 = phi i32 [ 0, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.0153.0, ptr %9, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !1126 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.thread191, label %bb.z

.thread191:                                       ; preds = %bb.y
  store i32 %.sroa.0153.0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bp = sub i32 0, %.sroa.0153.0
  store i32 %i.bp, ptr %10, align 4
  switch i8 %i.bn, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread158 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread159, %bb.ad, %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 5
  br i1 %i.bu, label %bb.af, label %.thread193

.thread158:                                       ; preds = %bb.ab
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %.thread159, label %bb.ag

.thread159:                                       ; preds = %.thread158
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread159._crit_edge unwind label %bb.ac ; 0 uses

.thread159._crit_edge:                            ; preds = %.thread159
  %.pre174 = load i8, ptr %i.b, align 1, !tbaa !1126
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 4)
          to label %.thread160 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread159._crit_edge, %bb.z, %.thread158
  %i.bz = phi i8 [ %.pre174, %.thread159._crit_edge ], [ %i.bv, %.thread158 ], [ %i.bn, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.ca = add i8 %i.bz, -3
  %or.cond13 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

.thread193:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.cb = add i8 %i.bt, -3
  %or.cond13194 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13194, label %.thread162, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

.thread160:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !1126
  %i.cd = add i8 %i.cc, -3
  %or.cond13161 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13161, label %.thread162, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread162, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4096, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread162, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

.thread162:                                       ; preds = %.thread193, %.thread160, %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(4096) %11, i64 noundef 4096)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit: ; preds = %.thread193, %.thread191, %.thread162, %.thread160, %bb.ai, %bb.ag
  %i.ch = load i8, ptr %i.b, align 1
  %i.ci = icmp ne i8 %i.ch, 6
  %or.cond16 = select i1 %i.q, i1 %i.ci, i1 false
  br i1 %or.cond16, label %vector.body, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

vector.body:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.cp, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ]
  %vec.phi203 = phi <2 x i32> [ %i.cq, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ]
  %i.cj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1156
  %wide.load204 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !1156
  %i.cl = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load204)
  %i.cn = trunc nuw nsw <2 x i64> %i.cl to <2 x i32>
  %i.co = trunc nuw nsw <2 x i64> %i.cm to <2 x i32>
  %i.cp = add <2 x i32> %vec.phi, %i.cn           ; 2 uses
  %i.cq = add <2 x i32> %vec.phi203, %i.co        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, 512
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !20408

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 5 uses
  br i1 %i.r, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ak:                                            ; preds = %middle.block
  %.not106 = icmp eq i32 %i.cs, %2
  br i1 %.not106, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #32
          to label %bb.am unwind label %.thread163 ; 5 uses

.thread163:                                       ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.cx = icmp eq i32 %i.cs, 0
  br i1 %i.cx, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit: ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 range(i64 0, 17179869181) %i.cu, i1 false), !tbaa !6423
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.an:                                            ; preds = %.invoke202, %.invoke200, %.invoke199, %.invoke198, %.invoke197
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i123 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit, %bb.am, %middle.block, %bb.ak, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.ak ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.ak ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.ak ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ], [ %i.cs, %middle.block ], [ 0, %bb.am ], [ %i.cs, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %i.cz = select i1 %i.r, ptr %.085, ptr null     ; 3 uses
  %i.da = icmp eq ptr %i.cz, null                 ; 3 uses
  %i.db = and i32 %i.o, 5
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = icmp ne ptr %i.av, null
  %i.de = and i1 %i.dc, %i.dd
  %or.cond3.i.i = and i1 %i.da, %i.de             ; 2 uses
  br i1 %4, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke202, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.df = and i32 %i.o, 4
  %.not.i.i124 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i124, label %bb.aq, label %.invoke200

bb.aq:                                            ; preds = %bb.ap
  %i.dg = and i32 %i.o, 1
  %.not27.i.i = icmp eq i32 %i.dg, 0
  %i.dh = zext i32 %.084 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  br i1 %.not27.i.i, label %bb.ar, label %.invoke199

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.da, label %.invoke198, label %.invoke197

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke202, label %bb.at

.invoke202:                                       ; preds = %bb.as, %bb.ao
  %i.dj = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke198 unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  %i.dk = and i32 %i.o, 4
  %.not.i131 = icmp eq i32 %i.dk, 0
  br i1 %.not.i131, label %bb.au, label %.invoke200

.invoke200:                                       ; preds = %bb.at, %bb.ap
  %i.dl = zext i32 %.084 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dm)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.dn = and i32 %i.o, 1
  %.not27.i = icmp eq i32 %i.dn, 0
  %i.do = zext i32 %.084 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 3 uses
  br i1 %.not27.i, label %bb.av, label %.invoke199

.invoke199:                                       ; preds = %bb.au, %bb.aq
  %i.dq = phi i64 [ %i.di, %bb.aq ], [ %i.dp, %bb.au ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dq)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  br i1 %i.da, label %.invoke198, label %.invoke197

.invoke198:                                       ; preds = %.invoke202, %bb.av, %bb.ar
  %i.dr = phi i64 [ %i.dj, %.invoke202 ], [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dr, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

.invoke197:                                       ; preds = %bb.av, %bb.ar
  %i.dt = phi i64 [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.du = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.dt)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke200, %.invoke199, %.invoke198, %.invoke197
  %.not115 = icmp ne i32 %.084, %2
  %i.dv = and i1 %i.q, %.not115
  %or.cond117.not = and i1 %i.r, %i.dv
  br i1 %or.cond117.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.val = load i32, ptr %9, align 4
  %.val116 = load i32, ptr %10, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 4 uses
  %.0172 = phi i32 [ 0, %.preheader ], [ %.1, %bb.az ] ; 3 uses
  %i.dw = lshr i64 %indvars.iv, 6
  %i.dx = and i64 %i.dw, 67108863                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156
  %i.ea = and i64 %indvars.iv, 63
  %i.eb = shl nuw i64 1, %i.ea                    ; 2 uses
  %i.ec = and i64 %i.dz, %i.eb
  %.not168 = icmp eq i64 %i.ec, 0
  br i1 %.not168, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = zext i32 %.0172 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !1131
  %i.eg = add i32 %.0172, 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dx
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1156
  %i.ej = and i64 %i.ei, %i.eb
  %.not169 = icmp eq i64 %i.ej, 0
  %i.ek = select i1 %.not169, i32 %.val116, i32 %.val
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.sink = phi i32 [ %i.ek, %bb.ay ], [ %i.ef, %bb.ax ]
  %.1 = phi i32 [ %.0172, %bb.ay ], [ %i.eg, %bb.ax ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.el, align 4, !tbaa !1131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond.not, label %.loopexit, label %bb.aw, !llvm.loop !20409

.loopexit:                                        ; preds = %bb.az, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i138 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit140, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i139

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i139: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit140

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit140: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i141 = icmp eq ptr %i.au, null
  br i1 %.not.i.i141, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit140
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.em, align 8, !tbaa !1115
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !1116
  %i.er = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  %i.eu = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145

bb.bc:                                            ; preds = %bb.ba
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i142 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i142, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143

bb.be:                                            ; preds = %bb.bc
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i144 = phi i32 [ %i.ep, %bb.bd ], [ %i.ez, %bb.be ]
  %i.fa = icmp eq i32 %.0.i.i.i.i144, 1
  br i1 %i.fa, label %bb.bf, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145, !prof !1183

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit140, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i146 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i146, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj4EEEEEvRSiPT_jRKT0_b:bb.a
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %.not165 = icmp eq ptr %i.av, null
  %or.cond194 = select i1 %i.r, i1 true, i1 %.not165
  br i1 %or.cond194, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !1126
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.n, %bb.t
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1131
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0151.0 = phi i32 [ 0, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.0151.0, ptr %9, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !1126 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.thread189, label %bb.z

.thread189:                                       ; preds = %bb.y
  store i32 %.sroa.0151.0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  br label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bp = sub i32 0, %.sroa.0151.0
  store i32 %i.bp, ptr %10, align 4
  switch i8 %i.bn, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread156 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread157, %bb.ad, %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 5
  br i1 %i.bu, label %bb.af, label %.thread191

.thread156:                                       ; preds = %bb.ab
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %.thread157, label %bb.ag

.thread157:                                       ; preds = %.thread156
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread157._crit_edge unwind label %bb.ac ; 0 uses

.thread157._crit_edge:                            ; preds = %.thread157
  %.pre172 = load i8, ptr %i.b, align 1, !tbaa !1126
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 4)
          to label %.thread158 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread157._crit_edge, %.thread156, %bb.z
  %i.bz = phi i8 [ %.pre172, %.thread157._crit_edge ], [ %i.bv, %.thread156 ], [ %i.bn, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  %i.ca = add i8 %i.bz, -3
  %or.cond13 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

.thread191:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  %i.cb = add i8 %i.bt, -3
  %or.cond13192 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13192, label %.thread160, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

.thread158:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !1126
  %i.cd = add i8 %i.cc, -3
  %or.cond13159 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13159, label %.thread160, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread160, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 512, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread160, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

.thread160:                                       ; preds = %.thread191, %.thread158, %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %11, i64 noundef 512)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit: ; preds = %.thread191, %.thread189, %.thread160, %.thread158, %bb.ai, %bb.ag
  %i.ch = load i8, ptr %i.b, align 1
  %i.ci = icmp ne i8 %i.ch, 6
  %or.cond16 = select i1 %i.q, i1 %i.ci, i1 false
  br i1 %or.cond16, label %vector.body, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

vector.body:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.cp, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ]
  %vec.phi201 = phi <2 x i32> [ %i.cq, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ]
  %i.cj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1156
  %wide.load202 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !1156
  %i.cl = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.cn = trunc nuw nsw <2 x i64> %i.cl to <2 x i32>
  %i.co = trunc nuw nsw <2 x i64> %i.cm to <2 x i32>
  %i.cp = add <2 x i32> %vec.phi, %i.cn           ; 2 uses
  %i.cq = add <2 x i32> %vec.phi201, %i.co        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, 64
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !20415

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 5 uses
  br i1 %i.r, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ak:                                            ; preds = %middle.block
  %.not105 = icmp eq i32 %i.cs, %2
  br i1 %.not105, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #32
          to label %bb.am unwind label %.thread161 ; 5 uses

.thread161:                                       ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.cx = icmp eq i32 %i.cs, 0
  br i1 %i.cx, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit: ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 range(i64 0, 17179869181) %i.cu, i1 false), !tbaa !6423
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.an:                                            ; preds = %.invoke200, %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i121 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i121, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit, %bb.am, %middle.block, %bb.ak, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.ak ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.ak ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.ak ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ], [ %i.cs, %middle.block ], [ 0, %bb.am ], [ %i.cs, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %i.cz = select i1 %i.r, ptr %.085, ptr null     ; 3 uses
  %i.da = icmp eq ptr %i.cz, null                 ; 3 uses
  %i.db = and i32 %i.o, 5
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = icmp ne ptr %i.av, null
  %i.de = and i1 %i.dc, %i.dd
  %or.cond3.i.i = and i1 %i.da, %i.de             ; 2 uses
  br i1 %4, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.df = and i32 %i.o, 4
  %.not.i.i122 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i122, label %bb.aq, label %.invoke198

bb.aq:                                            ; preds = %bb.ap
  %i.dg = and i32 %i.o, 1
  %.not27.i.i = icmp eq i32 %i.dg, 0
  %i.dh = zext i32 %.084 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  br i1 %.not27.i.i, label %bb.ar, label %.invoke197

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.da, label %.invoke196, label %.invoke195

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.at

.invoke200:                                       ; preds = %bb.as, %bb.ao
  %i.dj = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke196 unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  %i.dk = and i32 %i.o, 4
  %.not.i129 = icmp eq i32 %i.dk, 0
  br i1 %.not.i129, label %bb.au, label %.invoke198

.invoke198:                                       ; preds = %bb.at, %bb.ap
  %i.dl = zext i32 %.084 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dm)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.dn = and i32 %i.o, 1
  %.not27.i = icmp eq i32 %i.dn, 0
  %i.do = zext i32 %.084 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 3 uses
  br i1 %.not27.i, label %bb.av, label %.invoke197

.invoke197:                                       ; preds = %bb.au, %bb.aq
  %i.dq = phi i64 [ %i.di, %bb.aq ], [ %i.dp, %bb.au ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dq)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  br i1 %i.da, label %.invoke196, label %.invoke195

.invoke196:                                       ; preds = %.invoke200, %bb.av, %bb.ar
  %i.dr = phi i64 [ %i.dj, %.invoke200 ], [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dr, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

.invoke195:                                       ; preds = %bb.av, %bb.ar
  %i.dt = phi i64 [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.du = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.dt)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %.not113 = icmp ne i32 %.084, %2
  %i.dv = and i1 %i.q, %.not113
  %or.cond115.not = and i1 %i.r, %i.dv
  br i1 %or.cond115.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.val = load i32, ptr %9, align 4
  %.val114 = load i32, ptr %10, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 4 uses
  %.0170 = phi i32 [ 0, %.preheader ], [ %.1, %bb.az ] ; 3 uses
  %i.dw = lshr i64 %indvars.iv, 6
  %i.dx = and i64 %i.dw, 67108863                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156
  %i.ea = and i64 %indvars.iv, 63
  %i.eb = shl nuw i64 1, %i.ea                    ; 2 uses
  %i.ec = and i64 %i.dz, %i.eb
  %.not166 = icmp eq i64 %i.ec, 0
  br i1 %.not166, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = zext i32 %.0170 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !1131
  %i.eg = add i32 %.0170, 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dx
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1156
  %i.ej = and i64 %i.ei, %i.eb
  %.not167 = icmp eq i64 %i.ej, 0
  %i.ek = select i1 %.not167, i32 %.val114, i32 %.val
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.sink = phi i32 [ %i.ek, %bb.ay ], [ %i.ef, %bb.ax ]
  %.1 = phi i32 [ %.0170, %bb.ay ], [ %i.eg, %bb.ax ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.el, align 4, !tbaa !1131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %.loopexit, label %bb.aw, !llvm.loop !20416

.loopexit:                                        ; preds = %bb.az, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj0EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i136 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit138, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i137

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i137: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit138

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit138: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj0EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i139 = icmp eq ptr %i.au, null
  br i1 %.not.i.i139, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit138
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.em, align 8, !tbaa !1115
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !1116
  %i.er = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  %i.eu = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

bb.bc:                                            ; preds = %bb.ba
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i140 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i140, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

bb.be:                                            ; preds = %bb.bc
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i142 = phi i32 [ %i.ep, %bb.bd ], [ %i.ez, %bb.be ]
  %i.fa = icmp eq i32 %.0.i.i.i.i142, 1
  br i1 %i.fa, label %bb.bf, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, !prof !1183

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit138, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i144 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i144, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13writeTopologyERSob:.preheader.preheader
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1156 ; 2 uses
  %i.az = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bc = shl nsw i64 -1, %i.az
  %i.bd = and i64 %i.ay, %i.bc                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %exitcond.not.i.i.i.i54 = icmp eq i32 %i.at, 511
  br i1 %exitcond.not.i.i.i.i54, label %._crit_edge, label %.lr.ph56

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph56
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph56, !llvm.loop !41

.lr.ph56:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i55 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i55, 1 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !41

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph56
  %i.bg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.k
  %.016.lcssa.i.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.bg, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bd, %bb.k ], [ %i.bf, %.critedge.loopexit.i.i.i.i ]
  %i.bh = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.j, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bk, %.critedge.i.i.i.i ], [ %i.as, %bb.j ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ak, align 8, !tbaa !1360
  %.not = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20423
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj5EEEEEvRSoPKT_jRKT0_SE_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %6 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::io::MaskCompress.4924", align 4 ; 10 uses
  %8 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1113
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e) ; 4 uses
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 6, ptr %i.a, align 1, !tbaa !1126
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.aj unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %.invoke159, %.invoke158, %.invoke, %bb.b
  %.sroa.0108.0 = phi ptr [ null, %bb.b ], [ %.sroa.0108.4, %.invoke159 ], [ %.sroa.0108.4, %.invoke158 ], [ %.sroa.0108.4, %.invoke ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !tbaa !1131
  %i.j = load ptr, ptr %0, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not80 = icmp eq ptr %i.n, null
  br i1 %.not80, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1131
  store i32 %i.o, ptr %6, align 4, !tbaa !1131
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj5EEEEC2ERKS7_SA_PKS4_RSB_(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %7, align 4, !tbaa !6939
  store i8 %i.q, ptr %i.a, align 1, !tbaa !1126
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  switch i8 %i.s, label %bb.u [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  %i.w = icmp eq i8 %i.v, 5
  br i1 %i.w, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.v, %bb.n, %bb.l, %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i, ptr %8, align 4
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !1126
  %i.ad = icmp eq i8 %i.ac, 5
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i93 = load i32, ptr %i.ae, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i93, ptr %8, align 4, !tbaa !1131
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ah

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.t
  %.pr = load i8, ptr %i.a, align 1, !tbaa !1126
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.j, %bb.m
  %i.ah = phi i8 [ %.pr, %thread-pre-split ], [ %i.s, %bb.j ], [ %i.v, %bb.m ]
  %i.ai = icmp eq i8 %i.ah, 6
  br i1 %i.ai, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = zext i32 %2 to i64                      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.w unwind label %bb.o       ; 9 uses

bb.w:                                             ; preds = %bb.v
  %i.am = icmp eq i32 %2, 0
  br i1 %i.am, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %bb.w
  %i.an = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11 = icmp ult i8 %i.an, 3
  br i1 %or.cond11, label %.preheader.preheader, label %bb.aa

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread: ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 range(i64 0, 17179869181) %i.ak, i1 false), !tbaa !6423
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11148 = icmp ult i8 %i.ao, 3
  br i1 %or.cond11148, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %.preheader.preheader
  %.013.i.i = phi ptr [ %3, %.preheader.preheader ], [ %i.aw, %bb.x ] ; 5 uses
  %.0712.i.i = phi i32 [ 0, %.preheader.preheader ], [ %i.ax, %bb.x ] ; 5 uses
  %i.ap = load i64, ptr %.013.i.i, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i94, label %.preheader.1, label %.loopexit120

.preheader.1:                                     ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i94.1, label %.preheader.2, label %.loopexit120.split.loop.exit193

.preheader.2:                                     ; preds = %.preheader.1
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94.2 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i94.2, label %.preheader.3, label %.loopexit120.split.loop.exit190

.preheader.3:                                     ; preds = %.preheader.2
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i94.3, label %bb.x, label %.loopexit120.split.loop.exit

bb.x:                                             ; preds = %.preheader.3
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.ax = add nuw nsw i32 %.0712.i.i, 4           ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.ax, 512
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit120.split.loop.exit:                     ; preds = %.preheader.3
  %i.ay = or disjoint i32 %.0712.i.i, 3
  br label %.loopexit120

.loopexit120.split.loop.exit190:                  ; preds = %.preheader.2
  %i.az = or disjoint i32 %.0712.i.i, 2
  br label %.loopexit120

.loopexit120.split.loop.exit193:                  ; preds = %.preheader.1
  %i.ba = or disjoint i32 %.0712.i.i, 1
  br label %.loopexit120

.loopexit120:                                     ; preds = %.preheader, %.loopexit120.split.loop.exit193, %.loopexit120.split.loop.exit190, %.loopexit120.split.loop.exit
  %.0712.i.i.lcssa = phi i32 [ %i.ba, %.loopexit120.split.loop.exit193 ], [ %i.az, %.loopexit120.split.loop.exit190 ], [ %i.ay, %.loopexit120.split.loop.exit ], [ %.0712.i.i, %.preheader ]
  %.lcssa181 = phi i64 [ %i.ar, %.loopexit120.split.loop.exit193 ], [ %i.at, %.loopexit120.split.loop.exit190 ], [ %i.av, %.loopexit120.split.loop.exit ], [ %i.ap, %.preheader ]
  %i.bb = shl nuw nsw i32 %.0712.i.i.lcssa, 6
  %i.bc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa181, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd            ; 2 uses
  %.not119126 = icmp eq i32 %i.be, 32768
  br i1 %.not119126, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.loopexit120, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit
  %.073128 = phi i32 [ %i.ce, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ 0, %.loopexit120 ] ; 3 uses
  %.sroa.0.0127 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.be, %.loopexit120 ] ; 2 uses
  %i.bf = zext i32 %.sroa.0.0127 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bh = zext i32 %.073128 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bh
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !1131
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !1131
  %i.bk = add i32 %.sroa.0.0127, 1                ; 4 uses
  %i.bl = lshr i32 %i.bk, 6                       ; 3 uses
  %i.bm = icmp ugt i32 %i.bk, 32767
  br i1 %i.bm, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph130
  %i.bn = and i32 %i.bk, 63
  %i.bo = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1156 ; 2 uses
  %i.br = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bq, %i.bs
  %.not.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i, label %bb.z, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit

bb.z:                                             ; preds = %bb.y
  %i.bu = shl nsw i64 -1, %i.br
  %i.bv = and i64 %i.bq, %i.bu                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %exitcond.not.i.i.i169 = icmp eq i32 %i.bl, 511
  br i1 %exitcond.not.i.i.i169, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, label %.lr.ph171

.lr.ph.i.i.i:                                     ; preds = %.lr.ph171
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 511
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, label %.lr.ph171, !llvm.loop !41

.lr.ph171:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i170 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i170, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !41

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph171
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.z
  %.016.lcssa.i.i.i = phi i32 [ %i.bl, %bb.z ], [ %i.by, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bx, %.critedge.loopexit.i.i.i ]
  %i.bz = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.ca = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread: ; preds = %.lr.ph130, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.cd = add i32 %.073128, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.y
  %.118.i.i.i = phi i32 [ %i.cc, %.critedge.i.i.i ], [ %i.bk, %bb.y ] ; 2 uses
  %i.ce = add i32 %.073128, 1                     ; 2 uses
  %.not119 = icmp eq i32 %.118.i.i.i, 32768
  br i1 %.not119, label %.loopexit, label %.lr.ph130, !llvm.loop !20425

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %9, i8 0, i64 4096, i1 false), !tbaa !1156
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %9, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = load i32, ptr %i.cf, align 4
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.af, %bb.aa
  %.174.lcssa = phi i32 [ 0, %bb.aa ], [ %.275, %bb.af ]
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(4096) %9, i64 noundef 4096)
          to label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit unwind label %bb.ag ; 0 uses

bb.ab:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.174124 = phi i32 [ 0, %.lr.ph ], [ %.275, %bb.af ] ; 4 uses
  %i.ci = lshr i64 %indvars.iv, 6
  %i.cj = and i64 %i.ci, 67108863                 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156
  %i.cm = and i64 %indvars.iv, 63
  %i.cn = shl nuw i64 1, %i.cm                    ; 2 uses
  %i.co = and i64 %i.cl, %i.cn
  %.not118 = icmp eq i64 %i.co, 0
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br i1 %.not118, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = zext i32 %.174124 to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cq
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !1131
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !1131
  %i.ct = add i32 %.174124, 1
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr %i.cp, align 4, !tbaa !6423
  %i.cv = icmp eq i32 %i.cu, %i.cg
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cj ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1156
  %i.cy = or i64 %i.cx, %i.cn
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !1156
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.275 = phi i32 [ %i.ct, %bb.ac ], [ %.174124, %bb.ae ], [ %.174124, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !20426

_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ah

.loopexit:                                        ; preds = %bb.x, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, %.loopexit120, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit, %bb.u
  %.sroa.0108.1 = phi ptr [ null, %bb.u ], [ %i.al, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit ], [ %i.al, %.loopexit120 ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread ], [ %i.al, %bb.x ]
  %.376 = phi i32 [ %2, %bb.u ], [ %.174.lcssa, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit ], [ 0, %.loopexit120 ], [ %i.ce, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.cd, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread ], [ 0, %bb.x ]
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj5EEEEC2ERKS7_SA_PKS4_RSB_:bb.a
bb.s:                                             ; preds = %bb.r
  store i8 5, ptr %0, align 4, !tbaa !6939
  br label %.thread42

bb.t:                                             ; preds = %bb.q
  %i.br = icmp eq i32 %i.bp, %i.bm
  br i1 %i.br, label %.thread41, label %bb.w

.thread41:                                        ; preds = %bb.r, %bb.t
  %i.bs = sub i32 0, %i.bn
  %i.bt = icmp eq i32 %i.bm, %i.bs
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread41
  store i8 3, ptr %0, align 4, !tbaa !6939
  br label %.thread42

bb.v:                                             ; preds = %.thread41
  store i8 4, ptr %0, align 4, !tbaa !6939
  br label %.thread42

bb.w:                                             ; preds = %bb.t
  %i.bu = sub i32 0, %i.bm
  %i.bv = icmp eq i32 %i.bp, %i.bu
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 3, ptr %0, align 4, !tbaa !6939
  store i32 %i.bp, ptr %.ptr28, align 4, !tbaa !1131
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !1131
  br label %.thread42

bb.y:                                             ; preds = %bb.w
  store i32 %i.bp, ptr %.ptr28, align 4, !tbaa !1131
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !1131
  store i8 4, ptr %0, align 4, !tbaa !6939
  br label %.thread42

bb.z:                                             ; preds = %.critedge
  %i.bw = icmp sgt i32 %.2, 2
  br i1 %i.bw, label %bb.aa, label %.thread42

bb.aa:                                            ; preds = %bb.z
  store i8 6, ptr %0, align 4, !tbaa !6939
  br label %.thread42

.thread42:                                        ; preds = %.thread68, %bb.v, %bb.u, %bb.x, %bb.y, %bb.s, %bb.aa, %bb.z, %bb.m, %bb.p, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SE_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %6 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::io::MaskCompress.4925", align 4 ; 10 uses
  %8 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask.180", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1113
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e) ; 4 uses
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 6, ptr %i.a, align 1, !tbaa !1126
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.aj unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %.invoke139, %.invoke138, %.invoke, %bb.b
  %.sroa.0102.0 = phi ptr [ null, %bb.b ], [ %.sroa.0102.4, %.invoke139 ], [ %.sroa.0102.4, %.invoke138 ], [ %.sroa.0102.4, %.invoke ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !tbaa !1131
  %i.j = load ptr, ptr %0, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not78 = icmp eq ptr %i.n, null
  br i1 %.not78, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1131
  store i32 %i.o, ptr %6, align 4, !tbaa !1131
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj4EEEEC2ERKS7_SA_PKS4_RSB_(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %7, align 4, !tbaa !6941
  store i8 %i.q, ptr %i.a, align 1, !tbaa !1126
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  switch i8 %i.s, label %bb.u [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  %i.w = icmp eq i8 %i.v, 5
  br i1 %i.w, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.v, %bb.n, %bb.l, %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i, ptr %8, align 4
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !1126
  %i.ad = icmp eq i8 %i.ac, 5
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i88 = load i32, ptr %i.ae, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i88, ptr %8, align 4, !tbaa !1131
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ah

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.t
  %.pr = load i8, ptr %i.a, align 1, !tbaa !1126
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.j, %bb.m
  %i.ah = phi i8 [ %.pr, %thread-pre-split ], [ %i.s, %bb.j ], [ %i.v, %bb.m ]
  %i.ai = icmp eq i8 %i.ah, 6
  br i1 %i.ai, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = zext i32 %2 to i64                      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.w unwind label %bb.o       ; 8 uses

bb.w:                                             ; preds = %bb.v
  %i.am = icmp eq i32 %2, 0
  br i1 %i.am, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %bb.w
  %i.an = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11 = icmp ult i8 %i.an, 3
  br i1 %or.cond11, label %bb.x, label %bb.aa

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread: ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 range(i64 0, 17179869181) %i.ak, i1 false), !tbaa !6423
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11132 = icmp ult i8 %i.ao, 3
  br i1 %or.cond11132, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  %i.ap = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %3) ; 2 uses
  %.not113116 = icmp eq i32 %i.ap, 4096
  br i1 %.not113116, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.x, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit
  %.071118 = phi i32 [ %i.bp, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ 0, %bb.x ] ; 3 uses
  %.sroa.0.0117 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ %i.ap, %bb.x ] ; 2 uses
  %i.aq = zext i32 %.sroa.0.0117 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.as = zext i32 %.071118 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !1131
  store i32 %i.au, ptr %i.at, align 4, !tbaa !1131
  %i.av = add i32 %.sroa.0.0117, 1                ; 4 uses
  %i.aw = lshr i32 %i.av, 6                       ; 3 uses
  %i.ax = icmp ugt i32 %i.av, 4095
  br i1 %i.ax, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph120
  %i.ay = and i32 %i.av, 63
  %i.az = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1156 ; 2 uses
  %i.bc = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %bb.z, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

bb.z:                                             ; preds = %bb.y
  %i.bf = shl nsw i64 -1, %i.bc
  %i.bg = and i64 %i.bb, %i.bf                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %exitcond.not.i.i.i145 = icmp eq i32 %i.aw, 63
  br i1 %exitcond.not.i.i.i145, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph147

.lr.ph.i.i.i:                                     ; preds = %.lr.ph147
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph147, !llvm.loop !42

.lr.ph147:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i146 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i146, 1 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !42

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph147
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.z
  %.016.lcssa.i.i.i = phi i32 [ %i.aw, %bb.z ], [ %i.bj, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.bg, %bb.z ], [ %i.bi, %.critedge.loopexit.i.i.i ]
  %i.bk = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.bl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread: ; preds = %.lr.ph120, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bo = add i32 %.071118, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.y
  %.118.i.i.i = phi i32 [ %i.bn, %.critedge.i.i.i ], [ %i.av, %bb.y ] ; 2 uses
  %i.bp = add i32 %.071118, 1                     ; 2 uses
  %.not113 = icmp eq i32 %.118.i.i.i, 4096
  br i1 %.not113, label %.loopexit, label %.lr.ph120, !llvm.loop !20433

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %9, i8 0, i64 512, i1 false), !tbaa !1156
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %9, i8 0, i64 512, i1 false), !tbaa !1156
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = load i32, ptr %i.bq, align 4
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.af, %bb.aa
  %.172.lcssa = phi i32 [ 0, %bb.aa ], [ %.273, %bb.af ]
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(512) %9, i64 noundef 512)
          to label %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit unwind label %bb.ag ; 0 uses

bb.ab:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.172114 = phi i32 [ 0, %.lr.ph ], [ %.273, %bb.af ] ; 4 uses
  %i.bt = lshr i64 %indvars.iv, 6
  %i.bu = and i64 %i.bt, 67108863                 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1156
  %i.bx = and i64 %indvars.iv, 63
  %i.by = shl nuw i64 1, %i.bx                    ; 2 uses
  %i.bz = and i64 %i.bw, %i.by
  %.not112 = icmp eq i64 %i.bz, 0
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br i1 %.not112, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = zext i32 %.172114 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cb
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !1131
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !1131
  %i.ce = add i32 %.172114, 1
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !6423
  %i.cg = icmp eq i32 %i.cf, %i.br
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bu ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1156
  %i.cj = or i64 %i.ci, %i.by
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !1156
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.273 = phi i32 [ %i.ce, %bb.ac ], [ %.172114, %bb.ae ], [ %.172114, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !20434

_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ah

.loopexit:                                        ; preds = %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, %bb.x, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit, %bb.u
  %.sroa.0102.1 = phi ptr [ null, %bb.u ], [ %i.al, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ %i.al, %bb.x ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  %.374 = phi i32 [ %2, %bb.u ], [ %.172.lcssa, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ 0, %bb.x ], [ %i.bo, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.bp, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag, %bb.s, %bb.o
  %.sroa.0102.2 = phi ptr [ %i.al, %bb.ag ], [ null, %bb.o ], [ null, %bb.s ]
  %.pn80 = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.z, %bb.o ], [ %i.ag, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.g
  %.sroa.0102.3 = phi ptr [ %.sroa.0102.2, %bb.ah ], [ null, %bb.g ]
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.ah ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ao

bb.aj:                                            ; preds = %bb.b, %.loopexit
  %.sroa.0102.4 = phi ptr [ null, %bb.b ], [ %.sroa.0102.1, %.loopexit ] ; 7 uses
  %.475 = phi i32 [ %2, %bb.b ], [ %.374, %.loopexit ] ; 3 uses
  %.not85 = icmp eq ptr %.sroa.0102.4, null
  %i.cl = select i1 %.not85, ptr %1, ptr %.sroa.0102.4 ; 3 uses
  %i.cm = and i32 %i.f, 4
  %.not.i.i89 = icmp eq i32 %i.cm, 0              ; 2 uses
  br i1 %5, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not.i.i89, label %bb.al, label %.invoke139

bb.al:                                            ; preds = %bb.ak
  %i.cn = and i32 %i.f, 1
  %.not10.i.i = icmp eq i32 %i.cn, 0
  %i.co = zext i32 %.475 to i64
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 2 uses
  br i1 %.not10.i.i, label %.invoke, label %.invoke138

bb.am:                                            ; preds = %bb.aj
  br i1 %.not.i.i89, label %bb.an, label %.invoke139

.invoke139:                                       ; preds = %bb.am, %bb.ak
  %i.cq = zext i32 %.475 to i64
  invoke void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cl, i64 noundef 4, i64 noundef %i.cq)
          to label %_ZN7openvdb5v13_02io10HalfWriterILb0ENS0_10PointIndexIjLj0EEEE5writeERSoPKS4_jj.exit unwind label %bb.c

bb.an:                                            ; preds = %bb.am
  %i.cr = and i32 %i.f, 1
  %.not10.i = icmp eq i32 %i.cr, 0
  %i.cs = zext i32 %.475 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  br i1 %.not10.i, label %.invoke, label %.invoke138

.invoke138:                                       ; preds = %bb.an, %bb.al
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12writeBuffersERSob:bb.a
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1156 ; 2 uses
  %i.am = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEEppEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ap = shl nsw i64 -1, %i.am
  %i.aq = and i64 %i.al, %i.ap                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %exitcond.not.i.i.i.i10 = icmp eq i32 %i.ag, 63
  br i1 %exitcond.not.i.i.i.i10, label %._crit_edge, label %.lr.ph12

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph12
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph12, !llvm.loop !42

.lr.ph12:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i11 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i11, 1 ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !42

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph12
  %i.at = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.at, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.aq, %bb.d ], [ %i.as, %.critedge.loopexit.i.i.i.i ]
  %i.au = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.av = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEEppEv.exit: ; preds = %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ax, %.critedge.i.i.i.i ], [ %i.af, %bb.c ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.e, align 8, !tbaa !1348
  %.not = icmp eq i32 %.118.i.i.i.i, 4096
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20567
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj3EEEEEvRSoPKT_jRKT0_SE_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %6 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::io::MaskCompress.4941", align 4 ; 10 uses
  %8 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask.188", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1113
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e) ; 4 uses
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 6, ptr %i.a, align 1, !tbaa !1126
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.aq unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %.invoke153, %.invoke152, %.invoke, %bb.b
  %.sroa.0106.0 = phi ptr [ null, %bb.b ], [ %.sroa.0106.4, %.invoke153 ], [ %.sroa.0106.4, %.invoke152 ], [ %.sroa.0106.4, %.invoke ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !tbaa !1131
  %i.j = load ptr, ptr %0, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not79 = icmp eq ptr %i.n, null
  br i1 %.not79, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1131
  store i32 %i.o, ptr %6, align 4, !tbaa !1131
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj3EEEEC2ERKS7_SA_PKS4_RSB_(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %7, align 4, !tbaa !6943
  store i8 %i.q, ptr %i.a, align 1, !tbaa !1126
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  switch i8 %i.s, label %bb.u [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  %i.w = icmp eq i8 %i.v, 5
  br i1 %i.w, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.v, %bb.n, %bb.l, %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i, ptr %8, align 4
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !1126
  %i.ad = icmp eq i8 %i.ac, 5
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i91 = load i32, ptr %i.ae, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i91, ptr %8, align 4, !tbaa !1131
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ao

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.t
  %.pr = load i8, ptr %i.a, align 1, !tbaa !1126
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.j, %bb.m
  %i.ah = phi i8 [ %.pr, %thread-pre-split ], [ %i.s, %bb.j ], [ %i.v, %bb.m ]
  %i.ai = icmp eq i8 %i.ah, 6
  br i1 %i.ai, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = zext i32 %2 to i64                      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.w unwind label %bb.o       ; 8 uses

bb.w:                                             ; preds = %bb.v
  %i.am = icmp eq i32 %2, 0
  br i1 %i.am, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %bb.w
  %i.an = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11 = icmp ult i8 %i.an, 3
  br i1 %or.cond11, label %bb.x, label %bb.ah

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread: ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 range(i64 0, 17179869181) %i.ak, i1 false), !tbaa !6423
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11145 = icmp ult i8 %i.ao, 3
  br i1 %or.cond11145, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  %i.ap = load i64, ptr %3, align 8, !tbaa !1156  ; 2 uses
  %.not.i.i92 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i92, label %bb.y, label %.lr.ph124.preheader

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1156 ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.1.i.i, label %bb.z, label %.lr.ph124.preheader

bb.z:                                             ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1156 ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.2.i.i, label %bb.aa, label %.lr.ph124.preheader

bb.aa:                                            ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1156 ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.3.i.i, label %bb.ab, label %.lr.ph124.preheader

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1156 ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.4.i.i, label %bb.ac, label %.lr.ph124.preheader

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1156 ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.5.i.i, label %bb.ad, label %.lr.ph124.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1156 ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.6.i.i, label %bb.ae, label %.lr.ph124.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1156 ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.7.i.i, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.be = phi i64 [ %i.ap, %bb.x ], [ %i.ar, %bb.y ], [ %i.at, %bb.z ], [ %i.av, %bb.aa ], [ %i.ax, %bb.ab ], [ %i.az, %bb.ac ], [ %i.bb, %bb.ad ], [ %i.bd, %bb.ae ]
  %.0712.lcssa.i.i = phi i32 [ 0, %bb.x ], [ 64, %bb.y ], [ 128, %bb.z ], [ 192, %bb.aa ], [ 256, %bb.ab ], [ 320, %bb.ac ], [ 384, %bb.ad ], [ 448, %bb.ae ]
  %i.bf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.be, i1 true)
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = or disjoint i32 %.0712.lcssa.i.i, %i.bg
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit
  %.072122 = phi i32 [ %i.ct, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit ], [ 0, %.lr.ph124.preheader ] ; 3 uses
  %.sroa.0.0121 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit ], [ %i.bh, %.lr.ph124.preheader ] ; 2 uses
  %i.bi = zext i32 %.sroa.0.0121 to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = zext i32 %.072122 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bk
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !1131
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !1131
  %i.bn = add i32 %.sroa.0.0121, 1                ; 4 uses
  %i.bo = lshr i32 %i.bn, 6                       ; 3 uses
  %i.bp = icmp ugt i32 %i.bn, 511
  br i1 %i.bp, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph124
  %i.bq = and i32 %i.bn, 63
  %i.br = zext nneg i32 %i.bo to i64              ; 8 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1156 ; 2 uses
  %i.bu = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bt, %i.bv
  %.not.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.ag, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit

bb.ag:                                            ; preds = %bb.af
  %i.bx = shl nsw i64 -1, %i.bu
  %i.by = and i64 %i.bt, %i.bx                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ag
  %exitcond.not.i.i.i159 = icmp eq i32 %i.bo, 7
  br i1 %exitcond.not.i.i.i159, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161

.lr.ph.i.i.i:                                     ; preds = %.lr.ph161
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161.1

.lr.ph161.1:                                      ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %i.br, 2 ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.1
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %i.ca, 0
  br i1 %.not22.i.i.i.1, label %.lr.ph.i.i.i.1, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph161.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.1, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161.2

.lr.ph161.2:                                      ; preds = %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %i.br, 3 ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.2
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.2 = icmp eq i64 %i.cc, 0
  br i1 %.not22.i.i.i.2, label %.lr.ph.i.i.i.2, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph161.2
  %exitcond.not.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.2, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161.3

.lr.ph161.3:                                      ; preds = %.lr.ph.i.i.i.2
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %i.br, 4 ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.3
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.3 = icmp eq i64 %i.ce, 0
  br i1 %.not22.i.i.i.3, label %.lr.ph.i.i.i.3, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph161.3
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.3, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161.4

.lr.ph161.4:                                      ; preds = %.lr.ph.i.i.i.3
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %i.br, 5 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.4
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.4 = icmp eq i64 %i.cg, 0
  br i1 %.not22.i.i.i.4, label %.lr.ph.i.i.i.4, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph161.4
  %exitcond.not.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.4, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161.5

.lr.ph161.5:                                      ; preds = %.lr.ph.i.i.i.4
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %i.br, 6 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.5
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.5 = icmp eq i64 %i.ci, 0
  br i1 %.not22.i.i.i.5, label %.lr.ph.i.i.i.5, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph161.5
  %exitcond.not.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.5, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.lr.ph161.6

.lr.ph161.6:                                      ; preds = %.lr.ph.i.i.i.5
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %i.br, 7 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.6
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.6 = icmp eq i64 %i.ck, 0
  br i1 %.not22.i.i.i.6, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.lr.ph161:                                        ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i = add nuw nsw i64 %i.br, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !57

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph161.6, %.lr.ph161.5, %.lr.ph161.4, %.lr.ph161.3, %.lr.ph161.2, %.lr.ph161.1, %.lr.ph161
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph161 ], [ %indvars.iv.next.i.i.i.1, %.lr.ph161.1 ], [ %indvars.iv.next.i.i.i.2, %.lr.ph161.2 ], [ %indvars.iv.next.i.i.i.3, %.lr.ph161.3 ], [ %indvars.iv.next.i.i.i.4, %.lr.ph161.4 ], [ %indvars.iv.next.i.i.i.5, %.lr.ph161.5 ], [ %indvars.iv.next.i.i.i.6, %.lr.ph161.6 ]
  %.lcssa = phi i64 [ %i.cm, %.lr.ph161 ], [ %i.ca, %.lr.ph161.1 ], [ %i.cc, %.lr.ph161.2 ], [ %i.ce, %.lr.ph161.3 ], [ %i.cg, %.lr.ph161.4 ], [ %i.ci, %.lr.ph161.5 ], [ %i.ck, %.lr.ph161.6 ]
  %i.cn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.ag
  %.016.lcssa.i.i.i = phi i32 [ %i.bo, %bb.ag ], [ %i.cn, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.by, %bb.ag ], [ %.lcssa, %.critedge.loopexit.i.i.i ]
  %i.co = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.cp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = or disjoint i32 %i.co, %i.cq
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit.thread: ; preds = %.lr.ph124, %.lr.ph.i.i.i.preheader, %.lr.ph161.6, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5
  %i.cs = add i32 %.072122, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.af
  %.118.i.i.i = phi i32 [ %i.cr, %.critedge.i.i.i ], [ %i.bn, %bb.af ] ; 2 uses
  %i.ct = add i32 %.072122, 1                     ; 2 uses
  %.not117 = icmp eq i32 %.118.i.i.i, 512
  br i1 %.not117, label %.loopexit, label %.lr.ph124, !llvm.loop !20569

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !1156
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !1156
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b:bb.a
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %.not167 = icmp eq ptr %i.av, null
  %or.cond196 = select i1 %i.r, i1 true, i1 %.not167
  br i1 %or.cond196, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !1126
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.n, %bb.t
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1131
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0153.0 = phi i32 [ 0, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.0153.0, ptr %9, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !1126 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.thread191, label %bb.z

.thread191:                                       ; preds = %bb.y
  store i32 %.sroa.0153.0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bp = sub i32 0, %.sroa.0153.0
  store i32 %i.bp, ptr %10, align 4
  switch i8 %i.bn, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread158 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread159, %bb.ad, %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 5
  br i1 %i.bu, label %bb.af, label %.thread193

.thread158:                                       ; preds = %bb.ab
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %.thread159, label %bb.ag

.thread159:                                       ; preds = %.thread158
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread159._crit_edge unwind label %bb.ac ; 0 uses

.thread159._crit_edge:                            ; preds = %.thread159
  %.pre174 = load i8, ptr %i.b, align 1, !tbaa !1126
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 4)
          to label %.thread160 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread159._crit_edge, %bb.z, %.thread158
  %i.bz = phi i8 [ %.pre174, %.thread159._crit_edge ], [ %i.bv, %.thread158 ], [ %i.bn, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.ca = add i8 %i.bz, -3
  %or.cond13 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

.thread193:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.cb = add i8 %i.bt, -3
  %or.cond13194 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13194, label %.thread162, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

.thread160:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %11, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !1126
  %i.cd = add i8 %i.cc, -3
  %or.cond13161 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13161, label %.thread162, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread162, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4096, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread162, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit

.thread162:                                       ; preds = %.thread193, %.thread160, %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(4096) %11, i64 noundef 4096)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit: ; preds = %.thread193, %.thread191, %.thread162, %.thread160, %bb.ai, %bb.ag
  %i.ch = load i8, ptr %i.b, align 1
  %i.ci = icmp ne i8 %i.ch, 6
  %or.cond16 = select i1 %i.q, i1 %i.ci, i1 false
  br i1 %or.cond16, label %vector.body, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

vector.body:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.cp, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ]
  %vec.phi203 = phi <2 x i32> [ %i.cq, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ]
  %i.cj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1156
  %wide.load204 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !1156
  %i.cl = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load204)
  %i.cn = trunc nuw nsw <2 x i64> %i.cl to <2 x i32>
  %i.co = trunc nuw nsw <2 x i64> %i.cm to <2 x i32>
  %i.cp = add <2 x i32> %vec.phi, %i.cn           ; 2 uses
  %i.cq = add <2 x i32> %vec.phi203, %i.co        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, 512
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !21625

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 5 uses
  br i1 %i.r, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ak:                                            ; preds = %middle.block
  %.not106 = icmp eq i32 %i.cs, %2
  br i1 %.not106, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #32
          to label %bb.am unwind label %.thread163 ; 5 uses

.thread163:                                       ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.cx = icmp eq i32 %i.cs, 0
  br i1 %i.cx, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit: ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 range(i64 0, 17179869181) %i.cu, i1 false), !tbaa !7038
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.an:                                            ; preds = %.invoke202, %.invoke200, %.invoke199, %.invoke198, %.invoke197
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i123 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit, %bb.am, %middle.block, %bb.ak, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.ak ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.ak ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.ak ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj5EE4loadERSi.exit ], [ %i.cs, %middle.block ], [ 0, %bb.am ], [ %i.cs, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %i.cz = select i1 %i.r, ptr %.085, ptr null     ; 3 uses
  %i.da = icmp eq ptr %i.cz, null                 ; 3 uses
  %i.db = and i32 %i.o, 5
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = icmp ne ptr %i.av, null
  %i.de = and i1 %i.dc, %i.dd
  %or.cond3.i.i = and i1 %i.da, %i.de             ; 2 uses
  br i1 %4, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke202, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.df = and i32 %i.o, 4
  %.not.i.i124 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i124, label %bb.aq, label %.invoke200

bb.aq:                                            ; preds = %bb.ap
  %i.dg = and i32 %i.o, 1
  %.not27.i.i = icmp eq i32 %i.dg, 0
  %i.dh = zext i32 %.084 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  br i1 %.not27.i.i, label %bb.ar, label %.invoke199

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.da, label %.invoke198, label %.invoke197

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke202, label %bb.at

.invoke202:                                       ; preds = %bb.as, %bb.ao
  %i.dj = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke198 unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  %i.dk = and i32 %i.o, 4
  %.not.i131 = icmp eq i32 %i.dk, 0
  br i1 %.not.i131, label %bb.au, label %.invoke200

.invoke200:                                       ; preds = %bb.at, %bb.ap
  %i.dl = zext i32 %.084 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dm)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.dn = and i32 %i.o, 1
  %.not27.i = icmp eq i32 %i.dn, 0
  %i.do = zext i32 %.084 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 3 uses
  br i1 %.not27.i, label %bb.av, label %.invoke199

.invoke199:                                       ; preds = %bb.au, %bb.aq
  %i.dq = phi i64 [ %i.di, %bb.aq ], [ %i.dp, %bb.au ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dq)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  br i1 %i.da, label %.invoke198, label %.invoke197

.invoke198:                                       ; preds = %.invoke202, %bb.av, %bb.ar
  %i.dr = phi i64 [ %i.dj, %.invoke202 ], [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dr, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

.invoke197:                                       ; preds = %bb.av, %bb.ar
  %i.dt = phi i64 [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.du = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.dt)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke200, %.invoke199, %.invoke198, %.invoke197
  %.not115 = icmp ne i32 %.084, %2
  %i.dv = and i1 %i.q, %.not115
  %or.cond117.not = and i1 %i.r, %i.dv
  br i1 %or.cond117.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.val = load i32, ptr %9, align 4
  %.val116 = load i32, ptr %10, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 4 uses
  %.0172 = phi i32 [ 0, %.preheader ], [ %.1, %bb.az ] ; 3 uses
  %i.dw = lshr i64 %indvars.iv, 6
  %i.dx = and i64 %i.dw, 67108863                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156
  %i.ea = and i64 %indvars.iv, 63
  %i.eb = shl nuw i64 1, %i.ea                    ; 2 uses
  %i.ec = and i64 %i.dz, %i.eb
  %.not168 = icmp eq i64 %i.ec, 0
  br i1 %.not168, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = zext i32 %.0172 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !1131
  %i.eg = add i32 %.0172, 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dx
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1156
  %i.ej = and i64 %i.ei, %i.eb
  %.not169 = icmp eq i64 %i.ej, 0
  %i.ek = select i1 %.not169, i32 %.val116, i32 %.val
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.sink = phi i32 [ %i.ek, %bb.ay ], [ %i.ef, %bb.ax ]
  %.1 = phi i32 [ %.0172, %bb.ay ], [ %i.eg, %bb.ax ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.el, align 4, !tbaa !1131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond.not, label %.loopexit, label %bb.aw, !llvm.loop !21626

.loopexit:                                        ; preds = %bb.az, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i138 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit140, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i139

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i139: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit140

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit140: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i141 = icmp eq ptr %i.au, null
  br i1 %.not.i.i141, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit140
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.em, align 8, !tbaa !1115
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !1116
  %i.er = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  %i.eu = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145

bb.bc:                                            ; preds = %bb.ba
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i142 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i142, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143

bb.be:                                            ; preds = %bb.bc
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i144 = phi i32 [ %i.ep, %bb.bd ], [ %i.ez, %bb.be ]
  %i.fa = icmp eq i32 %.0.i.i.i.i144, 1
  br i1 %i.fa, label %bb.bf, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145, !prof !1183

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit145: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit140, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i143, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i146 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i146, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj4EEEEEvRSiPT_jRKT0_b:bb.a
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %.not165 = icmp eq ptr %i.av, null
  %or.cond194 = select i1 %i.r, i1 true, i1 %.not165
  br i1 %or.cond194, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !1126
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.n, %bb.t
  %i.bg = load ptr, ptr %0, align 8, !tbaa !1113
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1131
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0151.0 = phi i32 [ 0, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.0151.0, ptr %9, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !1126 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.thread189, label %bb.z

.thread189:                                       ; preds = %bb.y
  store i32 %.sroa.0151.0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  br label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bp = sub i32 0, %.sroa.0151.0
  store i32 %i.bp, ptr %10, align 4
  switch i8 %i.bn, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread156 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread157, %bb.ad, %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 5
  br i1 %i.bu, label %bb.af, label %.thread191

.thread156:                                       ; preds = %bb.ab
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !1126 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %.thread157, label %bb.ag

.thread157:                                       ; preds = %.thread156
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread157._crit_edge unwind label %bb.ac ; 0 uses

.thread157._crit_edge:                            ; preds = %.thread157
  %.pre172 = load i8, ptr %i.b, align 1, !tbaa !1126
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 4)
          to label %.thread158 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread157._crit_edge, %.thread156, %bb.z
  %i.bz = phi i8 [ %.pre172, %.thread157._crit_edge ], [ %i.bv, %.thread156 ], [ %i.bn, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  %i.ca = add i8 %i.bz, -3
  %or.cond13 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

.thread191:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  %i.cb = add i8 %i.bt, -3
  %or.cond13192 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13192, label %.thread160, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

.thread158:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %11, i8 0, i64 512, i1 false), !tbaa !1156
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !1126
  %i.cd = add i8 %i.cc, -3
  %or.cond13159 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13159, label %.thread160, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread160, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 512, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread160, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit

.thread160:                                       ; preds = %.thread191, %.thread158, %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %11, i64 noundef 512)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit: ; preds = %.thread191, %.thread189, %.thread160, %.thread158, %bb.ai, %bb.ag
  %i.ch = load i8, ptr %i.b, align 1
  %i.ci = icmp ne i8 %i.ch, 6
  %or.cond16 = select i1 %i.q, i1 %i.ci, i1 false
  br i1 %or.cond16, label %vector.body, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

vector.body:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.cp, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ]
  %vec.phi201 = phi <2 x i32> [ %i.cq, %vector.body ], [ zeroinitializer, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ]
  %i.cj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1156
  %wide.load202 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !1156
  %i.cl = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.cn = trunc nuw nsw <2 x i64> %i.cl to <2 x i32>
  %i.co = trunc nuw nsw <2 x i64> %i.cm to <2 x i32>
  %i.cp = add <2 x i32> %vec.phi, %i.cn           ; 2 uses
  %i.cq = add <2 x i32> %vec.phi201, %i.co        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, 64
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !21632

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 5 uses
  br i1 %i.r, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.ak:                                            ; preds = %middle.block
  %.not105 = icmp eq i32 %i.cs, %2
  br i1 %.not105, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #32
          to label %bb.am unwind label %.thread161 ; 5 uses

.thread161:                                       ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.cx = icmp eq i32 %i.cs, 0
  br i1 %i.cx, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit: ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 range(i64 0, 17179869181) %i.cu, i1 false), !tbaa !7038
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

bb.an:                                            ; preds = %.invoke200, %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i121 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i121, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit, %bb.am, %middle.block, %bb.ak, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.ak ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.ak ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ], [ null, %middle.block ], [ %i.cv, %bb.am ], [ %i.cv, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.ak ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj4EE4loadERSi.exit ], [ %i.cs, %middle.block ], [ 0, %bb.am ], [ %i.cs, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.loopexit ] ; 4 uses
  %i.cz = select i1 %i.r, ptr %.085, ptr null     ; 3 uses
  %i.da = icmp eq ptr %i.cz, null                 ; 3 uses
  %i.db = and i32 %i.o, 5
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = icmp ne ptr %i.av, null
  %i.de = and i1 %i.dc, %i.dd
  %or.cond3.i.i = and i1 %i.da, %i.de             ; 2 uses
  br i1 %4, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.df = and i32 %i.o, 4
  %.not.i.i122 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i122, label %bb.aq, label %.invoke198

bb.aq:                                            ; preds = %bb.ap
  %i.dg = and i32 %i.o, 1
  %.not27.i.i = icmp eq i32 %i.dg, 0
  %i.dh = zext i32 %.084 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  br i1 %.not27.i.i, label %bb.ar, label %.invoke197

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.da, label %.invoke196, label %.invoke195

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke200, label %bb.at

.invoke200:                                       ; preds = %bb.as, %bb.ao
  %i.dj = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke196 unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  %i.dk = and i32 %i.o, 4
  %.not.i129 = icmp eq i32 %i.dk, 0
  br i1 %.not.i129, label %bb.au, label %.invoke198

.invoke198:                                       ; preds = %bb.at, %bb.ap
  %i.dl = zext i32 %.084 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dm)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.dn = and i32 %i.o, 1
  %.not27.i = icmp eq i32 %i.dn, 0
  %i.do = zext i32 %.084 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 3 uses
  br i1 %.not27.i, label %bb.av, label %.invoke197

.invoke197:                                       ; preds = %bb.au, %bb.aq
  %i.dq = phi i64 [ %i.di, %bb.aq ], [ %i.dp, %bb.au ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cz, i64 noundef %i.dq)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  br i1 %i.da, label %.invoke196, label %.invoke195

.invoke196:                                       ; preds = %.invoke200, %bb.av, %bb.ar
  %i.dr = phi i64 [ %i.dj, %.invoke200 ], [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dr, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

.invoke195:                                       ; preds = %bb.av, %bb.ar
  %i.dt = phi i64 [ %i.di, %bb.ar ], [ %i.dp, %bb.av ]
  %i.du = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.dt)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke198, %.invoke197, %.invoke196, %.invoke195
  %.not113 = icmp ne i32 %.084, %2
  %i.dv = and i1 %i.q, %.not113
  %or.cond115.not = and i1 %i.r, %i.dv
  br i1 %or.cond115.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.val = load i32, ptr %9, align 4
  %.val114 = load i32, ptr %10, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 4 uses
  %.0170 = phi i32 [ 0, %.preheader ], [ %.1, %bb.az ] ; 3 uses
  %i.dw = lshr i64 %indvars.iv, 6
  %i.dx = and i64 %i.dw, 67108863                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156
  %i.ea = and i64 %indvars.iv, 63
  %i.eb = shl nuw i64 1, %i.ea                    ; 2 uses
  %i.ec = and i64 %i.dz, %i.eb
  %.not166 = icmp eq i64 %i.ec, 0
  br i1 %.not166, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = zext i32 %.0170 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !1131
  %i.eg = add i32 %.0170, 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dx
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1156
  %i.ej = and i64 %i.ei, %i.eb
  %.not167 = icmp eq i64 %i.ej, 0
  %i.ek = select i1 %.not167, i32 %.val114, i32 %.val
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.sink = phi i32 [ %i.ek, %bb.ay ], [ %i.ef, %bb.ax ]
  %.1 = phi i32 [ %.0170, %bb.ay ], [ %i.eg, %bb.ax ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.el, align 4, !tbaa !1131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %.loopexit, label %bb.aw, !llvm.loop !21633

.loopexit:                                        ; preds = %bb.az, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_10PointIndexIjLj1EEEE4readERSiPS4_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i136 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit138, label %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i137

_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i137: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #35
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit138

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit138: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_010PointIndexIjLj1EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i139 = icmp eq ptr %i.au, null
  br i1 %.not.i.i139, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit138
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.em, align 8, !tbaa !1115
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !1116
  %i.er = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  %i.eu = load ptr, ptr %i.au, align 8, !tbaa !1113
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !60
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

bb.bc:                                            ; preds = %bb.ba
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i140 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i140, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

bb.be:                                            ; preds = %bb.bc
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i142 = phi i32 [ %i.ep, %bb.bd ], [ %i.ez, %bb.be ]
  %i.fa = icmp eq i32 %.0.i.i.i.i142, 1
  br i1 %i.fa, label %bb.bf, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, !prof !1183

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit138, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i144 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i144, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg
end_hunk_7
begin_hunk_8_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13writeTopologyERSob:.preheader.preheader
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1156 ; 2 uses
  %i.az = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bc = shl nsw i64 -1, %i.az
  %i.bd = and i64 %i.ay, %i.bc                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %exitcond.not.i.i.i.i54 = icmp eq i32 %i.at, 511
  br i1 %exitcond.not.i.i.i.i54, label %._crit_edge, label %.lr.ph56

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph56
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph56, !llvm.loop !41

.lr.ph56:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i55 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i55, 1 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !41

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph56
  %i.bg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.k
  %.016.lcssa.i.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.bg, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bd, %bb.k ], [ %i.bf, %.critedge.loopexit.i.i.i.i ]
  %i.bh = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.j, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bk, %.critedge.i.i.i.i ], [ %i.as, %bb.j ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ak, align 8, !tbaa !1360
  %.not = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21640
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj5EEEEEvRSoPKT_jRKT0_SE_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %6 = alloca %"struct.openvdb::v13_0::PointIndex.5013", align 4 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::io::MaskCompress.5495", align 4 ; 10 uses
  %8 = alloca %"struct.openvdb::v13_0::PointIndex.5013", align 4 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1113
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e) ; 4 uses
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 6, ptr %i.a, align 1, !tbaa !1126
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.aj unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %.invoke159, %.invoke158, %.invoke, %bb.b
  %.sroa.0108.0 = phi ptr [ null, %bb.b ], [ %.sroa.0108.4, %.invoke159 ], [ %.sroa.0108.4, %.invoke158 ], [ %.sroa.0108.4, %.invoke ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !tbaa !1131
  %i.j = load ptr, ptr %0, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not80 = icmp eq ptr %i.n, null
  br i1 %.not80, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1131
  store i32 %i.o, ptr %6, align 4, !tbaa !1131
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj5EEEEC2ERKS7_SA_PKS4_RSB_(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %7, align 4, !tbaa !7569
  store i8 %i.q, ptr %i.a, align 1, !tbaa !1126
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  switch i8 %i.s, label %bb.u [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  %i.w = icmp eq i8 %i.v, 5
  br i1 %i.w, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.v, %bb.n, %bb.l, %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i, ptr %8, align 4
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !1126
  %i.ad = icmp eq i8 %i.ac, 5
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i93 = load i32, ptr %i.ae, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i93, ptr %8, align 4, !tbaa !1131
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ah

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.t
  %.pr = load i8, ptr %i.a, align 1, !tbaa !1126
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.j, %bb.m
  %i.ah = phi i8 [ %.pr, %thread-pre-split ], [ %i.s, %bb.j ], [ %i.v, %bb.m ]
  %i.ai = icmp eq i8 %i.ah, 6
  br i1 %i.ai, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = zext i32 %2 to i64                      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.w unwind label %bb.o       ; 9 uses

bb.w:                                             ; preds = %bb.v
  %i.am = icmp eq i32 %2, 0
  br i1 %i.am, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %bb.w
  %i.an = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11 = icmp ult i8 %i.an, 3
  br i1 %or.cond11, label %.preheader.preheader, label %bb.aa

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread: ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 range(i64 0, 17179869181) %i.ak, i1 false), !tbaa !7038
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11148 = icmp ult i8 %i.ao, 3
  br i1 %or.cond11148, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %.preheader.preheader
  %.013.i.i = phi ptr [ %3, %.preheader.preheader ], [ %i.aw, %bb.x ] ; 5 uses
  %.0712.i.i = phi i32 [ 0, %.preheader.preheader ], [ %i.ax, %bb.x ] ; 5 uses
  %i.ap = load i64, ptr %.013.i.i, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i94, label %.preheader.1, label %.loopexit120

.preheader.1:                                     ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i94.1, label %.preheader.2, label %.loopexit120.split.loop.exit193

.preheader.2:                                     ; preds = %.preheader.1
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94.2 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i94.2, label %.preheader.3, label %.loopexit120.split.loop.exit190

.preheader.3:                                     ; preds = %.preheader.2
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i94.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i94.3, label %bb.x, label %.loopexit120.split.loop.exit

bb.x:                                             ; preds = %.preheader.3
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.ax = add nuw nsw i32 %.0712.i.i, 4           ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.ax, 512
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit120.split.loop.exit:                     ; preds = %.preheader.3
  %i.ay = or disjoint i32 %.0712.i.i, 3
  br label %.loopexit120

.loopexit120.split.loop.exit190:                  ; preds = %.preheader.2
  %i.az = or disjoint i32 %.0712.i.i, 2
  br label %.loopexit120

.loopexit120.split.loop.exit193:                  ; preds = %.preheader.1
  %i.ba = or disjoint i32 %.0712.i.i, 1
  br label %.loopexit120

.loopexit120:                                     ; preds = %.preheader, %.loopexit120.split.loop.exit193, %.loopexit120.split.loop.exit190, %.loopexit120.split.loop.exit
  %.0712.i.i.lcssa = phi i32 [ %i.ba, %.loopexit120.split.loop.exit193 ], [ %i.az, %.loopexit120.split.loop.exit190 ], [ %i.ay, %.loopexit120.split.loop.exit ], [ %.0712.i.i, %.preheader ]
  %.lcssa181 = phi i64 [ %i.ar, %.loopexit120.split.loop.exit193 ], [ %i.at, %.loopexit120.split.loop.exit190 ], [ %i.av, %.loopexit120.split.loop.exit ], [ %i.ap, %.preheader ]
  %i.bb = shl nuw nsw i32 %.0712.i.i.lcssa, 6
  %i.bc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa181, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd            ; 2 uses
  %.not119126 = icmp eq i32 %i.be, 32768
  br i1 %.not119126, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.loopexit120, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit
  %.073128 = phi i32 [ %i.ce, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ 0, %.loopexit120 ] ; 3 uses
  %.sroa.0.0127 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.be, %.loopexit120 ] ; 2 uses
  %i.bf = zext i32 %.sroa.0.0127 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bh = zext i32 %.073128 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bh
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !1131
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !1131
  %i.bk = add i32 %.sroa.0.0127, 1                ; 4 uses
  %i.bl = lshr i32 %i.bk, 6                       ; 3 uses
  %i.bm = icmp ugt i32 %i.bk, 32767
  br i1 %i.bm, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph130
  %i.bn = and i32 %i.bk, 63
  %i.bo = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1156 ; 2 uses
  %i.br = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bq, %i.bs
  %.not.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i, label %bb.z, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit

bb.z:                                             ; preds = %bb.y
  %i.bu = shl nsw i64 -1, %i.br
  %i.bv = and i64 %i.bq, %i.bu                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %exitcond.not.i.i.i169 = icmp eq i32 %i.bl, 511
  br i1 %exitcond.not.i.i.i169, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, label %.lr.ph171

.lr.ph.i.i.i:                                     ; preds = %.lr.ph171
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 511
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, label %.lr.ph171, !llvm.loop !41

.lr.ph171:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i170 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i170, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !41

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph171
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.z
  %.016.lcssa.i.i.i = phi i32 [ %i.bl, %bb.z ], [ %i.by, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bx, %.critedge.loopexit.i.i.i ]
  %i.bz = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.ca = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread: ; preds = %.lr.ph130, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.cd = add i32 %.073128, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.y
  %.118.i.i.i = phi i32 [ %i.cc, %.critedge.i.i.i ], [ %i.bk, %bb.y ] ; 2 uses
  %i.ce = add i32 %.073128, 1                     ; 2 uses
  %.not119 = icmp eq i32 %.118.i.i.i, 32768
  br i1 %.not119, label %.loopexit, label %.lr.ph130, !llvm.loop !21642

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %9, i8 0, i64 4096, i1 false), !tbaa !1156
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %9, i8 0, i64 4096, i1 false), !tbaa !1156
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = load i32, ptr %i.cf, align 4
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.af, %bb.aa
  %.174.lcssa = phi i32 [ 0, %bb.aa ], [ %.275, %bb.af ]
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(4096) %9, i64 noundef 4096)
          to label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit unwind label %bb.ag ; 0 uses

bb.ab:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.174124 = phi i32 [ 0, %.lr.ph ], [ %.275, %bb.af ] ; 4 uses
  %i.ci = lshr i64 %indvars.iv, 6
  %i.cj = and i64 %i.ci, 67108863                 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156
  %i.cm = and i64 %indvars.iv, 63
  %i.cn = shl nuw i64 1, %i.cm                    ; 2 uses
  %i.co = and i64 %i.cl, %i.cn
  %.not118 = icmp eq i64 %i.co, 0
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br i1 %.not118, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = zext i32 %.174124 to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cq
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !1131
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !1131
  %i.ct = add i32 %.174124, 1
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr %i.cp, align 4, !tbaa !7038
  %i.cv = icmp eq i32 %i.cu, %i.cg
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cj ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1156
  %i.cy = or i64 %i.cx, %i.cn
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !1156
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.275 = phi i32 [ %i.ct, %bb.ac ], [ %.174124, %bb.ae ], [ %.174124, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !21643

_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ah

.loopexit:                                        ; preds = %bb.x, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread, %.loopexit120, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit, %bb.u
  %.sroa.0108.1 = phi ptr [ null, %bb.u ], [ %i.al, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit ], [ %i.al, %.loopexit120 ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread ], [ %i.al, %bb.x ]
  %.376 = phi i32 [ %2, %bb.u ], [ %.174.lcssa, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE4saveERSo.exit ], [ 0, %.loopexit120 ], [ %i.ce, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.cd, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit.thread ], [ 0, %bb.x ]
end_hunk_8
begin_hunk_9_@_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj5EEEEC2ERKS7_SA_PKS4_RSB_:bb.a
bb.s:                                             ; preds = %bb.r
  store i8 5, ptr %0, align 4, !tbaa !7569
  br label %.thread42

bb.t:                                             ; preds = %bb.q
  %i.br = icmp eq i32 %i.bp, %i.bm
  br i1 %i.br, label %.thread41, label %bb.w

.thread41:                                        ; preds = %bb.r, %bb.t
  %i.bs = sub i32 0, %i.bn
  %i.bt = icmp eq i32 %i.bm, %i.bs
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread41
  store i8 3, ptr %0, align 4, !tbaa !7569
  br label %.thread42

bb.v:                                             ; preds = %.thread41
  store i8 4, ptr %0, align 4, !tbaa !7569
  br label %.thread42

bb.w:                                             ; preds = %bb.t
  %i.bu = sub i32 0, %i.bm
  %i.bv = icmp eq i32 %i.bp, %i.bu
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 3, ptr %0, align 4, !tbaa !7569
  store i32 %i.bp, ptr %.ptr28, align 4, !tbaa !1131
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !1131
  br label %.thread42

bb.y:                                             ; preds = %bb.w
  store i32 %i.bp, ptr %.ptr28, align 4, !tbaa !1131
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !1131
  store i8 4, ptr %0, align 4, !tbaa !7569
  br label %.thread42

bb.z:                                             ; preds = %.critedge
  %i.bw = icmp sgt i32 %.2, 2
  br i1 %i.bw, label %bb.aa, label %.thread42

bb.aa:                                            ; preds = %bb.z
  store i8 6, ptr %0, align 4, !tbaa !7569
  br label %.thread42

.thread42:                                        ; preds = %.thread68, %bb.v, %bb.u, %bb.x, %bb.y, %bb.s, %bb.aa, %bb.z, %bb.m, %bb.p, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SE_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %6 = alloca %"struct.openvdb::v13_0::PointIndex.5013", align 4 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::io::MaskCompress.5496", align 4 ; 10 uses
  %8 = alloca %"struct.openvdb::v13_0::PointIndex.5013", align 4 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask.180", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1113
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e) ; 4 uses
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 6, ptr %i.a, align 1, !tbaa !1126
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.aj unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %.invoke139, %.invoke138, %.invoke, %bb.b
  %.sroa.0102.0 = phi ptr [ null, %bb.b ], [ %.sroa.0102.4, %.invoke139 ], [ %.sroa.0102.4, %.invoke138 ], [ %.sroa.0102.4, %.invoke ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !tbaa !1131
  %i.j = load ptr, ptr %0, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not78 = icmp eq ptr %i.n, null
  br i1 %.not78, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1131
  store i32 %i.o, ptr %6, align 4, !tbaa !1131
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7openvdb5v13_02io12MaskCompressINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj4EEEEC2ERKS7_SA_PKS4_RSB_(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %7, align 4, !tbaa !7571
  store i8 %i.q, ptr %i.a, align 1, !tbaa !1126
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  switch i8 %i.s, label %bb.u [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = load i8, ptr %i.a, align 1, !tbaa !1126  ; 2 uses
  %i.w = icmp eq i8 %i.v, 5
  br i1 %i.w, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.v, %bb.n, %bb.l, %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i, ptr %8, align 4
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !1126
  %i.ad = icmp eq i8 %i.ac, 5
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i88 = load i32, ptr %i.ae, align 4, !tbaa !1131
  store i32 %.sroa.0.0.copyload.i.i88, ptr %8, align 4, !tbaa !1131
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i64 noundef 4)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ah

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.t
  %.pr = load i8, ptr %i.a, align 1, !tbaa !1126
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.j, %bb.m
  %i.ah = phi i8 [ %.pr, %thread-pre-split ], [ %i.s, %bb.j ], [ %i.v, %bb.m ]
  %i.ai = icmp eq i8 %i.ah, 6
  br i1 %i.ai, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = zext i32 %2 to i64                      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.w unwind label %bb.o       ; 8 uses

bb.w:                                             ; preds = %bb.v
  %i.am = icmp eq i32 %2, 0
  br i1 %i.am, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %bb.w
  %i.an = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11 = icmp ult i8 %i.an, 3
  br i1 %or.cond11, label %bb.x, label %bb.aa

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread: ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 range(i64 0, 17179869181) %i.ak, i1 false), !tbaa !7038
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !1126
  %or.cond11132 = icmp ult i8 %i.ao, 3
  br i1 %or.cond11132, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  %i.ap = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %3) ; 2 uses
  %.not113116 = icmp eq i32 %i.ap, 4096
  br i1 %.not113116, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.x, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit
  %.071118 = phi i32 [ %i.bp, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ 0, %bb.x ] ; 3 uses
  %.sroa.0.0117 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ %i.ap, %bb.x ] ; 2 uses
  %i.aq = zext i32 %.sroa.0.0117 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.as = zext i32 %.071118 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !1131
  store i32 %i.au, ptr %i.at, align 4, !tbaa !1131
  %i.av = add i32 %.sroa.0.0117, 1                ; 4 uses
  %i.aw = lshr i32 %i.av, 6                       ; 3 uses
  %i.ax = icmp ugt i32 %i.av, 4095
  br i1 %i.ax, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph120
  %i.ay = and i32 %i.av, 63
  %i.az = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1156 ; 2 uses
  %i.bc = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %bb.z, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

bb.z:                                             ; preds = %bb.y
  %i.bf = shl nsw i64 -1, %i.bc
  %i.bg = and i64 %i.bb, %i.bf                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %exitcond.not.i.i.i145 = icmp eq i32 %i.aw, 63
  br i1 %exitcond.not.i.i.i145, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph147

.lr.ph.i.i.i:                                     ; preds = %.lr.ph147
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph147, !llvm.loop !42

.lr.ph147:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i146 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i146, 1 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !42

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph147
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.z
  %.016.lcssa.i.i.i = phi i32 [ %i.aw, %bb.z ], [ %i.bj, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.bg, %bb.z ], [ %i.bi, %.critedge.loopexit.i.i.i ]
  %i.bk = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.bl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread: ; preds = %.lr.ph120, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bo = add i32 %.071118, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.y
  %.118.i.i.i = phi i32 [ %i.bn, %.critedge.i.i.i ], [ %i.av, %bb.y ] ; 2 uses
  %i.bp = add i32 %.071118, 1                     ; 2 uses
  %.not113 = icmp eq i32 %.118.i.i.i, 4096
  br i1 %.not113, label %.loopexit, label %.lr.ph120, !llvm.loop !21650

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %9, i8 0, i64 512, i1 false), !tbaa !1156
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %9, i8 0, i64 512, i1 false), !tbaa !1156
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = load i32, ptr %i.bq, align 4
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.af, %bb.aa
  %.172.lcssa = phi i32 [ 0, %bb.aa ], [ %.273, %bb.af ]
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(512) %9, i64 noundef 512)
          to label %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit unwind label %bb.ag ; 0 uses

bb.ab:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.172114 = phi i32 [ 0, %.lr.ph ], [ %.273, %bb.af ] ; 4 uses
  %i.bt = lshr i64 %indvars.iv, 6
  %i.bu = and i64 %i.bt, 67108863                 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1156
  %i.bx = and i64 %indvars.iv, 63
  %i.by = shl nuw i64 1, %i.bx                    ; 2 uses
  %i.bz = and i64 %i.bw, %i.by
  %.not112 = icmp eq i64 %i.bz, 0
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br i1 %.not112, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = zext i32 %.172114 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cb
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !1131
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !1131
  %i.ce = add i32 %.172114, 1
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !7038
  %i.cg = icmp eq i32 %i.cf, %i.br
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bu ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1156
  %i.cj = or i64 %i.ci, %i.by
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !1156
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.273 = phi i32 [ %i.ce, %bb.ac ], [ %.172114, %bb.ae ], [ %.172114, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !21651

_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ah

.loopexit:                                        ; preds = %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, %bb.x, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit, %bb.u
  %.sroa.0102.1 = phi ptr [ null, %bb.u ], [ %i.al, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ %i.al, %bb.x ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.al, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  %.374 = phi i32 [ %2, %bb.u ], [ %.172.lcssa, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ 0, %bb.x ], [ %i.bo, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.bp, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag, %bb.s, %bb.o
  %.sroa.0102.2 = phi ptr [ %i.al, %bb.ag ], [ null, %bb.o ], [ null, %bb.s ]
  %.pn80 = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.z, %bb.o ], [ %i.ag, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.g
  %.sroa.0102.3 = phi ptr [ %.sroa.0102.2, %bb.ah ], [ null, %bb.g ]
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.ah ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ao

bb.aj:                                            ; preds = %bb.b, %.loopexit
  %.sroa.0102.4 = phi ptr [ null, %bb.b ], [ %.sroa.0102.1, %.loopexit ] ; 7 uses
  %.475 = phi i32 [ %2, %bb.b ], [ %.374, %.loopexit ] ; 3 uses
  %.not85 = icmp eq ptr %.sroa.0102.4, null
  %i.cl = select i1 %.not85, ptr %1, ptr %.sroa.0102.4 ; 3 uses
  %i.cm = and i32 %i.f, 4
  %.not.i.i89 = icmp eq i32 %i.cm, 0              ; 2 uses
  br i1 %5, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not.i.i89, label %bb.al, label %.invoke139

bb.al:                                            ; preds = %bb.ak
  %i.cn = and i32 %i.f, 1
  %.not10.i.i = icmp eq i32 %i.cn, 0
  %i.co = zext i32 %.475 to i64
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 2 uses
  br i1 %.not10.i.i, label %.invoke, label %.invoke138

bb.am:                                            ; preds = %bb.aj
  br i1 %.not.i.i89, label %bb.an, label %.invoke139

.invoke139:                                       ; preds = %bb.am, %bb.ak
  %i.cq = zext i32 %.475 to i64
  invoke void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cl, i64 noundef 4, i64 noundef %i.cq)
          to label %_ZN7openvdb5v13_02io10HalfWriterILb0ENS0_10PointIndexIjLj1EEEE5writeERSoPKS4_jj.exit unwind label %bb.c

bb.an:                                            ; preds = %bb.am
  %i.cr = and i32 %i.f, 1
  %.not10.i = icmp eq i32 %i.cr, 0
  %i.cs = zext i32 %.475 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  br i1 %.not10.i, label %.invoke, label %.invoke138

.invoke138:                                       ; preds = %bb.an, %bb.al
end_hunk_9
