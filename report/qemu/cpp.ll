inline.NumInlined: 552
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Plugin7at_exitEv:bb.a
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %2, align 8, !alias.scope !25 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bu
  br i1 %i.cj, label %.body, label %.body.sink.split

bb.u:                                             ; preds = %.critedge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.u, %bb.s
  %i.cl = load ptr, ptr %2, align 8
  invoke void @qemu_plugin_outs(ptr noundef %i.cl)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = load ptr, ptr %2, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bu
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.co = load i64, ptr %i.bu, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cq, ptr %1, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cv, ptr %i.af, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.cz, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cw, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #19
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.de, ptr %1, align 8
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dg = getelementptr i8, ptr %i.de, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
  store ptr %i.df, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.not.i.i.i = icmp eq ptr %.sroa.065.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dl = ptrtoint ptr %.sroa.18.0 to i64
  %i.dm = ptrtoint ptr %.sroa.065.0 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.065.0, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.w
  ret void

bb.x:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %2, align 8               ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bu
  br i1 %i.dq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.t
  %.sink = phi ptr [ %i.ci, %bb.t ], [ %i.dp, %bb.x ]
  %.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %i.do, %bb.x ]
  %i.dr = load i64, ptr %i.bu, align 8
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ds) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %i.do, %bb.x ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %.body, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %.pn, %.body ], [ %i.bt, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.l
  %.sroa.18.094 = phi ptr [ %.sroa.18.0, %bb.l ], [ %.sroa.18.0, %bb.z ], [ %.sroa.12.0, %.loopexit ], [ %.sroa.12.0, %.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn.pn.pn.pn, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i48 = icmp eq ptr %.sroa.065.0, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit49, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = ptrtoint ptr %.sroa.18.094 to i64
  %i.du = ptrtoint ptr %.sroa.065.0 to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.065.0, i64 noundef %i.dv) #21
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit49

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit49:      ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @qemu_plugin_outs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #12 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph25
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph25, !llvm.loop !26

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1824 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01923 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.g = add i64 %.01923, -1                      ; 3 uses
  %i.h = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEESC_SC_SC_SF_(ptr %0, ptr %storemerge1824) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_T1_(ptr %i.h, ptr %storemerge1824, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 256
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.019.i.idx = phi i64 [ %.sroa.08.019.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn18.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.019.i.idx ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.e, align 8
  %i.i = icmp ugt i64 %i.g, %i.h
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.08.019.i.ptr, align 8 ; 2 uses
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %2 = add i64 %indvar, 1
  %i.j = lshr exact i64 %.sroa.08.019.i.idx, 4    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32 ; 2 uses
  %xtraiter56 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i64, ptr %i.l, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !27

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i64, ptr %i.t, align 8
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i64, ptr %i.z, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i64, ptr %i.af, align 8
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8
  store i64 %i.an, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !29

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8
  store i64 %i.g, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ugt i64 %i.g, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %i.au, %bb.c ]
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.019.i.ptr, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  %i.ax = load i64, ptr %.sroa.0.0.i.i, align 8
  store i64 %i.ax, ptr %.sroa.05.08.i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 8
  store i64 %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp ugt i64 %i.g, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i, !llvm.loop !30

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.05.0.lcssa.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %i.bc, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.019.i.add = add nuw nsw i64 %.sroa.08.019.i.idx, 16 ; 2 uses
  %i.bd = icmp eq i64 %.sroa.08.019.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %bb.b, !llvm.loop !31

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit: ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i13
  %.sroa.0.06.i = phi ptr [ %i.bq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i13 ], [ %i.be, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit ] ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.bg = load <2 x i64>, ptr %.sroa.0.06.i, align 8
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -8
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp ugt i64 %.sroa.5.0.copyload.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i13

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i15
  %i.bk = phi i64 [ %i.bo, %.lr.ph.i.i15 ], [ %i.bi, %.lr.ph.i12 ]
  %.sroa.05.08.i.i16 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i15 ], [ %.sroa.0.06.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i16, i64 -16 ; 3 uses
  %i.bl = load i64, ptr %.sroa.0.0.i.i17, align 8
  store i64 %i.bl, ptr %.sroa.05.08.i.i16, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i16, i64 8
  store i64 %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds i8, ptr %.sroa.05.08.i.i16, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ugt i64 %.sroa.5.0.copyload.i.i, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i13, !llvm.loop !30

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i13: ; preds = %.lr.ph.i.i15, %.lr.ph.i12
  %.sroa.05.0.lcssa.i.i14 = phi ptr [ %.sroa.0.06.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i17, %.lr.ph.i.i15 ]
  store <2 x i64> %i.bg, ptr %.sroa.05.0.lcssa.i.i14, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %1
  br i1 %i.br, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.lr.ph.i12, !llvm.loop !32

bb.e:                                             ; preds = %bb.a
  %i.bs = icmp eq ptr %0, %1
  br i1 %i.bs, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.e
  %.sroa.08.017.i19 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %.sroa.08.017.i19, %1
  br i1 %i.bt, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.preheader.i18
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i20
  %.sroa.08.019.i21 = phi ptr [ %.sroa.08.017.i19, %.lr.ph.i20 ], [ %.sroa.08.0.i26, %bb.i ] ; 8 uses
  %.pn18.i22 = phi ptr [ %0, %.lr.ph.i20 ], [ %.sroa.08.019.i21, %bb.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 24
  %i.bw = load i64, ptr %i.bv, align 8            ; 5 uses
  %i.bx = load i64, ptr %i.bu, align 8
  %i.by = icmp ugt i64 %i.bw, %i.bx
  %.sroa.0.0.copyload.i23 = load i64, ptr %.sroa.08.019.i21, align 8 ; 2 uses
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = ptrtoint ptr %.sroa.08.019.i21 to i64
  %i.ca = sub i64 %i.bz, %i.b
  %i.cb = ashr exact i64 %i.ca, 4                 ; 5 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.preheader.i31, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

.lr.ph.i.i.i.i.i.preheader.i31:                   ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 32 ; 2 uses
  %xtraiter = and i64 %i.cb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i.i32.prol

.lr.ph.i.i.i.i.i.i32.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i31, %.lr.ph.i.i.i.i.i.i32.prol
  %.010.i.i.i.i.i.i33.prol = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i32.prol ], [ %i.cb, %.lr.ph.i.i.i.i.i.preheader.i31 ]
  %.069.i.i.i.i.i.i34.prol = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i32.prol ], [ %i.cd, %.lr.ph.i.i.i.i.i.preheader.i31 ] ; 2 uses
  %.078.i.i.i.i.i.i35.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i32.prol ], [ %.sroa.08.019.i21, %.lr.ph.i.i.i.i.i.preheader.i31 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i31 ]
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.prol, i64 -16 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.prol, i64 -16 ; 3 uses
  %i.cg = load i64, ptr %i.ce, align 8
  store i64 %i.cg, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.prol, i64 -8
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.prol, i64 -8
  store i64 %i.ci, ptr %i.cj, align 8
  %i.ck = add nsw i64 %.010.i.i.i.i.i.i33.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i.i32.prol, !llvm.loop !33

.lr.ph.i.i.i.i.i.i32.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i.preheader.i31
  %.010.i.i.i.i.i.i33.unr = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.ck, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.069.i.i.i.i.i.i34.unr = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.078.i.i.i.i.i.i35.unr = phi ptr [ %.sroa.08.019.i21, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i32.prol ]
  %i.cl = icmp ult i64 %i.cb, 4
  br i1 %i.cl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30, label %.lr.ph.i.i.i.i.i.i32
end_hunk_0
