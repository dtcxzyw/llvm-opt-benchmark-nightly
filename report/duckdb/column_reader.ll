inline.NumInlined: 4822
inline.NumDeleted: 2510
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6duckdb12ColumnReader11PrepareReadEmPhS1_m:bb.a
  br label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19, %.lr.ph.i15
  %.023.i16 = phi i32 [ 0, %.lr.ph.i15 ], [ %.1.i20, %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19 ] ; 8 uses
  %i.ci = load i32, ptr %i.cb, align 8, !tbaa !460 ; 2 uses
  %.not.i17 = icmp eq i32 %i.ci, 0
  br i1 %.not.i17, label %bb.p, label %_ZSt6fill_nIPhjhET_S1_T0_RKT1_.exit.i18

_ZSt6fill_nIPhjhET_S1_T0_RKT1_.exit.i18:          ; preds = %bb.o
  %i.cj = sub i32 %.pre-phi35, %.023.i16
  %i.ck = tail call noundef i32 @llvm.umin.i32(i32 %i.cj, i32 %i.ci) ; 3 uses
  %i.cl = load i64, ptr %i.cc, align 8, !tbaa !461
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = zext i32 %.023.i16 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cn
  %i.cp = zext i32 %i.ck to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.co, i8 %i.cm, i64 %i.cp, i1 false)
  %i.cq = load i32, ptr %i.cb, align 8, !tbaa !460
  %i.cr = sub i32 %i.cq, %i.ck
  store i32 %i.cr, ptr %i.cb, align 8, !tbaa !460
  %i.cs = add i32 %i.ck, %.023.i16
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19

bb.p:                                             ; preds = %bb.o
  %i.ct = load i32, ptr %i.cd, align 4, !tbaa !462 ; 2 uses
  %.not22.i21 = icmp eq i32 %i.ct, 0
  br i1 %.not22.i21, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = sub i32 %.pre-phi35, %.023.i16
  %i.cv = tail call noundef i32 @llvm.umin.i32(i32 %i.cu, i32 %i.ct) ; 3 uses
  %i.cw = zext i32 %.023.i16 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cw
  %i.cy = zext i32 %i.cv to i64
  %i.cz = load i32, ptr %i.cf, align 8, !tbaa !398
  %i.da = trunc i32 %i.cz to i8
  tail call void @_ZN6duckdb18ParquetDecodeUtils9BitUnpackIhEEvRNS_10ByteBufferERhPT_mh(ptr noundef nonnull align 8 dereferenceable(57) %i.bz, ptr noundef nonnull align 1 dereferenceable(1) %i.ce, ptr noundef %i.cx, i64 noundef %i.cy, i8 noundef zeroext %i.da)
  %i.db = load i32, ptr %i.cd, align 4, !tbaa !462
  %i.dc = sub i32 %i.db, %i.cv
  store i32 %i.dc, ptr %i.cd, align 4, !tbaa !462
  %i.dd = add i32 %i.cv, %.023.i16
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19

bb.r:                                             ; preds = %bb.p
  %i.de = load i8, ptr %i.cg, align 8, !tbaa !401
  %i.df = zext i8 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 6
  %i.dh = load i64, ptr %i.ch, align 8, !tbaa !389
  %.not.i.i22 = icmp ugt i64 %i.dg, %i.dh
  br i1 %.not.i.i22, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN6duckdb12RleBpDecoder19NextCountsTemplatedILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(57) %i.bz)
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN6duckdb12RleBpDecoder19NextCountsTemplatedILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(57) %i.bz)
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19

_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19:  ; preds = %bb.t, %bb.s, %bb.q, %_ZSt6fill_nIPhjhET_S1_T0_RKT1_.exit.i18
  %.1.i20 = phi i32 [ %i.cs, %_ZSt6fill_nIPhjhET_S1_T0_RKT1_.exit.i18 ], [ %i.dd, %bb.q ], [ %.023.i16, %bb.s ], [ %.023.i16, %bb.t ] ; 2 uses
  %i.di = icmp ult i32 %.1.i20, %.pre-phi35
  br i1 %i.di, label %bb.o, label %_ZN6duckdb12RleBpDecoder8GetBatchIhEEvPhj.exit23, !llvm.loop !463

_ZN6duckdb12RleBpDecoder8GetBatchIhEEvPhj.exit23: ; preds = %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19, %_ZN6duckdb12RleBpDecoder16HasRepeatedBatchIhEEbjT_.exit.thread, %_ZN6duckdb12RleBpDecoder8GetBatchIhEEvPhj.exit, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ true, %_ZN6duckdb12RleBpDecoder8GetBatchIhEEvPhj.exit ], [ false, %_ZN6duckdb12RleBpDecoder16HasRepeatedBatchIhEEbjT_.exit.thread ], [ false, %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i19 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !201    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !212

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !205    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb12ColumnReader8ReadDataEmPhS1_RNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %5, 0
  %i.a = load i8, ptr %4, align 8
  %.not51 = icmp eq i8 %i.a, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not51
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5)
  tail call void @_ZN6duckdb6Vector6ResizeEmm(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef 2048)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !89, !range !385, !noundef !193
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %.not53 = icmp eq i64 %1, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !464  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.lr.ph.split, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %1, 1
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new
  %.052.us = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new ], [ %i.aa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us ] ; 3 uses
  %niter = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new ], [ %niter.next.1, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us ]
  %i.j = add i64 %.052.us, %5                     ; 2 uses
  %i.k = lshr i64 %i.j, 6
  %i.l = and i64 %i.j, 63
  %i.m = shl nuw i64 1, %i.l
  %i.n = xor i64 %i.m, -1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !281
  %i.q = and i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !281
  %i.r = or disjoint i64 %.052.us, 1
  %i.s = add i64 %i.r, %5                         ; 2 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = and i64 %i.s, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281
  %i.aa = add nuw i64 %.052.us, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit64.unr-lcssa, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, !llvm.loop !470

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %i.ab = phi ptr [ %i.ae, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ null, %.lr.ph ] ; 2 uses
  %.052 = phi i64 [ %i.am, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ac = add i64 %.052, %5                       ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.e:                                             ; preds = %.lr.ph.split
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !471
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.ad)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %.lr.ph.split, %bb.e
  %i.ae = phi ptr [ %.pre.i, %bb.e ], [ %i.ab, %.lr.ph.split ] ; 2 uses
  %i.af = lshr i64 %i.ac, 6
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = xor i64 %i.ah, -1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !281
  %i.al = and i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !281
  %i.am = add nuw i64 %.052, 1                    ; 2 uses
  %exitcond55.not = icmp eq i64 %i.am, %1
  br i1 %exitcond55.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !472

bb.f:                                             ; preds = %bb.c
  %i.an = tail call noundef zeroext i1 @_ZN6duckdb12ColumnReader11PrepareReadEmPhS1_m(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %5)
  %i.ao = select i1 %i.an, ptr null, ptr %2       ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !362
  switch i32 %i.aq, label %bb.m [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = tail call noundef i64 @_ZN6duckdb17DictionaryDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(113) %i.ar, ptr noundef %i.ao, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5) ; 0 uses
  br label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN6duckdb24DeltaBinaryPackedDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef %i.ao, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5)
  br label %._crit_edge

bb.i:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb10RLEDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.ao, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5)
  br label %._crit_edge

bb.j:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6duckdb27DeltaLengthByteArrayDecoder4ReadERNS_10shared_ptrINS_16ResizeableBufferELb1EEEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef %i.ao, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZN6duckdb21DeltaByteArrayDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef %i.ao, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5)
  br label %._crit_edge

bb.l:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_ZN6duckdb22ByteStreamSplitDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef %i.ao, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5)
  br label %._crit_edge

bb.m:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %0, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef %i.ao, i64 noundef %1, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(104) %4)
  br label %._crit_edge

._crit_edge.loopexit64.unr-lcssa:                 ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit64.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader
  %.052.us.epil.init = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader ], [ %i.aa, %._crit_edge.loopexit64.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.bd = add i64 %.052.us.epil.init, %5          ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = and i64 %i.bd, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = xor i64 %i.bg, -1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !281
  %i.bk = and i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !281
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader, %._crit_edge.loopexit64.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = sub i64 %i.bm, %1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !91
  ret void
}

declare void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector6ResizeEmm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb17DictionaryDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb24DeltaBinaryPackedDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb10RLEDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb27DeltaLengthByteArrayDecoder4ReadERNS_10shared_ptrINS_16ResizeableBufferELb1EEEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb21DeltaByteArrayDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb22ByteStreamSplitDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6duckdb12ColumnReader10FinishReadEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) initializes((72, 80)) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330, !noalias !474
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206, !noalias !474 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211, !noalias !474
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !474
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3, !noalias !474
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !474 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !209
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !336
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !336
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !212

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !338
end_hunk_0
begin_hunk_1_@_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED2Ev:bb.a
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !765
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !765
  br label %_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !766
  br label %_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !766
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !389
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIhNS_31TemplatedParquetValueConversionIjEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIhNS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !767 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !767, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !767 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !767
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !767
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !767
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !767
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !767
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !767
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !770

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !771
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !771, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !771
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !771
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb31TemplatedParquetValueConversionIjE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !771 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !771

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !771
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !771
  resume { ptr, i32 } %i.ak

_ZN6duckdb31TemplatedParquetValueConversionIjE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !771
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !771
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIjE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb31TemplatedParquetValueConversionIjE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb31TemplatedParquetValueConversionIjE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !774

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !767
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !767
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !767
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedIhNS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755  ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.n = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i.prol = load i32, ptr %i.n, align 1
  %i.o = load i64, ptr %i.h, align 8, !tbaa !389
  %i.p = add i64 %i.o, -4
  store i64 %i.p, ptr %i.h, align 8, !tbaa !389
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  %i.r = trunc i32 %.0.copyload.i.i.i.i.i.i.prol to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !211
  %i.t = add nuw i64 %4, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.017.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.u = icmp eq i64 %3, 1
  br i1 %i.u, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 1
  %i.w = load i64, ptr %i.h, align 8, !tbaa !389
  %i.x = add i64 %i.w, -4
  store i64 %i.x, ptr %i.h, align 8, !tbaa !389
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.y, ptr %1, align 8, !tbaa !386
  %i.z = trunc i32 %.0.copyload.i.i.i.i.i.i to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %.017.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !211
  %i.ab = load ptr, ptr %1, align 8, !tbaa !386   ; 2 uses
  %.0.copyload.i.i.i.i.i.i.1 = load i32, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !389
  %i.ad = add i64 %i.ac, -4
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ae, ptr %1, align 8, !tbaa !386
  %i.af = trunc i32 %.0.copyload.i.i.i.i.i.i.1 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %.017.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !211
  %i.ai = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !775

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIhNS_31TemplatedParquetValueConversionIjEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIhNS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !776
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !755, !noalias !776
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !776
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIhNS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c
end_hunk_1
begin_hunk_2_@_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEED0Ev:bb.a
  br label %_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !812
  br label %_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !812
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionImEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionImEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionImEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !389
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionImEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderImNS_31TemplatedParquetValueConversionImEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesImNS_31TemplatedParquetValueConversionImEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedImNS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %4
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 1 %i.m, i64 %i.g, i1 false)
  %i.n = load i64, ptr %i.h, align 8, !tbaa !389
  %i.o = sub i64 %i.n, %i.g
  store i64 %i.o, ptr %i.h, align 8, !tbaa !389
  %i.p = load ptr, ptr %1, align 8, !tbaa !386
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedImNS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedImNS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader14PlainTemplatedImNS_31TemplatedParquetValueConversionImEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionImEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !813 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !813, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !813 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !813
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !813
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !813
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !813
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !813
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !813
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !816

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !817
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !817, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !817
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !817
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb31TemplatedParquetValueConversionImE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !817 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !817

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !817
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !817
  resume { ptr, i32 } %i.ak

_ZN6duckdb31TemplatedParquetValueConversionImE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !817
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !817
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionImE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb31TemplatedParquetValueConversionImE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb31TemplatedParquetValueConversionImE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !820

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !813
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !813
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !813
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesImNS_31TemplatedParquetValueConversionImEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !821
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !755, !noalias !821
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !821
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.af, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !821
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !821, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !821
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !821 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !471, !noalias !821
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !821
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !821
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !821
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !821
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !386, !noalias !821 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 1, !noalias !821
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !389, !noalias !821
  %i.ac = add i64 %i.ab, -8
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !389, !noalias !821
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %1, align 8, !tbaa !386, !noalias !821
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.014.i
  store i64 %.0.copyload.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !281, !noalias !821
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.af = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !824

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalImNS_31TemplatedParquetValueConversionImEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED2Ev:bb.a
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !827
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !827
  br label %_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !828
  br label %_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !828
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !389
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIaNS_31TemplatedParquetValueConversionIiEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIaNS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !829 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !829, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !829 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !829
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !829
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !829
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !829
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !829
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !829
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !832

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !833
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !833, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !833
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !833
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb31TemplatedParquetValueConversionIiE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !833 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !833

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !833
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !833
  resume { ptr, i32 } %i.ak

_ZN6duckdb31TemplatedParquetValueConversionIiE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !833
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !833
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIiE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb31TemplatedParquetValueConversionIiE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb31TemplatedParquetValueConversionIiE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !836

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !829
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !829
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !829
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedIaNS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755  ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.n = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i.prol = load i32, ptr %i.n, align 1
  %i.o = load i64, ptr %i.h, align 8, !tbaa !389
  %i.p = add i64 %i.o, -4
  store i64 %i.p, ptr %i.h, align 8, !tbaa !389
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  %i.r = trunc i32 %.0.copyload.i.i.i.i.i.i.prol to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !211
  %i.t = add nuw i64 %4, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.017.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.u = icmp eq i64 %3, 1
  br i1 %i.u, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 1
  %i.w = load i64, ptr %i.h, align 8, !tbaa !389
  %i.x = add i64 %i.w, -4
  store i64 %i.x, ptr %i.h, align 8, !tbaa !389
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.y, ptr %1, align 8, !tbaa !386
  %i.z = trunc i32 %.0.copyload.i.i.i.i.i.i to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %.017.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !211
  %i.ab = load ptr, ptr %1, align 8, !tbaa !386   ; 2 uses
  %.0.copyload.i.i.i.i.i.i.1 = load i32, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !389
  %i.ad = add i64 %i.ac, -4
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ae, ptr %1, align 8, !tbaa !386
  %i.af = trunc i32 %.0.copyload.i.i.i.i.i.i.1 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %.017.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !211
  %i.ai = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !837

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIaNS_31TemplatedParquetValueConversionIiEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIaNS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !838
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !755, !noalias !838
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !838
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIaNS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c
end_hunk_3
begin_hunk_4_@_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEED0Ev:bb.a
  br label %_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !871
  br label %_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !871
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !389
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIlNS_31TemplatedParquetValueConversionIlEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIlNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %4
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 1 %i.m, i64 %i.g, i1 false)
  %i.n = load i64, ptr %i.h, align 8, !tbaa !389
  %i.o = sub i64 %i.n, %i.g
  store i64 %i.o, ptr %i.h, align 8, !tbaa !389
  %i.p = load ptr, ptr %1, align 8, !tbaa !386
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIlNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIlNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader14PlainTemplatedIlNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !872 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !872, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !872 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !872
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !872
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !872
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !872
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !872
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !872
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !875

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !876
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !876, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !876
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !876
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb31TemplatedParquetValueConversionIlE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !876 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !876

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !876
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !876
  resume { ptr, i32 } %i.ak

_ZN6duckdb31TemplatedParquetValueConversionIlE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !876
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !876
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIlE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb31TemplatedParquetValueConversionIlE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb31TemplatedParquetValueConversionIlE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !879

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !872
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !872
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !872
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !880
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !755, !noalias !880
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !880
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.af, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !880
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !880, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !880
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !880 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !471, !noalias !880
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !880
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !880
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !880
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !880
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !386, !noalias !880 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 1, !noalias !880
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !389, !noalias !880
  %i.ac = add i64 %i.ab, -8
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !389, !noalias !880
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %1, align 8, !tbaa !386, !noalias !880
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.014.i
  store i64 %.0.copyload.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !281, !noalias !880
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.af = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !883

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIlNS_31TemplatedParquetValueConversionIlEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c
end_hunk_4
begin_hunk_5_@_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED0Ev:bb.a
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !887
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !887
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 1                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 7 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = icmp ne i64 %i.i, 0
  %.neg = sext i1 %i.k to i64
  %i.l = add i64 %i.i, %.neg
  %i.m = add i64 %i.l, 1
  %i.n = lshr i64 %i.m, 1
  %i.o = add i64 %3, -1
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.p, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.q = add nuw i64 %i.p, 1                      ; 2 uses
  %n.mod.vf = and i64 %i.q, 3                     ; 2 uses
  %i.r = icmp eq i64 %n.mod.vf, 0
  %i.s = select i1 %i.r, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.q, %i.s                     ; 4 uses
  %i.t = shl i64 %n.vec, 1
  %i.u = sub i64 %i.i, %i.t
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %.promoted.i9.i, i64 %i.v
  %i.x = add i64 %i.i, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.y = phi i64 [ %i.x, %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.z = add i64 %i.y, -6
  %i.aa = getelementptr i8, ptr %pointer.phi, i64 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = add i64 %i.y, -8
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 8
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !888

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.z, ptr %i.h, align 8, !tbaa !389
  store ptr %i.aa, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.u, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.w, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.ad = phi i64 [ %i.ah, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.aj, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ae = phi ptr [ %i.ai, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.ad, 2
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #27
  resume { ptr, i32 } %i.ag

_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ah = add i64 %i.ad, -2                       ; 2 uses
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !389
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !386
  %i.aj = add nuw i64 %.08.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aj, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !889

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !890 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !890, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !890 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !890
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -2                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !890
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !890
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !890
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -2                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !890
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !890
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !893

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !894
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !894, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !894
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !894
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !894 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !894

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !894
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !894
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -2                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !894
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !894
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !897

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !890
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -2
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !890
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 2
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !890
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -2
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i16 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 2, !tbaa !787
  %i.s = call noundef float @_ZN6duckdb16Float16ToFloat32ERKt(ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.017.i.i
  store float %i.s, ptr %i.t, align 4, !tbaa !898
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !899

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_5
begin_hunk_6_@_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEED0Ev:bb.a
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !904
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !904
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIfEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIfEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIfEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !389
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIfEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIfNS_31TemplatedParquetValueConversionIfEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_31TemplatedParquetValueConversionIfEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIfNS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %4
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr align 1 %i.m, i64 %i.g, i1 false)
  %i.n = load i64, ptr %i.h, align 8, !tbaa !389
  %i.o = sub i64 %i.n, %i.g
  store i64 %i.o, ptr %i.h, align 8, !tbaa !389
  %i.p = load ptr, ptr %1, align 8, !tbaa !386
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIfNS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIfNS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader14PlainTemplatedIfNS_31TemplatedParquetValueConversionIfEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIfEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !905 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !905, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !905 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !905
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !905
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !905
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !905
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !905
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !905
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !908

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !909
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !909, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !909
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !909
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb31TemplatedParquetValueConversionIfE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !909 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !909

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !909
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !909
  resume { ptr, i32 } %i.ak

_ZN6duckdb31TemplatedParquetValueConversionIfE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !909
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !909
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIfE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb31TemplatedParquetValueConversionIfE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb31TemplatedParquetValueConversionIfE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !912

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !905
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !905
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !905
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIfNS_31TemplatedParquetValueConversionIfEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !913
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !755, !noalias !913
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !913
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.af, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !913
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !913, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !913
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !913 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !471, !noalias !913
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !913
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !913
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !913
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !913
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !386, !noalias !913 ; 2 uses
  %.0.copyload.i.i.i.i.i = load float, ptr %i.aa, align 1, !noalias !913
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !389, !noalias !913
  %i.ac = add i64 %i.ab, -4
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !389, !noalias !913
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ad, ptr %1, align 8, !tbaa !386, !noalias !913
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.014.i
  store float %.0.copyload.i.i.i.i.i, ptr %i.ae, align 4, !tbaa !898, !noalias !913
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.af = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !916

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIfNS_31TemplatedParquetValueConversionIfEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c
end_hunk_6
begin_hunk_7_@_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEED0Ev:bb.a
  br label %_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !920
  br label %_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !920
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIdEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIdEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIdEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !389
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIdEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIdNS_31TemplatedParquetValueConversionIdEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_31TemplatedParquetValueConversionIdEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIdNS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %4
  %i.m = load ptr, ptr %1, align 8, !tbaa !386
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 1 %i.m, i64 %i.g, i1 false)
  %i.n = load i64, ptr %i.h, align 8, !tbaa !389
  %i.o = sub i64 %i.n, %i.g
  store i64 %i.o, ptr %i.h, align 8, !tbaa !389
  %i.p = load ptr, ptr %1, align 8, !tbaa !386
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIdNS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader14PlainTemplatedIdNS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader14PlainTemplatedIdNS_31TemplatedParquetValueConversionIdEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIdEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !921 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !921, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !921 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !921
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !921
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !921
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !921
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !921
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !921
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !924

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !925
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !925, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !925
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !925
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb31TemplatedParquetValueConversionIdE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !925 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !925

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !925
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !925
  resume { ptr, i32 } %i.ak

_ZN6duckdb31TemplatedParquetValueConversionIdE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !925
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !925
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIdE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb31TemplatedParquetValueConversionIdE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb31TemplatedParquetValueConversionIdE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !928

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !921
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !921
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !921
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_31TemplatedParquetValueConversionIdEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !929
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !755, !noalias !929
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !929
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.af, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !929
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !929, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !929
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !929 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !471, !noalias !929
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !929
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !464, !noalias !929
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !929
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !929
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !386, !noalias !929 ; 2 uses
  %.0.copyload.i.i.i.i.i = load double, ptr %i.aa, align 1, !noalias !929
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !389, !noalias !929
  %i.ac = add i64 %i.ab, -8
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !389, !noalias !929
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %1, align 8, !tbaa !386, !noalias !929
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.014.i
  store double %.0.copyload.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !932, !noalias !929
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.af = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !933

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIdNS_31TemplatedParquetValueConversionIdEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c
end_hunk_7
begin_hunk_8_@_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEEED0Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !937
  br label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !937
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = mul i64 %3, 12                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.i, i64 11)
  %i.l = udiv i64 %i.k, 12
  %i.m = add i64 %3, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.o, 3                     ; 2 uses
  %i.p = icmp eq i64 %n.mod.vf, 0
  %i.q = select i1 %i.p, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.o, %i.q                 ; 4 uses
  %i.r = mul i64 %n.vec, -12
  %i.s = add i64 %i.i, %i.r
  %i.t = mul i64 %n.vec, 12
  %i.u = getelementptr i8, ptr %.promoted.i9.i, i64 %i.t
  %i.v = add i64 %i.i, -12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.w = phi i64 [ %i.v, %vector.ph ], [ %i.z, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.x = add i64 %i.w, -36
  %i.y = getelementptr i8, ptr %pointer.phi, i64 48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = add i64 %i.w, -48
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 48
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !938

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.x, ptr %i.h, align 8, !tbaa !389
  store ptr %i.y, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.s, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.u, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.ab = phi i64 [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ah, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ac = phi ptr [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.ab, 12
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #27
  resume { ptr, i32 } %i.ae

_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.af = add i64 %i.ab, -12                      ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !386
  %i.ah = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !939

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %3, 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !940 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !940, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !940 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !940
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -12                        ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !940
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !940
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !940
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -12                        ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !940
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !940
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !943

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !944
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !944, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !944
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !944
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 12
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !944 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !944

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !944
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !944
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -12                      ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !944
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !944
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !947

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !940
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -12
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !940
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 12
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !940
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_11timestamp_tEXadL_ZNS_26ImpalaTimestampToTimestampERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.duckdb::Int96", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  %i.g = mul i64 %3, 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.g, %i.i               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.t, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.n = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 1
  %.sroa.22.0..0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.22.0..0..sroa_idx.i.i.i.i.i.i, align 1
  %i.o = load i64, ptr %i.h, align 8, !tbaa !389
  %i.p = add i64 %i.o, -12
  store i64 %i.p, ptr %i.h, align 8, !tbaa !389
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %6, align 8
  store i32 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.r = call i64 @_ZN6duckdb26ImpalaTimestampToTimestampERKNS_5Int96E(ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.017.i.i
  store i64 %i.r, ptr %i.s, align 8, !tbaa !281
  %i.t = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.g, !llvm.loop !948

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_26ImpalaTimestampToTimestampERKS4_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.duckdb::Int96", align 8    ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ae, %bb.f ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !471
end_hunk_8
begin_hunk_9_@_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !953
  br label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !953
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !954

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !955

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !956 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !956, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !956 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !956
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !956
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !956
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !956
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !956
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !956
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !959

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !960
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !960, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !960
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !960
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !960 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !960

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !960
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !960
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !960
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !960
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !963

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !956
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !956
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !956
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb29ParquetTimestampMsToTimestampERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !964

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampMsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_9
begin_hunk_10_@_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !969
  br label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !969
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !970

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !971

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !972 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !972, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !972 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !972
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !972
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !972
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !972
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !972
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !972
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !975

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !976
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !976, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !976
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !976
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !976 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !976

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !976
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !976
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !976
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !976
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !979

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !972
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !972
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !972
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb33ParquetTimestampMicrosToTimestampERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !980

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_33ParquetTimestampMicrosToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_10
begin_hunk_11_@_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !985
  br label %_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_11timestamp_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !985
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !986

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !987

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !988 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !988, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !988 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !988
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !988
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !988
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !988
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !988
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !988
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !991

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !992
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !992, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !992
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !992
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !992 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !992

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !992
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !992
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !992
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !992
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !995

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !988
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !988
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !988
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_11timestamp_tEXadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb29ParquetTimestampNsToTimestampERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !996

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_11timestamp_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_29ParquetTimestampNsToTimestampERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_11
begin_hunk_12_@_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEEED0Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1001
  br label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES1_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1001
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = mul i64 %3, 12                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.i, i64 11)
  %i.l = udiv i64 %i.k, 12
  %i.m = add i64 %3, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.o, 3                     ; 2 uses
  %i.p = icmp eq i64 %n.mod.vf, 0
  %i.q = select i1 %i.p, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.o, %i.q                 ; 4 uses
  %i.r = mul i64 %n.vec, -12
  %i.s = add i64 %i.i, %i.r
  %i.t = mul i64 %n.vec, 12
  %i.u = getelementptr i8, ptr %.promoted.i9.i, i64 %i.t
  %i.v = add i64 %i.i, -12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.w = phi i64 [ %i.v, %vector.ph ], [ %i.z, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.x = add i64 %i.w, -36
  %i.y = getelementptr i8, ptr %pointer.phi, i64 48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = add i64 %i.w, -48
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 48
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1002

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.x, ptr %i.h, align 8, !tbaa !389
  store ptr %i.y, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.s, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.u, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.ab = phi i64 [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ah, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ac = phi ptr [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.ab, 12
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #27
  resume { ptr, i32 } %i.ae

_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.af = add i64 %i.ab, -12                      ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !386
  %i.ah = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1003

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %3, 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1004 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1004, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1004 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1004
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -12                        ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1004
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1004
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1004
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -12                        ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1004
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1004
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1007

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1008
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1008, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1008
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1008
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 12
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1008 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1008

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1008
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1008
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -12                      ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1008
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1008
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS1_EEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1011

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1004
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -12
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1004
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 12
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1004
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionINS_5Int96ENS_14timestamp_ns_tEXadL_ZNS_28ImpalaTimestampToTimestampNSERKS3_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.duckdb::Int96", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  %i.g = mul i64 %3, 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.g, %i.i               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.t, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.n = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 1
  %.sroa.22.0..0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.22.0..0..sroa_idx.i.i.i.i.i.i, align 1
  %i.o = load i64, ptr %i.h, align 8, !tbaa !389
  %i.p = add i64 %i.o, -12
  store i64 %i.p, ptr %i.h, align 8, !tbaa !389
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store ptr %i.q, ptr %1, align 8, !tbaa !386
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %6, align 8
  store i32 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.r = call i64 @_ZN6duckdb28ImpalaTimestampToTimestampNSERKNS_5Int96E(ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.017.i.i
  store i64 %i.r, ptr %i.s, align 8
  %i.t = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.g, !llvm.loop !1012

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionINS_5Int96ES2_XadL_ZNS_28ImpalaTimestampToTimestampNSERKS4_EEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.duckdb::Int96", align 8    ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ae, %bb.f ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !471
end_hunk_12
begin_hunk_13_@_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1017
  br label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1017
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1018

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1019

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1020 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1020, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1020 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1020
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1020
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1020
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1020
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1020
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1020
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1023

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1024
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1024, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1024
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1024
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1024 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1024

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1024
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1024
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1024
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1024
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1027

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1020
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1020
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1020
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb31ParquetTimestampMsToTimestampNsERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1028

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampMsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_13
begin_hunk_14_@_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1033
  br label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1033
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1034

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1035

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1036 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1036, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1036 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1036
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1036
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1036
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1036
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1036
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1036
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1039

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1040
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1040, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1040
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1040
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1040 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1040

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1040
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1040
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1040
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1040
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1043

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1036
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1036
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1036
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb31ParquetTimestampUsToTimestampNsERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1044

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampUsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_14
begin_hunk_15_@_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1049
  br label %_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1049
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1050

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1051

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1052 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1052, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1052 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1052
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1052
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1052
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1052
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1052
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1052
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1055

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1056
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1056, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1056
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1056
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1056 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1056

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1056
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1056
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1056
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1056
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1059

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1052
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1052
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1052
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_14timestamp_ns_tEXadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb31ParquetTimestampNsToTimestampNsERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1060

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_14timestamp_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_31ParquetTimestampNsToTimestampNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_15
begin_hunk_16_@_ZN6duckdb21TemplatedColumnReaderINS_6date_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_16ParquetIntToDateERKiEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_6date_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_16ParquetIntToDateERKiEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1065
  br label %_ZN6duckdb21TemplatedColumnReaderINS_6date_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_16ParquetIntToDateERKiEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_6date_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_16ParquetIntToDateERKiEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1065
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 2
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 2
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -12
  %i.x = getelementptr i8, ptr %pointer.phi, i64 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -16
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1066

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 4
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -4                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1067

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1068 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1068, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1068 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1068
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1068
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1068
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1068
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1068
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1068
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1071

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1072
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1072, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1072
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1072
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1072 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1072

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1072
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1072
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1072
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1072
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1075

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1068
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1068
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1068
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_6date_tEXadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_6date_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -4
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 4, !tbaa !3
  %i.s = call i32 @_ZN6duckdb16ParquetIntToDateERKi(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.017.i.i
  store i32 %i.s, ptr %i.t, align 4, !tbaa !3
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1076

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_6date_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_16ParquetIntToDateERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_6date_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_16
begin_hunk_17_@_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_18ParquetMsIntToTimeERKiEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_18ParquetMsIntToTimeERKiEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1081
  br label %_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_18ParquetMsIntToTimeERKiEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_18ParquetMsIntToTimeERKiEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1081
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 2
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 2
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -12
  %i.x = getelementptr i8, ptr %pointer.phi, i64 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -16
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1082

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 4
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -4                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1083

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1084 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1084, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1084 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1084
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1084
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1084
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1084
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1084
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1084
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1087

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1088
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1088, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1088
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1088
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1088 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1088

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1088
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1088
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1088
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1088
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1091

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1084
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1084
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1084
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_7dtime_tEXadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -4
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 4, !tbaa !3
  %i.s = call i64 @_ZN6duckdb18ParquetMsIntToTimeERKi(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1092

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_18ParquetMsIntToTimeERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_17
begin_hunk_18_@_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_16ParquetIntToTimeERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_16ParquetIntToTimeERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1097
  br label %_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_16ParquetIntToTimeERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_16ParquetIntToTimeERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1097
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1098

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1099

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1100 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1100, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1100 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1100
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1100
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1100
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1100
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1100
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1100
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1103

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1104
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1104, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1104
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1104
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1104 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1104

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1104
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1104
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1104
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1104
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1107

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1100
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1100
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1100
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb16ParquetIntToTimeERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1108

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_16ParquetIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_18
begin_hunk_19_@_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetNsIntToTimeERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetNsIntToTimeERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1113
  br label %_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetNsIntToTimeERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_7dtime_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetNsIntToTimeERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1113
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1114

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1115

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1116 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1116, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1116 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1116
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1116
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1116
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1116
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1116
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1116
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1119

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1120, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1120
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1120
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1120 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1120

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1120
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1120
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1120
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1120
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1123

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1116
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1116
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1116
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_7dtime_tEXadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb18ParquetNsIntToTimeERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1124

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_7dtime_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetNsIntToTimeERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_19
begin_hunk_20_@_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1129
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1129
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 2
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 2
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -12
  %i.x = getelementptr i8, ptr %pointer.phi, i64 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -16
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1130

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 4
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -4                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1131

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1132 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1132, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1132 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1132
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1132
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1132
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1132
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1132
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1132
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1135

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1136, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1136
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1136
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1136 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1136

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1136
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1136
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1136
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1136
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1139

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1132
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1132
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1132
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_ns_tEXadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -4
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 4, !tbaa !3
  %i.s = call i64 @_ZN6duckdb20ParquetMsIntToTimeNsERKi(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1140

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetMsIntToTimeNsERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_20
begin_hunk_21_@_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1145
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1145
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1146

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1147

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1148 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1148, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1148 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1148
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1148
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1148
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1148
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1148
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1148
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1151

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1152
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1152, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1152
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1152
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1152 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1152

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1152
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1152
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1152
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1152
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1155

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1148
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1148
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1148
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb20ParquetUsIntToTimeNsERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1156

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetUsIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_21
begin_hunk_22_@_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeNsERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeNsERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1161
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeNsERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeNsERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1161
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1162

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1163

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1164 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1164, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1164 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1164
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1164
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1164
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1164
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1164
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1167

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1168
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1168, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1168
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1168
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1168 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1168

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1168
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1168
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1168
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1168
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1171

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1164
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1164
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1164
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_ns_tEXadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb18ParquetIntToTimeNsERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1172

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_ns_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeNsERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_22
begin_hunk_23_@_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1177
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS1_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1177
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 2
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 2
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -12
  %i.x = getelementptr i8, ptr %pointer.phi, i64 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -16
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1178

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 4
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -4                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1179

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1180 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1180, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1180 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1180
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -4                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1180
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1180
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1180
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -4                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1180
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1180
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1183

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1184
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1184, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1184
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1184
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 4
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1184 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1184

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1184
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1184
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -4                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1184
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1184
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1187

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1180
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -4
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1180
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1180
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIiNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -4
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 4, !tbaa !3
  %i.s = call i64 @_ZN6duckdb20ParquetIntToTimeMsTZERKi(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1188

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIiS2_XadL_ZNS_20ParquetIntToTimeMsTZERKiEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_23
begin_hunk_24_@_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeTZERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeTZERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1193
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeTZERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_18ParquetIntToTimeTZERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1193
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1194

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1195

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1196 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1196, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1196 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1196
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1196
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1196
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1196
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1196
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1196
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1199

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1200
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1200, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1200
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1200
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1200 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1200

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1200
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1200
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1200
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1200
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1203

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1196
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1196
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1196
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb18ParquetIntToTimeTZERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1204

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_18ParquetIntToTimeTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_24
begin_hunk_25_@_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1209
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS1_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1209
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -24
  %i.x = getelementptr i8, ptr %pointer.phi, i64 32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -32
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1210

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1211

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1212 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1212, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1212 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1212
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -8                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1212
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1212
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1212
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -8                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1212
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1212
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1215

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1216
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1216, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1216
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1216
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 8
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1216 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1216

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1216
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1216
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -8                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1216
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1216
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1219

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1212
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -8
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1212
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 8
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1212
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionIlNS_10dtime_tz_tEXadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = shl i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.h, %i.j               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %4, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = load ptr, ptr %1, align 8, !tbaa !386    ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.i, align 8, !tbaa !389
  %i.q = add i64 %i.p, -8
  store i64 %i.q, ptr %i.i, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %1, align 8, !tbaa !386
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !281
  %i.s = call i64 @_ZN6duckdb20ParquetIntToTimeNsTZERKl(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.017.i.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !281
  %i.u = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1220

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10dtime_tz_tENS_30CallbackParquetValueConversionIlS2_XadL_ZNS_20ParquetIntToTimeNsTZERKlEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.e = add i64 %4, %3                           ; 2 uses
  %i.f = icmp ult i64 %4, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.af, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i8, ptr %i.j, align 1, !tbaa !211
  %i.l = zext i8 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381
  %.not = icmp eq i64 %i.o, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = lshr i64 %.014, 6
  %i.t = and i64 %.014, 63
end_hunk_25
begin_hunk_26_@_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_19UUIDValueConversionEED0Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_19UUIDValueConversionEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1283
  br label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_19UUIDValueConversionEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_19UUIDValueConversionEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1283
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_19UUIDValueConversionEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 4                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 4
  %i.l = add i64 %3, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.n, 3                     ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 4 uses
  %i.q = shl i64 %n.vec, 4
  %i.r = sub i64 %i.i, %i.q
  %i.s = shl i64 %n.vec, 4
  %i.t = getelementptr i8, ptr %.promoted.i9.i, i64 %i.s
  %i.u = add i64 %i.i, -16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.w = add i64 %i.v, -48
  %i.x = getelementptr i8, ptr %pointer.phi, i64 64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = add i64 %i.v, -64
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1284

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.w, ptr %i.h, align 8, !tbaa !389
  store ptr %i.x, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.r, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.aa = phi i64 [ %i.ae, %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ag, %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ab = phi ptr [ %i.af, %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, 16
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #27
  resume { ptr, i32 } %i.ad

_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ae = add i64 %i.aa, -16                      ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !386
  %i.ag = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1285

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1286 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1286, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1286 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1286
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -16                        ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1286
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1286
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1286
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -16                        ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1286
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1286
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1289

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1290
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1290, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1290
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1290
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 16
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1290 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1290

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1290
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1290
  resume { ptr, i32 } %i.ak

_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -16                      ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1290
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1290
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb19UUIDValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1293

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1286
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -16
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1286
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 16
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1286
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_9hugeint_tENS_19UUIDValueConversionEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  %i.g = shl i64 %3, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.g, %i.i               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_9hugeint_tENS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_9hugeint_tENS_19UUIDValueConversionELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !386
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.s, %bb.g ]
  %.017.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.o = tail call { i64, i64 } @_ZN6duckdb8BaseUUID8FromBlobEPKh(ptr noundef %i.n) ; 2 uses
  %i.p = load i64, ptr %i.h, align 8, !tbaa !389
  %i.q = add i64 %i.p, -16
  store i64 %i.q, ptr %i.h, align 8, !tbaa !389
  %i.r = load ptr, ptr %1, align 8, !tbaa !386
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !386
  %i.t = extractvalue { i64, i64 } %i.o, 0
  %i.u = extractvalue { i64, i64 } %i.o, 1
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.017.i.i ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !tbaa !281
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !281
  %i.w = add i64 %.017.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.l
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.g, !llvm.loop !1294

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_9hugeint_tENS_19UUIDValueConversionELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_19UUIDValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_9hugeint_tENS_19UUIDValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ah, %bb.f ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !471
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
end_hunk_26
begin_hunk_27_@_ZN6duckdb21TemplatedColumnReaderINS_10interval_tENS_23IntervalValueConversionEED0Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_10interval_tENS_23IntervalValueConversionEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1299
  br label %_ZN6duckdb21TemplatedColumnReaderINS_10interval_tENS_23IntervalValueConversionEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_10interval_tENS_23IntervalValueConversionEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1299
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_23IntervalValueConversionEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = mul i64 %3, 12                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.i, i64 11)
  %i.l = udiv i64 %i.k, 12
  %i.m = add i64 %3, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.o, 3                     ; 2 uses
  %i.p = icmp eq i64 %n.mod.vf, 0
  %i.q = select i1 %i.p, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.o, %i.q                 ; 4 uses
  %i.r = mul i64 %n.vec, -12
  %i.s = add i64 %i.i, %i.r
  %i.t = mul i64 %n.vec, 12
  %i.u = getelementptr i8, ptr %.promoted.i9.i, i64 %i.t
  %i.v = add i64 %i.i, -12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.w = phi i64 [ %i.v, %vector.ph ], [ %i.z, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.x = add i64 %i.w, -36
  %i.y = getelementptr i8, ptr %pointer.phi, i64 48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = add i64 %i.w, -48
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 48
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1300

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.x, ptr %i.h, align 8, !tbaa !389
  store ptr %i.y, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.s, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph17 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.u, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.ab = phi i64 [ %i.af, %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.ah, %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.ac = phi ptr [ %i.ag, %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph17, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.ab, 12
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #27
  resume { ptr, i32 } %i.ae

_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.af = add i64 %i.ab, -12                      ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !386
  %i.ah = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !1301

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_23IntervalValueConversionELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %3, 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !1302 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !1302, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !1302 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1302
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -12                        ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !1302
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !1302
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !1302
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -12                        ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !1302
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !1302
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !1305

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !1306
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !1306, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !1306
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !1306
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 12
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1306 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !1306

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !1306
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !1306
  resume { ptr, i32 } %i.ak

_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -12                      ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !1306
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !1306
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb23IntervalValueConversion9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i13, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %bb.i, !llvm.loop !1309

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %i.c, %.lr.ph.i ], [ %i.x, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %.epil.init27 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !211, !alias.scope !1302
  %i.as = zext i8 %i.ar to i64
  %.not.i.epil = icmp eq i64 %i.g, %i.as
  br i1 %.not.i.epil, label %bb.o, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

bb.o:                                             ; preds = %.epil.preheader
  %i.at = add i64 %.epil.init, -12
  store i64 %i.at, ptr %i.b, align 8, !tbaa !389, !noalias !1302
  %i.au = getelementptr inbounds nuw i8, ptr %.epil.init27, i64 12
  store ptr %i.au, ptr %1, align 8, !tbaa !386, !noalias !1302
  br label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit

_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit: ; preds = %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_23IntervalValueConversionELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, %bb.o, %.epil.preheader, %bb.n, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_10interval_tENS_23IntervalValueConversionEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = mul i64 %3, 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !755  ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.n = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.copyload.i4.i.i.i.i.prol = load i32, ptr %i.o, align 1
  %i.p = zext i32 %.0.copyload.i4.i.i.i.i.prol to i64
  %i.q = mul nuw nsw i64 %i.p, 1000
  %i.r = load i64, ptr %i.h, align 8, !tbaa !389
  %i.s = add i64 %i.r, -12
  store i64 %i.s, ptr %i.h, align 8, !tbaa !389
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store ptr %i.t, ptr %1, align 8, !tbaa !386
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %4 ; 2 uses
  store i64 %.0.copyload.i.i.i.i.i.prol, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8, !tbaa !281
  %i.v = add nuw i64 %4, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.017.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.v, %.lr.ph.i.i.prol ]
  %i.w = icmp eq i64 %3, 1
  br i1 %i.w, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i4.i.i.i.i = load i32, ptr %i.y, align 1
  %i.z = zext i32 %.0.copyload.i4.i.i.i.i to i64
  %i.aa = mul nuw nsw i64 %i.z, 1000
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !389
  %i.ac = add i64 %i.ab, -12
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !389
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store ptr %i.ad, ptr %1, align 8, !tbaa !386
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.017.i.i ; 2 uses
  store i64 %.0.copyload.i.i.i.i.i, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !281
  %i.af = load ptr, ptr %1, align 8, !tbaa !386   ; 3 uses
  %.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i4.i.i.i.i.1 = load i32, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i4.i.i.i.i.1 to i64
  %i.ai = mul nuw nsw i64 %i.ah, 1000
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !389
  %i.ak = add i64 %i.aj, -12
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !389
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store ptr %i.al, ptr %1, align 8, !tbaa !386
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.017.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.0.copyload.i.i.i.i.i.1, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !281
  %i.ao = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i, !llvm.loop !1310

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10interval_tENS_23IntervalValueConversionELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_10interval_tENS_23IntervalValueConversionELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul i64 %3, 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

end_hunk_27
begin_hunk_28_@_ZN6duckdb12ColumnReader22PlainTemplatedInternalINS_10interval_tENS_23IntervalValueConversionELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE:bb.a
  br i1 %.not.i.i, label %bb.c, label %_ZN6duckdb23IntervalValueConversion9PlainReadILb1EEENS_10interval_tERNS_10ByteBufferERNS_12ColumnReaderE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.39)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #27
  resume { ptr, i32 } %i.h

_ZN6duckdb23IntervalValueConversion9PlainReadILb1EEENS_10interval_tERNS_10ByteBufferERNS_12ColumnReaderE.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i4.i.i = load i32, ptr %i.j, align 1
  %i.k = zext i32 %.0.copyload.i4.i.i to i64
  %i.l = mul nuw nsw i64 %i.k, 1000
  %i.m = add i64 %i.f, -12
  store i64 %i.m, ptr %i.e, align 8, !tbaa !389
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store ptr %i.n, ptr %1, align 8, !tbaa !386
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.010 ; 2 uses
  store i64 %.0.copyload.i.i.i, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !281
  %i.p = add i64 %.010, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1316
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb16NullColumnReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb16NullColumnReaderE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !210
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !210
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb16NullColumnReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb16NullColumnReaderE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb16NullColumnReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1317
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1317
  br label %_ZN6duckdb16NullColumnReaderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb16NullColumnReaderD2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1318
  br label %_ZN6duckdb16NullColumnReaderD2Ev.exit

_ZN6duckdb16NullColumnReaderD2Ev.exit:            ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1318
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb16NullColumnReader5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !464  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.lr.ph.split, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new
  %.06.us = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new ], [ %i.w, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us ] ; 3 uses
  %niter = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader.new ], [ %niter.next.1, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us ]
  %i.f = add i64 %.06.us, %4                      ; 2 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = and i64 %i.f, 63
  %i.i = shl nuw i64 1, %i.h
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !281
  %i.m = and i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !281
  %i.n = or disjoint i64 %.06.us, 1
  %i.o = add i64 %i.n, %4                         ; 2 uses
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.o, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.p ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !281
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !281
  %i.w = add nuw i64 %.06.us, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit14.unr-lcssa, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, !llvm.loop !1319

._crit_edge.loopexit14.unr-lcssa:                 ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit14.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader
  %.06.us.epil.init = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.preheader ], [ %i.w, %._crit_edge.loopexit14.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.x = add i64 %.06.us.epil.init, %4            ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = and i64 %i.x, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = xor i64 %i.aa, -1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !281
  %i.ae = and i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !281
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.epil.preheader, %._crit_edge.loopexit14.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %i.af = phi ptr [ %i.ai, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ null, %.lr.ph ] ; 2 uses
  %.06 = phi i64 [ %i.aq, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ag = add i64 %.06, %4                        ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.b:                                             ; preds = %.lr.ph.split
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !471
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ah)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !464
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %.lr.ph.split, %bb.b
  %i.ai = phi ptr [ %.pre.i, %bb.b ], [ %i.af, %.lr.ph.split ] ; 2 uses
  %i.aj = lshr i64 %i.ag, 6
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = xor i64 %i.al, -1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !281
  %i.ap = and i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !281
  %i.aq = add nuw i64 %.06, 1                     ; 2 uses
  %exitcond8.not = icmp eq i64 %i.aq, %3
  br i1 %exitcond8.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1320
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN6duckdb19ParquetColumnSchemaE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTSN6duckdb13ParquetReaderE", !11, i64 0}
!14 = !{!15, !16, i64 24}
!15 = !{!"_ZTSN6duckdb12ColumnReaderE", !10, i64 8, !13, i64 16, !16, i64 24, !17, i64 32, !18, i64 40, !19, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !20, i64 80, !26, i64 96, !27, i64 104, !27, i64 112, !35, i64 120, !55, i64 240, !64, i64 264, !65, i64 288, !66, i64 320, !67, i64 344, !76, i64 368, !5, i64 416}
!16 = !{!"long", !5, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"p1 _ZTSN14duckdb_parquet11ColumnChunkE", !11, i64 0}
!19 = !{!"p1 _ZTSN13duckdb_apache6thrift8protocol9TProtocolE", !11, i64 0}
!20 = !{!"_ZTSN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEE", !21, i64 0}
!21 = !{!"_ZTSSt10shared_ptrIN6duckdb16ResizeableBufferEE", !22, i64 0}
!22 = !{!"_ZTSSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0, !24, i64 8}
!23 = !{!"p1 _ZTSN6duckdb16ResizeableBufferE", !11, i64 0}
!24 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!25 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!26 = !{!"_ZTSN6duckdb14ColumnEncodingE", !5, i64 0}
!27 = !{!"_ZTSN6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EEE", !28, i64 0}
!28 = !{!"_ZTSSt10unique_ptrIN6duckdb12RleBpDecoderESt14default_deleteIS1_EE", !29, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12RleBpDecoderESt14default_deleteIS1_ELb1ELb1EE", !30, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12RleBpDecoderESt14default_deleteIS1_EE", !31, i64 0}
!31 = !{!"_ZTSSt5tupleIJPN6duckdb12RleBpDecoderESt14default_deleteIS1_EEE", !32, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12RleBpDecoderESt14default_deleteIS1_EEE", !33, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12RleBpDecoderELb0EE", !34, i64 0}
!34 = !{!"p1 _ZTSN6duckdb12RleBpDecoderE", !11, i64 0}
!35 = !{!"_ZTSN6duckdb17DictionaryDecoderE", !36, i64 0, !23, i64 8, !27, i64 16, !37, i64 24, !37, i64 48, !16, i64 72, !43, i64 80, !47, i64 96, !16, i64 104, !17, i64 112}
!36 = !{!"p1 _ZTSN6duckdb12ColumnReaderE", !11, i64 0}
!37 = !{!"_ZTSN6duckdb15SelectionVectorE", !38, i64 0, !39, i64 8}
!38 = !{!"p1 int", !11, i64 0}
!39 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !40, i64 0}
!40 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !41, i64 0}
!41 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !24, i64 8}
!42 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !11, i64 0}
!43 = !{!"_ZTSN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEE", !44, i64 0}
!44 = !{!"_ZTSSt10shared_ptrIN6duckdb17VectorChildBufferEE", !45, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN6duckdb17VectorChildBufferELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !24, i64 8}
!46 = !{!"p1 _ZTSN6duckdb17VectorChildBufferE", !11, i64 0}
!47 = !{!"_ZTSN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb0EEE", !48, i64 0}
!48 = !{!"_ZTSSt10unique_ptrIA_bSt14default_deleteIS0_EE", !49, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataIbSt14default_deleteIA_bELb1ELb1EE", !50, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_implIbSt14default_deleteIA_bEE", !51, i64 0}
!51 = !{!"_ZTSSt5tupleIJPbSt14default_deleteIA_bEEE", !52, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJPbSt14default_deleteIA_bEEE", !53, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPbLb0EE", !54, i64 0}
!54 = !{!"p1 bool", !11, i64 0}
!55 = !{!"_ZTSN6duckdb24DeltaBinaryPackedDecoderE", !36, i64 0, !23, i64 8, !56, i64 16}
!56 = !{!"_ZTSN6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEE", !57, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10DbpDecoderESt14default_deleteIS1_ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10DbpDecoderESt14default_deleteIS1_EE", !60, i64 0}
!60 = !{!"_ZTSSt5tupleIJPN6duckdb10DbpDecoderESt14default_deleteIS1_EEE", !61, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10DbpDecoderESt14default_deleteIS1_EEE", !62, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10DbpDecoderELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN6duckdb10DbpDecoderE", !11, i64 0}
!64 = !{!"_ZTSN6duckdb10RLEDecoderE", !36, i64 0, !23, i64 8, !27, i64 16}
!65 = !{!"_ZTSN6duckdb27DeltaLengthByteArrayDecoderE", !36, i64 0, !23, i64 8, !16, i64 16, !16, i64 24}
!66 = !{!"_ZTSN6duckdb21DeltaByteArrayDecoderE", !36, i64 0, !20, i64 8}
!67 = !{!"_ZTSN6duckdb22ByteStreamSplitDecoderE", !36, i64 0, !23, i64 8, !68, i64 16}
!68 = !{!"_ZTSN6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EEE", !69, i64 0}
!69 = !{!"_ZTSSt10unique_ptrIN6duckdb10BssDecoderESt14default_deleteIS1_EE", !70, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10BssDecoderESt14default_deleteIS1_ELb1ELb1EE", !71, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10BssDecoderESt14default_deleteIS1_EE", !72, i64 0}
!72 = !{!"_ZTSSt5tupleIJPN6duckdb10BssDecoderESt14default_deleteIS1_EEE", !73, i64 0}
!73 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10BssDecoderESt14default_deleteIS1_EEE", !74, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10BssDecoderELb0EE", !75, i64 0}
!75 = !{!"p1 _ZTSN6duckdb10BssDecoderE", !11, i64 0}
!76 = !{!"_ZTSN6duckdb14CryptoMetaDataE", !77, i64 0, !5, i64 32, !80, i64 34, !80, i64 36, !80, i64 38, !81, i64 40}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0, !16, i64 8, !5, i64 16}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !79, i64 0}
!79 = !{!"p1 omnipotent char", !11, i64 0}
!80 = !{!"short", !5, i64 0}
!81 = !{!"_ZTSN6duckdb10unique_ptrINS_34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_ELb1EEE", !82, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EE", !83, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_ELb1ELb1EE", !84, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EE", !85, i64 0}
!85 = !{!"_ZTSSt5tupleIJPN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EEE", !86, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EEE", !87, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb34ParquetAdditionalAuthenticatedDataELb0EE", !88, i64 0}
!88 = !{!"p1 _ZTSN6duckdb34ParquetAdditionalAuthenticatedDataE", !11, i64 0}
!89 = !{!15, !17, i64 32}
!90 = !{!15, !18, i64 40}
end_hunk_28
