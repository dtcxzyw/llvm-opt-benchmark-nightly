Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_holistic?download=true
inline.NumInlined: 37468
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS3_EEE6insertERKS3_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !2289
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !2271
  store ptr %i.be, ptr %i.b, align 8, !tbaa !2270
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !2288
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !2271
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImfEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImfEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImfEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !2270 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !2290

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImfEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !2287
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !2274
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !2274
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !2274
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !2291

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !2274
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !2274
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !2274
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !2292
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !2292
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !2287
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !2271
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2292
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !2287
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !2287
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !2270 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !2271 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !2271 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !2274
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !2274
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !2270 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !2291

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !2291

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImfEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !2274
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !2274
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !2293

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !2223
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !2223
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIfE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIfE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIfE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !2294
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2206   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_0
begin_hunk_1_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS3_EEE6insertERKS3_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !2622
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !2604
  store ptr %i.be, ptr %i.b, align 8, !tbaa !2603
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !2621
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !2604
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImdEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImdEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImdEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !2603 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !2623

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImdEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !2620
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !2607
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !2607
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !2607
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !2624

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !2607
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !2607
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !2607
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !2625
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !2625
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !2620
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !2604
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2625
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !2620
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !2620
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !2603 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !2604 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !2604 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !2607
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !2607
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !2603 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !2624

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !2624

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !2607
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !2607
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !2626

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !2576
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !2576
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIdE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIdE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIdE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !2627
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2563   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_1
begin_hunk_2_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS3_EEE6insertERKS3_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !2897
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !2879
  store ptr %i.be, ptr %i.b, align 8, !tbaa !2878
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !2896
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !2879
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImsEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImsEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImsEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !2878 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !2898

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImsEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !2895
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !2882
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !2882
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !2882
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !2899

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !2882
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !2882
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !2882
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !2900
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !2900
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !2895
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !2879
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2900
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !2895
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !2895
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !2878 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !2879 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !2879 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !2882
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !2882
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !2878 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !2899

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !2899

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImsEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !2882
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !2882
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !2901

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !2851
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !2851
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIsE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIsE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIsE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !2902
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2832   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_2
begin_hunk_3_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS3_EEE6insertERKS3_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !3170
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !3152
  store ptr %i.be, ptr %i.b, align 8, !tbaa !3151
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !3169
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !3152
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImiEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImiEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImiEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !3151 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !3171

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImiEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !3168
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3155
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !3155
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !3155
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !3172

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !3155
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !3155
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !3155
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !3173
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !3173
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !3168
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !3152
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3173
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !3168
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !3168
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !3151 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !3152 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !3152 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !3155
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !3155
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !3151 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !3172

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !3172

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImiEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !3155
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !3155
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !3174

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !3124
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !3124
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIiE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIiE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIiE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !3175
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3105   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_3
begin_hunk_4_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS3_EEE6insertERKS3_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !3439
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !3421
  store ptr %i.be, ptr %i.b, align 8, !tbaa !3420
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !3438
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !3421
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImlEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImlEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImlEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !3420 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !3440

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImlEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !3437
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3424
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !3424
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !3424
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !3441

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !3424
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !3424
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !3424
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !3442
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !3442
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !3437
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !3421
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3442
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !3437
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !3437
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !3420 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !3421 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !3421 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !3424
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !3424
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !3420 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !3441

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !3441

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImlEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !3424
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !3424
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !3443

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !3393
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !3393
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIlE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIlE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIlE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !3444
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3374   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_4
begin_hunk_5_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE6insertERKS5_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !3708
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !3690
  store ptr %i.be, ptr %i.b, align 8, !tbaa !3689
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !3707
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !3690
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !3689 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !3709

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !3706
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3693
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !3693
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !3693
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !3710

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !3693
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !3693
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !3693
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !3711
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !3711
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !3706
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !3690
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3711
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !3706
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !3706
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !3689 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !3690 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !3690 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !3693
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !3693
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !3689 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !3710

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !3710

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb9hugeint_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !3693
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !3693
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !3712

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !3663
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !3663
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateINS_9hugeint_tEE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEESB_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !3713
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_9hugeint_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3644   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_9hugeint_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_5
begin_hunk_6_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE6insertERKS5_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !3993
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !3975
  store ptr %i.be, ptr %i.b, align 8, !tbaa !3974
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !3992
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !3975
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !3974 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !3994

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !3991
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3978
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !3978
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !3978
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !3995

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !3978
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !3978
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !3978
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !3996
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !3996
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !3991
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !3975
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3996
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !3991
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !3991
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !3974 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !3975 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !3975 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !3978
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !3978
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !3974 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !3995

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !3995

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !3978
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !3978
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !3997

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !3947
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !3947
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateINS_6date_tEE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEESB_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_6date_tEE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_6date_tEE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !3998
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_6date_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3934   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_6date_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_6
begin_hunk_7_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE6insertERKS5_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !4262
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !4244
  store ptr %i.be, ptr %i.b, align 8, !tbaa !4243
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !4261
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !4244
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !4243 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !4263

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !4260
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !4247
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !4247
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !4247
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !4264

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !4247
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !4247
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !4247
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !4265
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !4265
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !4260
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !4244
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !4265
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !4260
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !4260
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !4243 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !4244 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !4244 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !4247
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !4247
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !4243 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !4264

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !4264

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !4247
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !4247
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !4266

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !4216
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !4216
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateINS_11timestamp_tEE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEESB_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !4267
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_11timestamp_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4203   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_11timestamp_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_7
begin_hunk_8_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE6insertERKS5_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !4532
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !4514
  store ptr %i.be, ptr %i.b, align 8, !tbaa !4513
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !4531
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !4514
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !4513 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !4533

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !4530
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !4517
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !4517
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !4517
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !4534

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !4517
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !4517
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !4517
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !4535
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !4535
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !4530
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !4514
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !4535
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !4530
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !4530
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !4513 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !4514 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !4514 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !4517
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !4517
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !4513 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !4534

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !4534

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb7dtime_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !4517
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !4517
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !4536

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !4487
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !4487
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateINS_7dtime_tEE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEESB_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_7dtime_tEE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_7dtime_tEE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !4537
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_7dtime_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4468   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_7dtime_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_8
begin_hunk_9_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS3_EEE6insertERKS3_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !8646
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !8626
  store ptr %i.be, ptr %i.b, align 8, !tbaa !8625
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !8645
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !8626
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImaEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImaEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImaEN6duckdb8SkipLessIS4_EEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !8625 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !8647

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImaEN6duckdb8SkipLessIS3_EEE9push_backEPNS0_4NodeIS3_S6_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !8644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !8629
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !8629
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !8629
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !8648

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !8629
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !8629
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !8629
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !8649
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !8649
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !8644
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !8626
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !8649
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !8644
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !8644
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !8625 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !8626 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !8626 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !8629
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !8629
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !8625 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !8648

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !8648

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImaEN6duckdb8SkipLessIS3_EEE5_Pool8AllocateERKS3_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !8629
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !8629
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !8650

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !8598
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !8598
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIaE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIaE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateIaE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !8651
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8578   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_9
begin_hunk_10_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE6insertERKS5_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !8945
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !8925
  store ptr %i.be, ptr %i.b, align 8, !tbaa !8924
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !8944
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !8925
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !8924 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !8946

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !8943
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !8928
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !8928
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !8928
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !8947

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !8928
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !8928
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !8928
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !8948
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !8948
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !8943
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !8925
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !8948
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !8943
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !8943
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !8924 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !8925 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !8925 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !8928
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !8928
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !8924 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !8947

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !8947

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb10interval_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !8928
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !8928
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !8949

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !8898
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !8898
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateINS_10interval_tEE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEESB_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_10interval_tEE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_10interval_tEE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !8950
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_10interval_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8878   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_10interval_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_10
begin_hunk_11_@_ZN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE6insertERKS5_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #31 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !9127
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !59
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #34
  br label %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !9107
  store ptr %i.be, ptr %i.b, align 8, !tbaa !9106
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !9126
  %.pre66 = load ptr, ptr %i.v, align 8, !tbaa !9107
  br label %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit

_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit: ; preds = %bb.i, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i
  %i.bg = phi ptr [ %i.am, %bb.i ], [ %.pre66, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bh = phi ptr [ %i.an, %bb.i ], [ %i.bb, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bi = phi ptr [ %i.au, %bb.i ], [ %i.be, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ao, %bb.i ], [ %i.bf, %_ZNSt6vectorIN18duckdb_skiplistlib9skip_list7NodeRefISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ]
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !9106 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !9128

._crit_edge.loopexit:                             ; preds = %_ZN18duckdb_skiplistlib9skip_list21SwappableNodeRefStackISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE9push_backEPNS0_4NodeIS5_S7_EEm.exit
  %.pre67 = load i64, ptr %i.w, align 8, !tbaa !9125
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi ptr [ %i.z, %.preheader ], [ %i.bn, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %.pre69, %.preheader ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bu = phi i64 [ %i.x, %.preheader ], [ %.pre67, %._crit_edge.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %.pre70, %.preheader ], [ %i.bh, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bg, %._crit_edge.loopexit ] ; 5 uses
  %i.bw = icmp ult i64 %.1, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9110
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.lcssa, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !9110
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !9110
  %i.ce = add nuw i64 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2 = phi i64 [ %i.ce, %bb.n ], [ %.1, %._crit_edge ] ; 4 uses
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.2, %i.ci
  br i1 %i.cj, label %.lr.ph55.preheader, label %.critedge

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = ptrtoint ptr %.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ult i64 %i.bu, %i.cn
  br i1 %i.co, label %.lr.ph116, label %.critedge

.lr.ph55:                                         ; preds = %bb.q
  %i.cp = ptrtoint ptr %i.dl to i64
  %i.cq = ptrtoint ptr %i.dm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.dk, %i.cs
  br i1 %i.ct, label %.lr.ph116, label %.critedge, !llvm.loop !9129

.lr.ph116:                                        ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.353115 = phi i64 [ %i.dx, %.lr.ph55 ], [ %.2, %.lr.ph55.preheader ] ; 4 uses
  %i.cu = phi ptr [ %.pre68, %.lr.ph55 ], [ %i.bv, %.lr.ph55.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.dk, %.lr.ph55 ], [ %i.bu, %.lr.ph55.preheader ] ; 2 uses
  %i.cw = phi ptr [ %i.dm, %.lr.ph55 ], [ %.lcssa, %.lr.ph55.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.353115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !9110
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.353115
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !9110
  %reass.sub = sub i64 %i.dc, %i.cz
  %i.dd = add i64 %reass.sub, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !9110
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !9130
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !9130
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !9125
  %i.dh = load ptr, ptr %i.v, align 8, !tbaa !9107
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !9130
  %i.dj = load i64, ptr %i.w, align 8, !tbaa !9125
  %i.dk = add i64 %i.dj, 1                        ; 7 uses
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !9125
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !9106 ; 4 uses
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !9107 ; 6 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4
  %i.dr = icmp ult i64 %i.dk, %i.dq
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !9107 ; 5 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph116
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre68, i64 %.353115
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !9110
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !9110
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph116
  %i.dx = add nuw i64 %.353115, 1                 ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !9106 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pre68 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %.lr.ph55, label %..critedge.loopexit_crit_edge, !llvm.loop !9129

..critedge.loopexit_crit_edge:                    ; preds = %bb.q
  br label %.critedge, !llvm.loop !9129

.critedge:                                        ; preds = %.lr.ph55, %.lr.ph55.preheader, %..critedge.loopexit_crit_edge, %bb.o, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit
  %i.ee = phi ptr [ %i.aa, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.lcssa, %bb.o ], [ %.lcssa, %.lr.ph55.preheader ], [ %i.dm, %..critedge.loopexit_crit_edge ], [ %i.dm, %.lr.ph55 ]
  %i.ef = phi ptr [ %i.z, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bs, %bb.o ], [ %i.bs, %.lr.ph55.preheader ], [ %i.dl, %..critedge.loopexit_crit_edge ], [ %i.dl, %.lr.ph55 ]
  %i.eg = phi ptr [ %.pre70, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph55.preheader ], [ %.pre68, %..critedge.loopexit_crit_edge ], [ %.pre68, %.lr.ph55 ] ; 2 uses
  %i.eh = phi ptr [ %.pre69, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bt, %bb.o ], [ %i.bt, %.lr.ph55.preheader ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %.lr.ph55 ]
  %i.ei = phi i64 [ %i.x, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %i.bu, %bb.o ], [ %i.bu, %.lr.ph55.preheader ], [ %i.dk, %..critedge.loopexit_crit_edge ], [ %i.dk, %.lr.ph55 ]
  %.4 = phi i64 [ %.1, %_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb8string_tEENS3_8SkipLessIS5_EEE5_Pool8AllocateERKS5_.exit ], [ %.2, %bb.o ], [ %.2, %.lr.ph55.preheader ], [ %i.dx, %..critedge.loopexit_crit_edge ], [ %i.dx, %.lr.ph55 ] ; 2 uses
  %i.ej = icmp ult i64 %.4, %i.ei
  %i.ek = zext i1 %i.ej to i64
  %spec.select = add i64 %.4, %i.ek               ; 3 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4                 ; 2 uses
  %i.ep = icmp ult i64 %spec.select, %i.eo
  br i1 %i.ep, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %.critedge
  %i.eq = ptrtoint ptr %i.ef to i64
  %i.er = ptrtoint ptr %i.ee to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %.not43 = icmp ult i64 %spec.select, %i.et
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph60, %bb.s
  %.659 = phi i64 [ %spec.select, %.lr.ph60 ], [ %i.eu, %bb.s ] ; 2 uses
  br i1 %.not43, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = add nuw i64 %.659, 1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !9110
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !9110
  %3 = icmp ult i64 %i.eu, %i.eo
  br i1 %3, label %bb.r, label %.critedge2, !llvm.loop !9131

.critedge2:                                       ; preds = %bb.r, %bb.s, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !9080
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !9080
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateINS_8string_tEE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEESB_RT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1995
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1995
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1993
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1993
  %i.l = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 %i.l, ptr %3, align 8, !tbaa !1995
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !1993
  %i.n = icmp ult i64 %i.e, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.05864 = phi i64 [ %i.e, %.lr.ph ], [ %.0, %bb.j ] ; 6 uses
  %.05963 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.06062 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.j ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !2252
  %i.r = load ptr, ptr %0, align 8, !tbaa !2208
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ult i64 %.06062, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06062) ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1995
  %.not = icmp ule i64 %i.y, %.05864
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ult i64 %.05864, %i.aa
  %narrow = select i1 %.not, i1 %i.ab, i1 false
  %i.ac = zext i1 %narrow to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.056 = phi ptr [ %i.x, %bb.c ], [ %3, %bb.b ]  ; 5 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !2252
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %.05963, %i.ai
  br i1 %i.aj, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963) ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1995
  %.not61 = icmp ugt i64 %i.al, %.05864
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp uge i64 %.05864, %i.an
  %i.ap = select i1 %.not61, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, i8 0, i8 2
  %spec.select = or disjoint i8 %i.aq, %.057
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1 = phi i8 [ %spec.select, %bb.e ], [ %.057, %bb.d ]
  %.055 = phi ptr [ %i.ak, %bb.e ], [ %3, %bb.d ] ; 5 uses
  switch i8 %.1, label %bb.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %select.unfold
  %i.ar = load i64, ptr %.055, align 8, !tbaa !1995
  %i.as = load i64, ptr %.056, align 8, !tbaa !1995
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  br label %bb.j

bb.g:                                             ; preds = %select.unfold
  %i.au = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1993
  %i.aw = load i64, ptr %.055, align 8, !tbaa !1995
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_8string_tEE15SkipListUpdater4LeftEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.ax)
  br label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1993
  %i.ba = load i64, ptr %.056, align 8, !tbaa !1995
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  tail call void @_ZN6duckdb19WindowQuantileStateINS_8string_tEE15SkipListUpdater5RightEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.05864, i64 noundef %i.bb)
  br label %bb.j

bb.i:                                             ; preds = %select.unfold
  %i.bc = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1993
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1993
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.bg, %bb.i ], [ %i.at, %bb.f ], [ %i.ax, %bb.g ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = icmp eq i64 %.0, %i.bi
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.06062, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1993
  %i.bo = icmp eq i64 %.0, %i.bn
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.05963, %i.bp
  %i.br = icmp ult i64 %.0, %i.l
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !9132
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_8string_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9060   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImNS_8string_tEENS_8SkipLessIS6_EEEESt14default_deleteIS9_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_11
