Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/miniflann?download=true
inline.NumInlined: 9150
inline.NumDeleted: 2944
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN7cvflann11KMeansIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.bf = phi i32 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %._crit_edge.i.i60

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  store i32 2147483647, ptr %i.ba, align 8, !tbaa !276
  br label %._crit_edge.i.i60

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bi = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ae
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bn = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.an
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !128
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.bs = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aw
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.k
  %i.bu = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

._crit_edge.i.i60:                                ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bw, ptr %7, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.bx, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.by, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.bz = invoke noundef i32 @_ZN7cvflann9get_paramINS_20flann_centers_init_tEEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS9_ESaISt4pairIKS9_SA_EEERSE_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %._crit_edge.i.i60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cb = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bw
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !128
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #30
  %.pre78 = load i32, ptr %i.ca, align 4, !tbaa !1070
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.cf = phi i32 [ %.pre78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  switch i32 %i.cf, label %bb.p [
    i32 0, label %bb.u
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i60
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.ch = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bw
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.m
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !128
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.y

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  br label %bb.u

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7cvflann11KMeansIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_, ptr noundef nonnull @.str.66, i32 noundef 373) #33
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.t:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.t
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !128
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.s
  %.pn28 = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.cm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.n, %bb.o
  %.sink = phi i64 [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE21chooseCentersGonzalesEiPiiS3_Ri to i64), %bb.n ], [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri to i64), %bb.o ], [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE19chooseCentersRandomEiPiiS3_Ri to i64), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cs, align 8, !tbaa !277
  %.repack31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.repack31, align 8, !tbaa !277
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 4.000000e-01, ptr %i.ct, align 8, !tbaa !278
  %i.cu = load i32, ptr %i.ar, align 4, !tbaa !275 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i32 %i.cu, 0
  %i.cx = shl nsw i64 %i.cv, 3
  %i.cy = select i1 %i.cw, i64 -1, i64 %i.cx
  %i.cz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #32
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  store ptr %i.cz, ptr %i.u, align 8, !tbaa !279
  %i.da = load i32, ptr %i.ar, align 4, !tbaa !275 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i32 %i.da, 0
  %i.dd = shl nsw i64 %i.db, 3
  %i.de = select i1 %i.dc, i64 -1, i64 %i.dd
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #32
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.df, ptr %i.v, align 8, !tbaa !280
  %i.dg = load i32, ptr %i.ar, align 4, !tbaa !275 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %i.dk, i1 false), !tbaa !282
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.dk, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn33 = phi { ptr, i32 } [ %i.dl, %bb.x ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not2.i = icmp eq ptr %i.dm, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.dn = phi ptr [ %i.do, %.lr.ph.i ], [ %i.dm, %bb.y ] ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !208 ; 3 uses
  call void @free(ptr noundef nonnull %i.dn) #31
  store ptr %i.do, ptr %i.y, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !12

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i, %bb.y
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #31
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !262
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !224
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.f, ptr %3, align 8, !tbaa !202
  %i.n = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.b, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.j, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !118
  store i64 %i.t, ptr %i.k, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.n, ptr %i.h, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i32 8192, ptr %i.x, align 8, !tbaa !264
  store i32 0, ptr %i.w, align 8, !tbaa !265
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.z, align 4, !tbaa !266
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.aa, align 8, !tbaa !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.ab, align 8, !tbaa !287
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load <2 x i64>, ptr %i.e, align 8, !tbaa !127
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.af, align 8, !tbaa !122
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.ag, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 32, ptr %i.a, align 4, !tbaa !129
  %i.ah = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.aj = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ae
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.an, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.ao, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.ap, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 0, ptr %i.b, align 4, !tbaa !166
  %i.aq = invoke noundef i32 @_ZN7cvflann9get_paramINS_20flann_centers_init_tEEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS9_ESaISt4pairIKS9_SA_EEERSE_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.as = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.an
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.f
  %i.au = load i64, ptr %i.an, align 8, !tbaa !128
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aw, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.ax, align 8, !tbaa !122
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.ay, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 4, ptr %i.c, align 4, !tbaa !129
  %i.az = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.bb = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aw
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bf, ptr %7, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bf, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.bg, align 8, !tbaa !122
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 0, ptr %i.bh, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 100, ptr %i.d, align 4, !tbaa !129
  %i.bi = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.bk = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bf
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.h
  %i.bm = load i64, ptr %i.bf, align 8, !tbaa !128
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bo = load i32, ptr %i.ar, align 4, !tbaa !1071
  switch i32 %i.bo, label %bb.p [
    i32 0, label %bb.u
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bq = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ae
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.i
  %i.bs = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bv = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.j
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !128
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ca = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aw
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.k
  %i.cc = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cf = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.ch = load i64, ptr %i.bf, align 8, !tbaa !128
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.y

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_, ptr noundef nonnull @.str.82, i32 noundef 385) #33
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.t:                                             ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !128
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.ck, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.m, %bb.o, %bb.n
  %.sink = phi i64 [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersGonzalesEiPiiS3_Ri to i64), %bb.m ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE22GroupWiseCenterChooserEiPiiS3_Ri to i64), %bb.o ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri to i64), %bb.n ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE19chooseCentersRandomEiPiiS3_Ri to i64), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cq, align 8, !tbaa !291
  %.repack28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.repack28, align 8, !tbaa !291
  %i.cr = load i32, ptr %i.ba, align 8, !tbaa !289 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i32 %i.cr, 0
  %i.cu = shl nsw i64 %i.cs, 3
  %i.cv = select i1 %i.ct, i64 -1, i64 %i.cu
  %i.cw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cv) #32
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  store ptr %i.cw, ptr %i.u, align 8, !tbaa !292
  %i.cx = load i32, ptr %i.ba, align 8, !tbaa !289 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i32 %i.cx, 0
  %i.da = shl nsw i64 %i.cy, 3
  %i.db = select i1 %i.cz, i64 -1, i64 %i.da
  %i.dc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #32
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.dc, ptr %i.v, align 8, !tbaa !293
  %i.dd = load i32, ptr %i.ba, align 8, !tbaa !289 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.df = load ptr, ptr %i.u, align 8, !tbaa !292
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.dh, i1 false), !tbaa !295
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dc, i8 0, i64 %i.dh, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn30 = phi { ptr, i32 } [ %i.di, %bb.x ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not2.i = icmp eq ptr %i.dj, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.dj, %bb.y ] ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !208 ; 3 uses
  call void @free(ptr noundef nonnull %i.dk) #31
  store ptr %i.dl, ptr %i.y, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !12

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i, %bb.y
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #31
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann8LshIndexINS_10HammingLUTEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !262
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !202
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i unwind label %bb.i ; 3 uses

.noexc.i.i:                                       ; preds = %bb.b, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.k, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  store i64 %i.u, ptr %i.l, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.o, ptr %i.i, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.x, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.y, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 12, ptr %i.b, align 4, !tbaa !129
  %i.z = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ab = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.w
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !128
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !126
  store i64 7312272889233368427, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.ag, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ah, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 20, ptr %i.c, align 4, !tbaa !129
  %i.ai = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ak = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.af
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.f
  %i.am = load i64, ptr %i.af, align 8, !tbaa !128
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 17, ptr %i.a, align 8, !tbaa !127
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  store ptr %i.ap, ptr %6, align 8, !tbaa !123
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ap, ptr noundef nonnull align 1 dereferenceable(17) @.str.13, i64 17, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !122
  %i.as = load ptr, ptr %6, align 8, !tbaa !123
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 2, ptr %i.d, align 4, !tbaa !129
  %i.au = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %.noexc27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.aw = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ao
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !128
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #30
  %.pre = load i32, ptr %i.av, align 8, !tbaa !1072
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.ba = phi i32 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.au, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !308
  %i.bd = trunc i64 %i.bc to i32
end_hunk_0
begin_hunk_1_@_ZN7cvflann11KMeansIndexINS_10HammingLUTEE21chooseCentersGonzalesEiPiiS3_Ri:bb.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i.us.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !128
  %i.cd = xor i8 %i.cc, %i.ca
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !128
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %.0910.i.us.us, %i.ch
  %i.cj = or disjoint i64 %.011.i.us.us, 1        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !128
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cj
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !128
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !128
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.ci, %i.cs            ; 3 uses
  %i.cu = add nuw i64 %.011.i.us.us, 2            ; 2 uses
  %niter152.next.1 = add nuw i64 %niter152, 2     ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !14

.lr.ph.i48.preheader.us.us.preheader.unr-lcssa:   ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod148.not, label %.lr.ph.i48.preheader.us.us.preheader, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph.i.us.us.preheader
  %.011.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.cu, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ] ; 2 uses
  %.0910.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.ct, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 %.011.i.us.us.epil.init
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !128
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i.us.us.epil.init
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !128
  %i.cz = xor i8 %i.cy, %i.cw
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !128
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nuw nsw i32 %.0910.i.us.us.epil.init, %i.dd
  br label %.lr.ph.i48.preheader.us.us.preheader

.lr.ph.i48.preheader.us.us.preheader:             ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa141 = phi i32 [ %i.ct, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ], [ %i.de, %.lr.ph.i.us.us.epil.preheader ]
  br label %.lr.ph.i48.preheader.us.us

.lr.ph.i48.preheader.us.us:                       ; preds = %.lr.ph.i48.preheader.us.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ 1, %.lr.ph.i48.preheader.us.us.preheader ] ; 2 uses
  %.03656.us66.us = phi i32 [ %spec.select46.us67.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ %.lcssa141, %.lr.ph.i48.preheader.us.us.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv108
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !129
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.x, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.di ; 3 uses
  br i1 %i.ae, label %.lr.ph.i48.us.us.epil.preheader, label %.lr.ph.i48.us.us

.lr.ph.i48.us.us:                                 ; preds = %.lr.ph.i48.preheader.us.us, %.lr.ph.i48.us.us
  %.011.i49.us.us = phi i64 [ %i.ef, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ] ; 4 uses
  %.0910.i50.us.us = phi i32 [ %i.ee, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.011.i49.us.us
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i49.us.us
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !128
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !128
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %.0910.i50.us.us, %i.ds
  %i.du = or disjoint i64 %.011.i49.us.us, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !128
  %i.dx = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.du
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !128
  %i.dz = xor i8 %i.dy, %i.dw
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !128
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.dt, %i.ed            ; 3 uses
  %i.ef = add nuw i64 %.011.i49.us.us, 2          ; 2 uses
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, label %.lr.ph.i48.us.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i48.us.us
  br i1 %lcmp.mod154.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us, label %.lr.ph.i48.us.us.epil.preheader

.lr.ph.i48.us.us.epil.preheader:                  ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.preheader.us.us
  %.011.i49.us.us.epil.init = phi i64 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.ef, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0910.i50.us.us.epil.init = phi i32 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.ee, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.011.i49.us.us.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !128
  %i.ei = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i49.us.us.epil.init
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !128
  %i.ek = xor i8 %i.ej, %i.eh
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !128
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %.0910.i50.us.us.epil.init, %i.eo
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.us.us.epil.preheader
  %.lcssa142 = phi i32 [ %i.ee, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ], [ %i.ep, %.lr.ph.i48.us.us.epil.preheader ]
  %spec.select46.us67.us = tail call i32 @llvm.smin.i32(i32 %.lcssa142, i32 %.03656.us66.us) ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %indvars.iv118
  br i1 %exitcond112.not, label %._crit_edge.us.us, label %.lr.ph.i48.preheader.us.us, !llvm.loop !1082

._crit_edge.us.us:                                ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us, %.lr.ph61.split.us.us
  %.us-phi.us.us = phi i32 [ 0, %.lr.ph61.split.us.us ], [ %spec.select46.us67.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ] ; 2 uses
  %i.eq = icmp sgt i32 %.us-phi.us.us, %.03959.us.us
  %i.er = trunc nuw nsw i64 %indvars.iv113 to i32
  %spec.select.us.us = select i1 %i.eq, i32 %i.er, i32 %.04158.us.us ; 2 uses
  %spec.select45.us.us = tail call i32 @llvm.smax.i32(i32 %.us-phi.us.us, i32 %.03959.us.us)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge62.us, label %.lr.ph61.split.us.us, !llvm.loop !1081

._crit_edge62.us:                                 ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92, %._crit_edge.us.us
  %.us-phi70.us = phi i32 [ %spec.select.us.us, %._crit_edge.us.us ], [ %spec.select.us94, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ] ; 2 uses
  %.not.us = icmp eq i32 %.us-phi70.us, -1
  br i1 %.not.us, label %._crit_edge.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge62.us
  %i.es = sext i32 %.us-phi70.us to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %2, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !129
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv118
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !129
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.preheader.us, !llvm.loop !1083

._crit_edge.loopexit.split.loop.exit:             ; preds = %._crit_edge62.us
  %i.ew = trunc nuw nsw i64 %indvars.iv118 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %._crit_edge62.us.thread, %bb.a
  %.043.lcssa = phi i32 [ 1, %bb.a ], [ %i.ag, %._crit_edge62.us.thread ], [ %i.ew, %._crit_edge.loopexit.split.loop.exit ], [ %1, %bb.b ]
  store i32 %.043.lcssa, ptr %5, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(212) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 9 uses
  %i.b = icmp slt i32 %3, 0
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #32 ; 13 uses
  %i.f = sitofp i32 %3 to double
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !330  ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !330
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 2147483647
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nnan double %i.o, f0x3E00000000000000
  %i.q = fmul double %i.p, %i.f
  %i.r = fptosi double %i.q to i32
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129  ; 2 uses
  store i32 %i.u, ptr %4, align 4, !tbaa !129
  %i.v = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader107

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !223  ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !328 ; 5 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %xtraiter = and i64 %i.ae, 1
  %i.af = icmp eq i64 %i.ae, 1
  %unroll_iter = and i64 %i.ae, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod214 = trunc i64 %i.ae to i1
  br label %.lr.ph.i.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader: ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.c, i1 false), !tbaa !129
  br label %.preheader107

.preheader107:                                    ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, %bb.a
  %.073.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader ], [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ]
  %i.ag = icmp sgt i32 %1, 1
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge133

.preheader.lr.ph:                                 ; preds = %.preheader107
  %i.ah = add i32 %3, -1                          ; 2 uses
  %i.ai = icmp sgt i32 %3, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %wide.trip.count176 = zext nneg i32 %1 to i64
  %wide.trip.count151 = zext nneg i32 %i.ah to i64
  %xtraiter221 = and i64 %i.a, 3                  ; 3 uses
  %i.am = icmp ult i32 %3, 4
  %unroll_iter225 = and i64 %i.a, 2147483644
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  %lcmp.mod224 = icmp ne i64 %xtraiter221, 0
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %.073111 = phi double [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i.preheader.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.z, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aq ; 3 uses
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bn, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.bm, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !128
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !128
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %.0910.i, %i.ba
  %i.bc = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !128
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !128
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bb, %i.bl            ; 3 uses
  %i.bn = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bn, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !128
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !128
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %.0910.i.epil.init, %i.bw
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa211 = phi i32 [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bz = mul nuw nsw i32 %.lcssa211, %.lcssa211  ; 2 uses
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !129
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = fadd double %.073111, %i.ca             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %.preheader107, label %.lr.ph.i.preheader, !llvm.loop !1084

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge130
  %indvars.iv173 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next174, %._crit_edge130 ] ; 3 uses
  %.1132 = phi double [ %.073.lcssa, %.preheader.lr.ph ], [ %.075.lcssa184, %._crit_edge130 ]
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !330 ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = mul nuw i64 %i.ce, 4164903690
  %i.cg = lshr i64 %i.cd, 32
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !330
  br i1 %i.ai, label %.lr.ph114.preheader, label %._crit_edge

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = uitofp nneg i32 %i.cj to double
  %i.cl = fmul nnan double %i.ck, f0x3E00000000000000
  %i.cm = tail call noundef double @llvm.fmuladd.f64(double %.1132, double %i.cl, double 0.000000e+00)
  br label %.lr.ph114

.lr.ph129.loopexit.unr-lcssa:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us
  br i1 %lcmp.mod222.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader: ; preds = %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader
  %indvars.iv158.epil.init = phi i64 [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %indvars.iv.next159.3, %.lr.ph129.loopexit.unr-lcssa ]
  %.075118.us.epil.init = phi double [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %i.es, %.lr.ph129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader
  %indvars.iv158.epil = phi i64 [ %indvars.iv.next159.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %indvars.iv158.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ] ; 2 uses
  %.075118.us.epil = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %.075118.us.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv158.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %.sroa.speculated104.us.epil = tail call i32 @llvm.smin.i32(i32 %i.co, i32 0)
  %i.cp = sitofp i32 %.sroa.speculated104.us.epil to double
  %i.cq = fadd double %.075118.us.epil, %i.cp     ; 2 uses
  %indvars.iv.next159.epil = add nuw nsw i64 %indvars.iv158.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter221
  br i1 %epil.iter.cmp.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, !llvm.loop !1085

.lr.ph129:                                        ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit, %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil
  %.075.lcssa185 = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %i.es, %.lr.ph129.loopexit.unr-lcssa ], [ %i.gi, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv173
  store i32 %i.du, ptr %i.cr, align 4, !tbaa !129
  %i.cs = sext i32 %.084.lcssa to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cs
  %i.cu = load ptr, ptr %i.aj, align 8, !tbaa !222 ; 2 uses
  %i.cv = load i64, ptr %i.ak, align 8, !tbaa !223 ; 2 uses
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !129
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cy ; 3 uses
  %i.da = load i64, ptr %i.al, align 8, !tbaa !328 ; 5 uses
  %.not.i94 = icmp eq i64 %i.da, 0
  br i1 %.not.i94, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader, label %.lr.ph.i95.preheader.preheader

.lr.ph.i95.preheader.preheader:                   ; preds = %.lr.ph129
  %xtraiter227 = and i64 %i.da, 1
  %i.db = icmp eq i64 %i.da, 1
  %unroll_iter232 = and i64 %i.da, -2
  %lcmp.mod229.not = icmp eq i64 %xtraiter227, 0
  %lcmp.mod231 = trunc i64 %i.da to i1
  br label %.lr.ph.i95.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader: ; preds = %.lr.ph129
  br i1 %min.iters.check, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader204, label %vector.body

vector.body:                                      ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !129
  %wide.load203 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !129
  %i.de = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.df = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load203, <4 x i32> zeroinitializer)
  store <4 x i32> %i.de, ptr %i.dc, align 4, !tbaa !129
  store <4 x i32> %i.df, ptr %i.dd, align 4, !tbaa !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !1086

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader204

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader204: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader, %middle.block
  %indvars.iv168.ph = phi i64 [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader204, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us ], [ %indvars.iv168.ph, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader204 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv168 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !129
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.di, i32 0)
  store i32 %.sroa.speculated.us, ptr %i.dh, align 4, !tbaa !129
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %i.a
  br i1 %exitcond172.not, label %._crit_edge130, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us, !llvm.loop !1087

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.b
  %indvars.iv148 = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next149, %bb.b ] ; 3 uses
  %.076113 = phi double [ %i.cm, %.lr.ph114.preheader ], [ %i.dn, %bb.b ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv148
end_hunk_1
begin_hunk_2_@_ZN7cvflann11KMeansIndexINS_10HammingLUTEE12free_centersEPNS2_10KMeansNodeE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE17computeClusteringEPNS2_10KMeansNodeEPiiii(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::vector.69", align 8    ; 15 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 17 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %3, ptr %i.b, align 4, !tbaa !349
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %5, ptr %i.c, align 8, !tbaa !1106
  %i.d = icmp slt i32 %3, %4
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.e, align 8, !tbaa !350
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %.idx138 = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %2, i64 %.idx138 ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %2, ptr noundef nonnull %i.g, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %2, ptr noundef nonnull %i.g)
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !348
  br label %bb.aj

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.l = sext i32 %4 to i64                       ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !352
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i98 = icmp ugt i32 %4, 264              ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !353
  br i1 %.not.i.i98, label %bb.e, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i32 %4, 0
  %i.p = shl nuw nsw i64 %i.l, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #32 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !352
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack = load i64, ptr %i.t, align 8, !tbaa !277 ; 3 uses
  %.elt90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack91 = load i64, ptr %.elt90, align 8, !tbaa !277
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.unpack91 ; 2 uses
  %i.v = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.x = getelementptr i8, ptr %i.w, i64 %.unpack
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load ptr, ptr %i.y, align 8, !nosanitize !163
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.aa = inttoptr i64 %.unpack to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi ptr [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i32 noundef %4, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !129
  %i.ad = icmp slt i32 %i.ac, %4
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.ae, align 8, !tbaa !350
  %i.af = sext i32 %3 to i64                      ; 2 uses
  %.idx = shl nsw i64 %i.af, 2
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %.idx ; 2 uses
  %.not.i.i99 = icmp eq i32 %3, 0
  br i1 %.not.i.i99, label %_ZSt4sortIPiEvT_S1_.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag, i64 noundef %i.aj)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag)
          to label %_ZSt4sortIPiEvT_S1_.exit101 unwind label %bb.l

_ZSt4sortIPiEvT_S1_.exit101:                      ; preds = %bb.j, %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !348
  br label %bb.ah

bb.l:                                             ; preds = %.noexc, %bb.k, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.am = icmp slt i32 %4, 0
  br i1 %i.am, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc102 unwind label %bb.s

.noexc102:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread200, label %bb.o

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread200: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !352
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ap, align 8, !tbaa !353
  br label %._crit_edge

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aq = shl nuw nsw i64 %i.l, 2                 ; 2 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #32
          to label %.noexc103 unwind label %bb.s  ; 6 uses

.noexc103:                                        ; preds = %bb.o
  store ptr %i.ar, ptr %7, align 8, !tbaa !321
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !323
  store i32 0, ptr %i.ar, align 4, !tbaa !129
  %i.au = getelementptr i8, ptr %i.ar, i64 4      ; 3 uses
  %i.av = add nsw i64 %i.l, -1                    ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106, label %bb.p

bb.p:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !129
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !352
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ba, align 8, !tbaa !353
  br i1 %.not.i.i98, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #32
          to label %.noexc105 unwind label %bb.t  ; 2 uses

.noexc105:                                        ; preds = %bb.q
  store ptr %i.bb, ptr %8, align 8, !tbaa !352
  br label %.lr.ph

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106:          ; preds = %.noexc103
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !352
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.be, align 8, !tbaa !353
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.noexc105, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106
  %i.bf = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.az, %.noexc105 ], [ %i.az, %bb.p ]
  %i.bg = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.bb, %.noexc105 ], [ %i.az, %bb.p ] ; 2 uses
  %i.bh = zext nneg i32 %4 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.bi, i1 false), !tbaa !129
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bi, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread200, %.lr.ph
  %i.bj = phi ptr [ %i.bf, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread200 ] ; 2 uses
  %i.bk = phi ptr [ %i.bg, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread200 ] ; 8 uses
  %i.bl = phi ptr [ %i.ar, %.lr.ph ], [ null, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread200 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.bm = sext i32 %3 to i64                      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !352
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i107 = icmp ugt i32 %3, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !353
  br i1 %.not.i.i107, label %bb.r, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.r:                                             ; preds = %._crit_edge
  %i.bp = shl nuw nsw i64 %i.bm, 2
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #32
          to label %.noexc108 unwind label %bb.aa ; 2 uses

.noexc108:                                        ; preds = %bb.r
  store ptr %i.bq, ptr %9, align 8, !tbaa !352
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit133

bb.t:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit131

_ZN2cv10AutoBufferIiLm264EEC2Em.exit109:          ; preds = %.noexc108, %._crit_edge
  %i.bt = phi ptr [ %i.bq, %.noexc108 ], [ %i.bn, %._crit_edge ] ; 8 uses
  %i.bu = icmp sgt i32 %3, 0
  br i1 %i.bu, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !222 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !223 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !334 ; 12 uses
  %.not.i = icmp eq i64 %i.ca, 0                  ; 2 uses
  %i.cb = icmp samesign ugt i32 %4, 1
  %wide.trip.count180 = zext nneg i32 %3 to i64   ; 4 uses
  br i1 %i.cb, label %.lr.ph146.split.us.preheader, label %.lr.ph146.split

.lr.ph146.split.us.preheader:                     ; preds = %.lr.ph146
  %wide.trip.count174 = zext nneg i32 %4 to i64
  %i.cc = add i64 %i.ca, -1                       ; 2 uses
  %xtraiter231 = and i64 %i.ca, 1
  %i.cd = icmp eq i64 %i.cc, 0
  %unroll_iter235 = and i64 %i.ca, -2
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  %lcmp.mod234 = trunc i64 %i.ca to i1
  %xtraiter237 = and i64 %i.ca, 1
  %i.ce = icmp eq i64 %i.cc, 0
  %unroll_iter241 = and i64 %i.ca, -2
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod240 = trunc i64 %i.ca to i1
  br label %.lr.ph146.split.us

.lr.ph146.split.us:                               ; preds = %.lr.ph146.split.us.preheader, %bb.x
  %indvars.iv177 = phi i64 [ 0, %.lr.ph146.split.us.preheader ], [ %indvars.iv.next178, %bb.x ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv177
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !129
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.by, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ci ; 6 uses
  %i.ck = load i32, ptr %i.s, align 4, !tbaa !129
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.by, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cm ; 3 uses
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.us.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph146.split.us
  br i1 %i.cd, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.011.i.us = phi i64 [ %i.dj, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 4 uses
  %.0910.i.us = phi i32 [ %i.di, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %niter236 = phi i64 [ %niter236.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.011.i.us
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !128
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.011.i.us
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !128
  %i.cs = xor i8 %i.cr, %i.cp
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !128
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %.0910.i.us, %i.cw
  %i.cy = or disjoint i64 %.011.i.us, 1           ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !128
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !128
  %i.dd = xor i8 %i.dc, %i.da
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !128
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nuw nsw i32 %i.cx, %i.dh            ; 3 uses
  %i.dj = add nuw i64 %.011.i.us, 2               ; 2 uses
  %niter236.next.1 = add nuw i64 %niter236, 2     ; 2 uses
  %niter236.ncmp.1 = icmp eq i64 %niter236.next.1, %unroll_iter235
  br i1 %niter236.ncmp.1, label %.lr.ph.i111.preheader.us.preheader.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !14

.lr.ph.i111.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod232.not, label %.lr.ph.i111.preheader.us.preheader, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.i111.preheader.us.preheader.unr-lcssa, %.lr.ph.i.us.preheader
  %.011.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %i.dj, %.lr.ph.i111.preheader.us.preheader.unr-lcssa ] ; 2 uses
  %.0910.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.preheader ], [ %i.di, %.lr.ph.i111.preheader.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod234)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.011.i.us.epil.init
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.011.i.us.epil.init
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !128
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !128
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %.0910.i.us.epil.init, %i.ds
  br label %.lr.ph.i111.preheader.us.preheader

.lr.ph.i111.preheader.us.preheader:               ; preds = %.lr.ph.i111.preheader.us.preheader.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa = phi i32 [ %i.di, %.lr.ph.i111.preheader.us.preheader.unr-lcssa ], [ %i.dt, %.lr.ph.i.us.epil.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv177 ; 3 uses
  store i32 0, ptr %i.du, align 4, !tbaa !129
  br label %.lr.ph.i111.preheader.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.us.us.preheader: ; preds = %.lr.ph146.split.us
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv177 ; 2 uses
  store i32 0, ptr %i.dv, align 4, !tbaa !129
  br label %._crit_edge144.us

.lr.ph.i111.preheader.us:                         ; preds = %.lr.ph.i111.preheader.us.preheader, %bb.v
  %i.dw = phi i32 [ 0, %.lr.ph.i111.preheader.us.preheader ], [ %i.fk, %bb.v ]
  %indvars.iv171 = phi i64 [ 1, %.lr.ph.i111.preheader.us.preheader ], [ %indvars.iv.next172, %bb.v ] ; 3 uses
  %.076141.us150 = phi i32 [ %.lcssa, %.lr.ph.i111.preheader.us.preheader ], [ %.1.us151, %bb.v ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv171
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul i64 %i.by, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ea ; 3 uses
  br i1 %i.ce, label %.lr.ph.i111.us.epil.preheader, label %.lr.ph.i111.us

.lr.ph.i111.us:                                   ; preds = %.lr.ph.i111.preheader.us, %.lr.ph.i111.us
  %.011.i112.us = phi i64 [ %i.ex, %.lr.ph.i111.us ], [ 0, %.lr.ph.i111.preheader.us ] ; 4 uses
  %.0910.i113.us = phi i32 [ %i.ew, %.lr.ph.i111.us ], [ 0, %.lr.ph.i111.preheader.us ]
  %niter242 = phi i64 [ %niter242.next.1, %.lr.ph.i111.us ], [ 0, %.lr.ph.i111.preheader.us ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.011.i112.us
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !128
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.011.i112.us
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !128
  %i.eg = xor i8 %i.ef, %i.ed
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !128
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %.0910.i113.us, %i.ek
  %i.em = or disjoint i64 %.011.i112.us, 1        ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !128
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !128
  %i.er = xor i8 %i.eq, %i.eo
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !128
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nuw nsw i32 %i.el, %i.ev            ; 3 uses
  %i.ex = add nuw i64 %.011.i112.us, 2            ; 2 uses
  %niter242.next.1 = add i64 %niter242, 2         ; 2 uses
  %niter242.ncmp.1 = icmp eq i64 %niter242.next.1, %unroll_iter241
  br i1 %niter242.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.loopexit.us.unr-lcssa, label %.lr.ph.i111.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i111.us
  br i1 %lcmp.mod238.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.loopexit.us, label %.lr.ph.i111.us.epil.preheader

.lr.ph.i111.us.epil.preheader:                    ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.loopexit.us.unr-lcssa, %.lr.ph.i111.preheader.us
  %.011.i112.us.epil.init = phi i64 [ 0, %.lr.ph.i111.preheader.us ], [ %i.ex, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.loopexit.us.unr-lcssa ] ; 2 uses
  %.0910.i113.us.epil.init = phi i32 [ 0, %.lr.ph.i111.preheader.us ], [ %i.ew, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit116.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.011.i112.us.epil.init
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !128
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.011.i112.us.epil.init
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !128
  %i.fc = xor i8 %i.fb, %i.ez
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !128
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %.0910.i113.us.epil.init, %i.fg
end_hunk_2
begin_hunk_3_@_ZN7cvflann4HeapINS_12BranchStructIPNS_11KMeansIndexINS_10HammingLUTEE10KMeansNodeEiEEE6popMinERS7_:bb.a
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.u, i64 %i.s ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.e, i64 %spec.select.i.i.i
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i64 12, i1 false), !tbaa.struct !389
  %i.ad = icmp slt i64 %spec.select.i.i.i, %i.p
  br i1 %i.ad, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1181

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.ae = and i64 %i.m, 16
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = add nsw i64 %i.n, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.ah
  br i1 %i.ai, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %bb.d
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ak
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !tbaa.struct !389
  br label %.lr.ph.i.i.i.i.preheader

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterIS9_EEEEEvT_SK_SK_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e, %.thread.i.i
  %.019.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.e ], [ %i.ak, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i89.i.i, %bb.f ], [ %.019.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i89.i.i = lshr i64 %.0920.in.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0920.i.i89.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !392
  %i.aq = icmp slt i32 %.sroa.4.0.copyload.i.i, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterIS9_EEEEEvT_SK_SK_RT0_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false), !tbaa.struct !389
  %.not10.i.i = icmp eq i64 %.0920.i.i89.i.i, 0
  br i1 %.not10.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterIS9_EEEEEvT_SK_SK_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterIS9_EEEEEvT_SK_SK_RT0_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %i.as, align 8, !tbaa !282
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !129
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !387
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS2_7greaterIS9_EEEvT_SH_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS2_7greaterIS9_EEEvT_SH_T0_.exit: ; preds = %bb.b, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterIS9_EEEEEvT_SK_SK_RT0_.exit.i
  %i.at = phi ptr [ %i.f, %bb.b ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterIS9_EEEEEvT_SK_SK_RT0_.exit.i ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16
  store ptr %i.au, ptr %i.b, align 8, !tbaa !387
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEESt6vectorIS9_SaIS9_EEEENS2_7greaterIS9_EEEvT_SH_T0_.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE17getCenterOrderingEPNS2_10KMeansNodeEPKhPi(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = icmp slt i32 %i.b, 0
  %i.e = shl nsw i64 %i.c, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #32 ; 9 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !274
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !348
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !334  ; 5 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph38
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %i.m, 1
  %unroll_iter = and i64 %i.m, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i64 %i.m to i1
  br label %.lr.ph.i.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us:   ; preds = %.lr.ph38, %._crit_edge.us
  %indvar59 = phi i64 [ %indvar.next60, %._crit_edge.us ], [ 0, %.lr.ph38 ] ; 5 uses
  %i.o = shl nuw nsw i64 %indvar59, 2             ; 3 uses
  %scevgep65 = getelementptr i8, ptr %3, i64 %i.o
  %i.p = add nsw i64 %i.o, -4                     ; 2 uses
  %scevgep68 = getelementptr i8, ptr %3, i64 %i.p
  %scevgep61 = getelementptr i8, ptr %i.g, i64 %i.o
  %scevgep63 = getelementptr i8, ptr %i.g, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.b ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us ] ; 6 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv56
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129
  %i.s = icmp slt i32 %i.r, 0
  %i.t = icmp samesign ult i64 %indvars.iv56, %indvar59 ; 2 uses
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br i1 %i.u, label %bb.b, label %.preheader.us, !llvm.loop !1183

._crit_edge.us:                                   ; preds = %.lr.ph.us.preheader, %.preheader.us
  store i32 0, ptr %i.aa, align 4, !tbaa !129
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv56
  %i.w = trunc nuw nsw i64 %indvar59 to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !129
  %indvar.next60 = add nuw nsw i64 %indvar59, 1   ; 2 uses
  %i.x = load i32, ptr %i.a, align 8, !tbaa !274
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvar.next60, %i.y
  br i1 %i.z, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us, label %._crit_edge39, !llvm.loop !1184

.preheader.us:                                    ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv56
  br i1 %i.t, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.ab = xor i64 %indvars.iv56, -1
  %i.ac = add nsw i64 %indvar59, %i.ab
  %i.ad = and i64 %i.ac, 4294967295               ; 2 uses
  %i.ae = mul nsw i64 %i.ad, -4                   ; 4 uses
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.ae
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = add nuw nsw i64 %i.af, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep62, ptr noundef nonnull align 4 dereferenceable(1) %scevgep64, i64 %i.ag, i1 false), !tbaa !129
  %scevgep67 = getelementptr i8, ptr %scevgep65, i64 %i.ae
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep67, ptr noundef nonnull align 4 dereferenceable(1) %scevgep69, i64 %i.ag, i1 false), !tbaa !129
  br label %._crit_edge.us

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.lr.ph.i.preheader.preheader ] ; 6 uses
  %i.ah = shl nuw nsw i64 %indvar, 2              ; 3 uses
  %scevgep47 = getelementptr i8, ptr %3, i64 %i.ah
  %i.ai = add nsw i64 %i.ah, -4                   ; 2 uses
  %scevgep50 = getelementptr i8, ptr %3, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.ah
  %scevgep45 = getelementptr i8, ptr %i.g, i64 %i.ai
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvar
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !282
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !347 ; 3 uses
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bh, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.bg, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.011.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.011.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !128
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !128
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %.0910.i, %i.au
  %i.aw = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !128
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !128
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !128
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %i.av, %i.bf            ; 3 uses
  %i.bh = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bh, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bg, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %.011.i.epil.init
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 %.011.i.epil.init
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !128
  %i.bm = xor i8 %i.bl, %i.bj
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !128
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %.0910.i.epil.init, %i.bq
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa85 = phi i32 [ %i.bg, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader.unr-lcssa ], [ %i.br, %.lr.ph.i.epil.preheader ] ; 2 uses
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.preheader ] ; 6 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !129
  %i.bu = icmp slt i32 %i.bt, %.lcssa85
  %i.bv = icmp samesign ult i64 %indvars.iv, %indvar ; 2 uses
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.bw, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.preheader, !llvm.loop !1183

.preheader:                                       ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  br i1 %i.bv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.by = xor i64 %indvars.iv, -1
  %i.bz = add nsw i64 %indvar, %i.by
  %i.ca = and i64 %i.bz, 4294967295               ; 2 uses
  %i.cb = mul nsw i64 %i.ca, -4                   ; 4 uses
  %scevgep44 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.cb
  %i.cc = shl nuw nsw i64 %i.ca, 2
  %i.cd = add nuw nsw i64 %i.cc, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep44, ptr noundef nonnull align 4 dereferenceable(1) %scevgep46, i64 %i.cd, i1 false), !tbaa !129
  %scevgep49 = getelementptr i8, ptr %scevgep47, i64 %i.cb
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.cb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep49, ptr noundef nonnull align 4 dereferenceable(1) %scevgep51, i64 %i.cd, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  store i32 %.lcssa85, ptr %i.bx, align 4, !tbaa !129
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.cf = trunc nuw nsw i64 %indvar to i32
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !129
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !274
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvar.next, %i.ch
  br i1 %i.ci, label %.lr.ph.i.preheader, label %._crit_edge39, !llvm.loop !1184

._crit_edge39:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIiZN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrIS9_EERKT_iiE16HeapMapValueTypeSt4hashIiESt8equal_toIiESaISt4pairIKiSH_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #31
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN7cvflann4HeapINS_12BranchStructIPNS_11KMeansIndexINS_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrIS8_EERKT_iiEN16HeapMapValueTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !17
  br label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare noundef i32 @_ZN2cv13getNumThreadsEv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !378 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !341  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !343
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !344
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !1185
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !1185
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 40) #30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1186

_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISD_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSN_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !374
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !375
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !374    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !375
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_10HammingLUTEE10KMeansNodeEiEEE17getPooledInstanceIiEEN2cv3PtrISB_EERKT_iiE16HeapMapValueTypeESaISK_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_10HammingLUTEE10KMeansNodeEiEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
end_hunk_3
begin_hunk_4_@_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersGonzalesEiPiiS3_Ri:bb.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i.us.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !128
  %i.cd = xor i8 %i.cc, %i.ca
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !128
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %.0910.i.us.us, %i.ch
  %i.cj = or disjoint i64 %.011.i.us.us, 1        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !128
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cj
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !128
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !128
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.ci, %i.cs            ; 3 uses
  %i.cu = add nuw i64 %.011.i.us.us, 2            ; 2 uses
  %niter152.next.1 = add nuw i64 %niter152, 2     ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !14

.lr.ph.i48.preheader.us.us.preheader.unr-lcssa:   ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod148.not, label %.lr.ph.i48.preheader.us.us.preheader, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph.i.us.us.preheader
  %.011.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.cu, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ] ; 2 uses
  %.0910.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.ct, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 %.011.i.us.us.epil.init
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !128
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i.us.us.epil.init
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !128
  %i.cz = xor i8 %i.cy, %i.cw
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !128
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nuw nsw i32 %.0910.i.us.us.epil.init, %i.dd
  br label %.lr.ph.i48.preheader.us.us.preheader

.lr.ph.i48.preheader.us.us.preheader:             ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa141 = phi i32 [ %i.ct, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ], [ %i.de, %.lr.ph.i.us.us.epil.preheader ]
  br label %.lr.ph.i48.preheader.us.us

.lr.ph.i48.preheader.us.us:                       ; preds = %.lr.ph.i48.preheader.us.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ 1, %.lr.ph.i48.preheader.us.us.preheader ] ; 2 uses
  %.03656.us66.us = phi i32 [ %spec.select46.us67.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ %.lcssa141, %.lr.ph.i48.preheader.us.us.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv108
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !129
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.x, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.di ; 3 uses
  br i1 %i.ae, label %.lr.ph.i48.us.us.epil.preheader, label %.lr.ph.i48.us.us

.lr.ph.i48.us.us:                                 ; preds = %.lr.ph.i48.preheader.us.us, %.lr.ph.i48.us.us
  %.011.i49.us.us = phi i64 [ %i.ef, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ] ; 4 uses
  %.0910.i50.us.us = phi i32 [ %i.ee, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.011.i49.us.us
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i49.us.us
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !128
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !128
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %.0910.i50.us.us, %i.ds
  %i.du = or disjoint i64 %.011.i49.us.us, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !128
  %i.dx = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.du
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !128
  %i.dz = xor i8 %i.dy, %i.dw
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !128
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.dt, %i.ed            ; 3 uses
  %i.ef = add nuw i64 %.011.i49.us.us, 2          ; 2 uses
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, label %.lr.ph.i48.us.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i48.us.us
  br i1 %lcmp.mod154.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us, label %.lr.ph.i48.us.us.epil.preheader

.lr.ph.i48.us.us.epil.preheader:                  ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.preheader.us.us
  %.011.i49.us.us.epil.init = phi i64 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.ef, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0910.i50.us.us.epil.init = phi i32 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.ee, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.011.i49.us.us.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !128
  %i.ei = getelementptr inbounds nuw i8, ptr %i.by, i64 %.011.i49.us.us.epil.init
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !128
  %i.ek = xor i8 %i.ej, %i.eh
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !128
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %.0910.i50.us.us.epil.init, %i.eo
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.us.us.epil.preheader
  %.lcssa142 = phi i32 [ %i.ee, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ], [ %i.ep, %.lr.ph.i48.us.us.epil.preheader ]
  %spec.select46.us67.us = tail call i32 @llvm.smin.i32(i32 %.lcssa142, i32 %.03656.us66.us) ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %indvars.iv118
  br i1 %exitcond112.not, label %._crit_edge.us.us, label %.lr.ph.i48.preheader.us.us, !llvm.loop !1210

._crit_edge.us.us:                                ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us, %.lr.ph61.split.us.us
  %.us-phi.us.us = phi i32 [ 0, %.lr.ph61.split.us.us ], [ %spec.select46.us67.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ] ; 2 uses
  %i.eq = icmp sgt i32 %.us-phi.us.us, %.03959.us.us
  %i.er = trunc nuw nsw i64 %indvars.iv113 to i32
  %spec.select.us.us = select i1 %i.eq, i32 %i.er, i32 %.04158.us.us ; 2 uses
  %spec.select45.us.us = tail call i32 @llvm.smax.i32(i32 %.us-phi.us.us, i32 %.03959.us.us)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge62.us, label %.lr.ph61.split.us.us, !llvm.loop !1209

._crit_edge62.us:                                 ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92, %._crit_edge.us.us
  %.us-phi70.us = phi i32 [ %spec.select.us.us, %._crit_edge.us.us ], [ %spec.select.us94, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ] ; 2 uses
  %.not.us = icmp eq i32 %.us-phi70.us, -1
  br i1 %.not.us, label %._crit_edge.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge62.us
  %i.es = sext i32 %.us-phi70.us to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %2, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !129
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv118
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !129
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.preheader.us, !llvm.loop !1211

._crit_edge.loopexit.split.loop.exit:             ; preds = %._crit_edge62.us
  %i.ew = trunc nuw nsw i64 %indvars.iv118 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %._crit_edge62.us.thread, %bb.a
  %.043.lcssa = phi i32 [ 1, %bb.a ], [ %i.ag, %._crit_edge62.us.thread ], [ %i.ew, %._crit_edge.loopexit.split.loop.exit ], [ %1, %bb.b ]
  store i32 %.043.lcssa, ptr %5, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 9 uses
  %i.b = icmp slt i32 %3, 0
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #32 ; 13 uses
  %i.f = sitofp i32 %3 to double
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !330  ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !330
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 2147483647
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nnan double %i.o, f0x3E00000000000000
  %i.q = fmul double %i.p, %i.f
  %i.r = fptosi double %i.q to i32
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129  ; 2 uses
  store i32 %i.u, ptr %4, align 4, !tbaa !129
  %i.v = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader107

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !223  ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !398 ; 5 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %xtraiter = and i64 %i.ae, 1
  %i.af = icmp eq i64 %i.ae, 1
  %unroll_iter = and i64 %i.ae, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod218 = trunc i64 %i.ae to i1
  br label %.lr.ph.i.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader: ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.c, i1 false), !tbaa !129
  br label %.preheader107

.preheader107:                                    ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, %bb.a
  %.073.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader ], [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ]
  %i.ag = icmp sgt i32 %1, 1
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge133

.preheader.lr.ph:                                 ; preds = %.preheader107
  %i.ah = add i32 %3, -1                          ; 2 uses
  %i.ai = icmp sgt i32 %3, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count176 = zext nneg i32 %1 to i64
  %wide.trip.count151 = zext nneg i32 %i.ah to i64
  %xtraiter225 = and i64 %i.a, 3                  ; 3 uses
  %i.am = icmp ult i32 %3, 4
  %unroll_iter229 = and i64 %i.a, 2147483644
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %lcmp.mod228 = icmp ne i64 %xtraiter225, 0
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %.073111 = phi double [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i.preheader.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.z, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aq ; 3 uses
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bn, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.bm, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !128
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !128
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %.0910.i, %i.ba
  %i.bc = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !128
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !128
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bb, %i.bl            ; 3 uses
  %i.bn = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bn, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !128
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !128
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %.0910.i.epil.init, %i.bw
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa215 = phi i32 [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bz = mul nuw nsw i32 %.lcssa215, %.lcssa215  ; 2 uses
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !129
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = fadd double %.073111, %i.ca             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %.preheader107, label %.lr.ph.i.preheader, !llvm.loop !1212

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge130
  %indvars.iv173 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next174, %._crit_edge130 ] ; 3 uses
  %.1132 = phi double [ %.073.lcssa, %.preheader.lr.ph ], [ %.075.lcssa187, %._crit_edge130 ]
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !330 ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = mul nuw i64 %i.ce, 4164903690
  %i.cg = lshr i64 %i.cd, 32
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !330
  br i1 %i.ai, label %.lr.ph114.preheader, label %._crit_edge

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = uitofp nneg i32 %i.cj to double
  %i.cl = fmul nnan double %i.ck, f0x3E00000000000000
  %i.cm = tail call noundef double @llvm.fmuladd.f64(double %.1132, double %i.cl, double 0.000000e+00)
  br label %.lr.ph114

.lr.ph129.loopexit.unr-lcssa:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us
  br i1 %lcmp.mod226.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader: ; preds = %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader
  %indvars.iv158.epil.init = phi i64 [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %indvars.iv.next159.3, %.lr.ph129.loopexit.unr-lcssa ]
  %.075118.us.epil.init = phi double [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %i.er, %.lr.ph129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader
  %indvars.iv158.epil = phi i64 [ %indvars.iv.next159.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %indvars.iv158.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ] ; 2 uses
  %.075118.us.epil = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %.075118.us.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv158.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %.sroa.speculated104.us.epil = tail call i32 @llvm.smin.i32(i32 %i.co, i32 0)
  %i.cp = sitofp i32 %.sroa.speculated104.us.epil to double
  %i.cq = fadd double %.075118.us.epil, %i.cp     ; 2 uses
  %indvars.iv.next159.epil = add nuw nsw i64 %indvars.iv158.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter225
  br i1 %epil.iter.cmp.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, !llvm.loop !1213

.lr.ph129:                                        ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit, %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil
  %.075.lcssa188 = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %i.er, %.lr.ph129.loopexit.unr-lcssa ], [ %i.gh, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv173
  store i32 %i.dt, ptr %i.cr, align 4, !tbaa !129
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dr
  %i.ct = load ptr, ptr %i.aj, align 8, !tbaa !222 ; 2 uses
  %i.cu = load i64, ptr %i.ak, align 8, !tbaa !223 ; 2 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !129
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cx ; 3 uses
  %i.cz = load i64, ptr %i.al, align 8, !tbaa !398 ; 5 uses
  %.not.i94 = icmp eq i64 %i.cz, 0
  br i1 %.not.i94, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader, label %.lr.ph.i95.preheader.preheader

.lr.ph.i95.preheader.preheader:                   ; preds = %.lr.ph129
  %xtraiter231 = and i64 %i.cz, 1
  %i.da = icmp eq i64 %i.cz, 1
  %unroll_iter236 = and i64 %i.cz, -2
  %lcmp.mod233.not = icmp eq i64 %xtraiter231, 0
  %lcmp.mod235 = trunc i64 %i.cz to i1
  br label %.lr.ph.i95.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader: ; preds = %.lr.ph129
  br i1 %min.iters.check, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader208, label %vector.body

vector.body:                                      ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.db, align 4, !tbaa !129
  %wide.load207 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !129
  %i.dd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.de = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load207, <4 x i32> zeroinitializer)
  store <4 x i32> %i.dd, ptr %i.db, align 4, !tbaa !129
  store <4 x i32> %i.de, ptr %i.dc, align 4, !tbaa !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1214

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader208

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader208: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader, %middle.block
  %indvars.iv168.ph = phi i64 [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader208, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us ], [ %indvars.iv168.ph, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us.preheader208 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv168 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !129
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 0)
  store i32 %.sroa.speculated.us, ptr %i.dg, align 4, !tbaa !129
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %i.a
  br i1 %exitcond172.not, label %._crit_edge130, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us, !llvm.loop !1215

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.b
  %indvars.iv148 = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next149, %bb.b ] ; 3 uses
  %.076113 = phi double [ %i.cm, %.lr.ph114.preheader ], [ %i.dm, %bb.b ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv148
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !129
end_hunk_4
begin_hunk_5_@_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri:bb.a
  %i.et = load i32, ptr %i.es, align 4, !tbaa !129
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.dq, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ev ; 3 uses
  br i1 %i.dy, label %.lr.ph.i88.epil.preheader, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader, %.lr.ph.i88
  %.011.i89 = phi i64 [ %i.fs, %.lr.ph.i88 ], [ 0, %.lr.ph.i88.preheader ] ; 4 uses
  %.0910.i90 = phi i32 [ %i.fr, %.lr.ph.i88 ], [ 0, %.lr.ph.i88.preheader ]
  %niter224 = phi i64 [ %niter224.next.1, %.lr.ph.i88 ], [ 0, %.lr.ph.i88.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.011.i89
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !128
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.011.i89
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !128
  %i.fb = xor i8 %i.fa, %i.ey
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !128
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nuw nsw i32 %.0910.i90, %i.ff
  %i.fh = or disjoint i64 %.011.i89, 1            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !128
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !128
  %i.fm = xor i8 %i.fl, %i.fj
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !128
  %i.fq = zext i8 %i.fp to i32
  %i.fr = add nuw nsw i32 %i.fg, %i.fq            ; 3 uses
  %i.fs = add nuw i64 %.011.i89, 2                ; 2 uses
  %niter224.next.1 = add nuw i64 %niter224, 2     ; 2 uses
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa, label %.lr.ph.i88, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa: ; preds = %.lr.ph.i88
  br i1 %lcmp.mod220.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit, label %.lr.ph.i88.epil.preheader

.lr.ph.i88.epil.preheader:                        ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa, %.lr.ph.i88.preheader
  %.011.i89.epil.init = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %i.fs, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i90.epil.init = phi i32 [ 0, %.lr.ph.i88.preheader ], [ %i.fr, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.011.i89.epil.init
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !128
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.011.i89.epil.init
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !128
  %i.fx = xor i8 %i.fw, %i.fu
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !128
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nuw nsw i32 %.0910.i90.epil.init, %i.gb
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa, %.lr.ph.i88.epil.preheader
  %.lcssa = phi i32 [ %i.fr, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit.unr-lcssa ], [ %i.gc, %.lr.ph.i88.epil.preheader ] ; 2 uses
  %i.gd = mul nuw nsw i32 %.lcssa, %.lcssa
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv153
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !129
  %.sroa.speculated104 = tail call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.gd)
  %i.gg = sitofp i32 %.sroa.speculated104 to double
  %i.gh = fadd double %.075118, %i.gg             ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %i.a
  br i1 %exitcond157.not, label %.lr.ph129, label %.lr.ph.i88.preheader, !llvm.loop !1217

._crit_edge130:                                   ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us, %middle.block, %._crit_edge122.thread189
  %.075.lcssa187 = phi double [ %.075.lcssa188, %middle.block ], [ 0.000000e+00, %._crit_edge122.thread189 ], [ %.075.lcssa188, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.us ], [ %.075.lcssa188, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit ]
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge133, label %.preheader, !llvm.loop !1218

.lr.ph.i95.preheader:                             ; preds = %.lr.ph.i95.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit ], [ 0, %.lr.ph.i95.preheader.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv163
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !129
  %i.gk = sext i32 %i.gj to i64
  %i.gl = mul i64 %i.cu, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.gl ; 3 uses
  br i1 %i.da, label %.lr.ph.i95.epil.preheader, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95
  %.011.i96 = phi i64 [ %i.hi, %.lr.ph.i95 ], [ 0, %.lr.ph.i95.preheader ] ; 4 uses
  %.0910.i97 = phi i32 [ %i.hh, %.lr.ph.i95 ], [ 0, %.lr.ph.i95.preheader ]
  %niter237 = phi i64 [ %niter237.next.1, %.lr.ph.i95 ], [ 0, %.lr.ph.i95.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.011.i96
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !128
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.011.i96
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !128
  %i.gr = xor i8 %i.gq, %i.go
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !128
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add nuw nsw i32 %.0910.i97, %i.gv
  %i.gx = or disjoint i64 %.011.i96, 1            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !128
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !128
  %i.hc = xor i8 %i.hb, %i.gz
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !128
  %i.hg = zext i8 %i.hf to i32
  %i.hh = add nuw nsw i32 %i.gw, %i.hg            ; 3 uses
  %i.hi = add nuw i64 %.011.i96, 2                ; 2 uses
  %niter237.next.1 = add nuw i64 %niter237, 2     ; 2 uses
  %niter237.ncmp.1 = icmp eq i64 %niter237.next.1, %unroll_iter236
  br i1 %niter237.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa, label %.lr.ph.i95, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa: ; preds = %.lr.ph.i95
  br i1 %lcmp.mod233.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit, label %.lr.ph.i95.epil.preheader

.lr.ph.i95.epil.preheader:                        ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa, %.lr.ph.i95.preheader
  %.011.i96.epil.init = phi i64 [ 0, %.lr.ph.i95.preheader ], [ %i.hi, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i97.epil.init = phi i32 [ 0, %.lr.ph.i95.preheader ], [ %i.hh, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.011.i96.epil.init
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !128
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.011.i96.epil.init
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !128
  %i.hn = xor i8 %i.hm, %i.hk
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !128
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nuw nsw i32 %.0910.i97.epil.init, %i.hr
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa, %.lr.ph.i95.epil.preheader
  %.lcssa214 = phi i32 [ %i.hh, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit100.loopexit.unr-lcssa ], [ %i.hs, %.lr.ph.i95.epil.preheader ] ; 2 uses
  %i.ht = mul nuw nsw i32 %.lcssa214, %.lcssa214
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv163 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !129
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hv, i32 %i.ht)
  store i32 %.sroa.speculated, ptr %i.hu, align 4, !tbaa !129
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %i.a
  br i1 %exitcond167.not, label %._crit_edge130, label %.lr.ph.i95.preheader, !llvm.loop !1219

._crit_edge133:                                   ; preds = %._crit_edge130, %.preheader107
  %.082.lcssa = phi i32 [ 1, %.preheader107 ], [ %1, %._crit_edge130 ]
  store i32 %.082.lcssa, ptr %5, align 4, !tbaa !129
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE22GroupWiseCenterChooserEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 10 uses
  %i.b = icmp slt i32 %3, 0
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #32 ; 13 uses
  %i.f = sitofp i32 %3 to double
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !330  ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !330
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 2147483647
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nnan double %i.o, f0x3E00000000000000
  %i.q = fmul double %i.p, %i.f
  %i.r = fptosi double %i.q to i32
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129  ; 2 uses
  store i32 %i.u, ptr %4, align 4, !tbaa !129
  %i.v = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader93

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !223  ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !398 ; 5 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %xtraiter = and i64 %i.ae, 1
  %i.af = icmp eq i64 %i.ae, 1
  %unroll_iter = and i64 %i.ae, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod185 = trunc i64 %i.ae to i1
  br label %.lr.ph.i.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader: ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.c, i1 false), !tbaa !129
  br label %.preheader93

.preheader93:                                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, %bb.a
  %i.ag = icmp sgt i32 %1, 1
  br i1 %i.ag, label %.preheader92.lr.ph, label %._crit_edge117

.preheader92.lr.ph:                               ; preds = %.preheader93
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count158 = zext nneg i32 %1 to i64
  %xtraiter192 = and i64 %i.a, 3                  ; 3 uses
  %i.ak = icmp ult i32 %3, 4
  %unroll_iter196 = and i64 %i.a, 2147483644
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader92

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.z, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ao ; 3 uses
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bl, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.bk, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.011.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !128
  %i.au = xor i8 %i.at, %i.ar
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !128
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %.0910.i, %i.ay
  %i.ba = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !128
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !128
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !128
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.az, %i.bj            ; 3 uses
  %i.bl = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bk, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.011.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !128
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !128
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !128
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %.0910.i.epil.init, %i.bu
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa183 = phi i32 [ %i.bk, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.i.epil.preheader ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %.lcssa183, ptr %i.bw, align 4, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %.preheader93, label %.lr.ph.i.preheader, !llvm.loop !1220

.preheader92:                                     ; preds = %.preheader92.lr.ph, %._crit_edge
  %indvars.iv155 = phi i64 [ 1, %.preheader92.lr.ph ], [ %indvars.iv.next156, %._crit_edge ] ; 3 uses
  br i1 %i.v, label %.lr.ph104, label %._crit_edge105.split.us.thread

._crit_edge105.split.us.thread:                   ; preds = %.preheader92
  %i.bx = load i32, ptr %2, align 4, !tbaa !129
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv155
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !129
  br label %._crit_edge

.lr.ph104:                                        ; preds = %.preheader92, %bb.c
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.c ], [ 0, %.preheader92 ] ; 4 uses
  %.061103.us = phi i32 [ %.2.us, %bb.c ], [ 0, %.preheader92 ] ; 3 uses
  %.062102.us = phi i32 [ %.264.us, %bb.c ], [ 0, %.preheader92 ] ; 2 uses
  %.065101.us = phi double [ %.267.us, %bb.c ], [ -1.000000e+00, %.preheader92 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv140
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !129 ; 2 uses
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = sitofp i32 %.061103.us to float
  %i.cd = fmul nnan float %i.cc, 1.300000e+00
  %i.ce = fcmp olt float %i.cd, %i.cb
  br i1 %i.ce, label %.preheader.us, label %bb.c

.preheader.us:                                    ; preds = %.lr.ph104
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !222 ; 2 uses
  %i.cg = load i64, ptr %i.ai, align 8, !tbaa !223 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv140
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !129
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck ; 3 uses
  %i.cm = load i64, ptr %i.aj, align 8, !tbaa !398 ; 5 uses
  %.not.i72.us = icmp eq i64 %i.cm, 0
  br i1 %.not.i72.us, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.us.us.preheader, label %.lr.ph.i73.preheader.us.preheader

.lr.ph.i73.preheader.us.preheader:                ; preds = %.preheader.us
  %xtraiter186 = and i64 %i.cm, 1
  %i.cn = icmp eq i64 %i.cm, 1
  %unroll_iter190 = and i64 %i.cm, -2
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %lcmp.mod189 = trunc i64 %i.cm to i1
  br label %.lr.ph.i73.preheader.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.us.us.preheader: ; preds = %.preheader.us
  br i1 %i.ak, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.us.us.epil.preheader, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.us.us

.lr.ph.i73.preheader.us:                          ; preds = %.lr.ph.i73.preheader.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us ], [ 0, %.lr.ph.i73.preheader.us.preheader ] ; 3 uses
  %.06097.us109 = phi double [ %i.ec, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us ], [ 0.000000e+00, %.lr.ph.i73.preheader.us.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !129
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %i.cg, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cr ; 3 uses
  br i1 %i.cn, label %.lr.ph.i73.us.epil.preheader, label %.lr.ph.i73.us

.lr.ph.i73.us:                                    ; preds = %.lr.ph.i73.preheader.us, %.lr.ph.i73.us
  %.011.i74.us = phi i64 [ %i.do, %.lr.ph.i73.us ], [ 0, %.lr.ph.i73.preheader.us ] ; 4 uses
  %.0910.i75.us = phi i32 [ %i.dn, %.lr.ph.i73.us ], [ 0, %.lr.ph.i73.preheader.us ]
  %niter191 = phi i64 [ %niter191.next.1, %.lr.ph.i73.us ], [ 0, %.lr.ph.i73.preheader.us ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.011.i74.us
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !128
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.011.i74.us
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !128
  %i.cx = xor i8 %i.cw, %i.cu
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !128
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %.0910.i75.us, %i.db
  %i.dd = or disjoint i64 %.011.i74.us, 1         ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dd
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !128
  %i.di = xor i8 %i.dh, %i.df
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !128
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dc, %i.dm            ; 3 uses
  %i.do = add nuw i64 %.011.i74.us, 2             ; 2 uses
  %niter191.next.1 = add nuw i64 %niter191, 2     ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa, label %.lr.ph.i73.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i73.us
  br i1 %lcmp.mod187.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us, label %.lr.ph.i73.us.epil.preheader

.lr.ph.i73.us.epil.preheader:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa, %.lr.ph.i73.preheader.us
  %.011.i74.us.epil.init = phi i64 [ 0, %.lr.ph.i73.preheader.us ], [ %i.do, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa ] ; 2 uses
  %.0910.i75.us.epil.init = phi i32 [ 0, %.lr.ph.i73.preheader.us ], [ %i.dn, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.011.i74.us.epil.init
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.011.i74.us.epil.init
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !128
  %i.dt = xor i8 %i.ds, %i.dq
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !128
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nuw nsw i32 %.0910.i75.us.epil.init, %i.dx
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa, %.lr.ph.i73.us.epil.preheader
  %.lcssa = phi i32 [ %i.dn, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit78.loopexit.us.unr-lcssa ], [ %i.dy, %.lr.ph.i73.us.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !129
  %.sroa.speculated89.us110 = tail call i32 @llvm.smin.i32(i32 %i.ea, i32 %.lcssa)
  %i.eb = sitofp i32 %.sroa.speculated89.us110 to double
  %i.ec = fadd double %.06097.us109, %i.eb        ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE13computeLabelsEPiiS3_iS3_Ri
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE13computeLabelsEPiiS3_iS3_Ri(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %6, align 4, !tbaa !129
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8, !tbaa !400  ; 12 uses
  %.not.i = icmp eq i64 %i.g, 0                   ; 2 uses
  %i.h = icmp sgt i32 %4, 1
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  br i1 %i.h, label %.lr.ph39.split.us, label %.lr.ph39.split

.lr.ph39.split.us:                                ; preds = %.lr.ph39
  br i1 %.not.i, label %._crit_edge40.sink.split, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph39.split.us
  %wide.trip.count62 = zext nneg i32 %4 to i64
  %i.j = add i64 %i.g, -1                         ; 2 uses
  %xtraiter87 = and i64 %i.g, 1
  %i.k = icmp eq i64 %i.j, 0
  %unroll_iter91 = and i64 %i.g, -2
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  %lcmp.mod90 = trunc i64 %i.g to i1
  %xtraiter93 = and i64 %i.g, 1
  %i.l = icmp eq i64 %i.j, 0
  %unroll_iter97 = and i64 %i.g, -2
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  %lcmp.mod96 = trunc i64 %i.g to i1
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %._crit_edge.split.us45
  %indvars.iv64 = phi i64 [ 0, %.lr.ph.i.preheader.us.preheader ], [ %indvars.iv.next65, %._crit_edge.split.us45 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  %i.n = load i32, ptr %i.m, align 4, !tbaa !129
  %i.o = sext i32 %i.n to i64
  %i.p = mul i64 %i.e, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p ; 6 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !129
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.e, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t ; 3 uses
  br i1 %i.k, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.011.i.us = phi i64 [ %i.aq, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ] ; 4 uses
  %.0910.i.us = phi i32 [ %i.ap, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %niter92 = phi i64 [ %niter92.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.011.i.us
  %i.w = load i8, ptr %i.v, align 1, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.011.i.us
  %i.y = load i8, ptr %i.x, align 1, !tbaa !128
  %i.z = xor i8 %i.y, %i.w
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !128
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %.0910.i.us, %i.ad
  %i.af = or disjoint i64 %.011.i.us, 1           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !128
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !128
  %i.ak = xor i8 %i.aj, %i.ah
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !128
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ae, %i.ao            ; 3 uses
  %i.aq = add nuw i64 %.011.i.us, 2               ; 2 uses
  %niter92.next.1 = add nuw i64 %niter92, 2       ; 2 uses
  %niter92.ncmp.1 = icmp eq i64 %niter92.next.1, %unroll_iter91
  br i1 %niter92.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod88.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa, %.lr.ph.i.preheader.us
  %.011.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us ], [ %i.aq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.0910.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.us ], [ %i.ap, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.011.i.us.epil.init
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %.011.i.us.epil.init
  %i.au = load i8, ptr %i.at, align 1, !tbaa !128
  %i.av = xor i8 %i.au, %i.as
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !128
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.0910.i.us.epil.init, %i.az
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa = phi i32 [ %i.ap, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us.unr-lcssa ], [ %i.ba, %.lr.ph.i.us.epil.preheader ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv64 ; 2 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !129
  br label %.lr.ph.i28.preheader.us

.lr.ph.i28.preheader.us:                          ; preds = %bb.c, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %bb.c ], [ 1, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us ] ; 3 uses
  %.02435.us43 = phi i32 [ %.1.us44, %bb.c ], [ %.lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv59
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.e, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf ; 3 uses
  br i1 %i.l, label %.lr.ph.i28.us.epil.preheader, label %.lr.ph.i28.us

.lr.ph.i28.us:                                    ; preds = %.lr.ph.i28.preheader.us, %.lr.ph.i28.us
  %.011.i29.us = phi i64 [ %i.cc, %.lr.ph.i28.us ], [ 0, %.lr.ph.i28.preheader.us ] ; 4 uses
  %.0910.i30.us = phi i32 [ %i.cb, %.lr.ph.i28.us ], [ 0, %.lr.ph.i28.preheader.us ]
  %niter98 = phi i64 [ %niter98.next.1, %.lr.ph.i28.us ], [ 0, %.lr.ph.i28.preheader.us ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.011.i29.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.011.i29.us
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !128
  %i.bl = xor i8 %i.bk, %i.bi
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !128
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %.0910.i30.us, %i.bp
  %i.br = or disjoint i64 %.011.i29.us, 1         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !128
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !128
  %i.bw = xor i8 %i.bv, %i.bt
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !128
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bq, %i.ca            ; 3 uses
  %i.cc = add nuw i64 %.011.i29.us, 2             ; 2 uses
  %niter98.next.1 = add nuw i64 %niter98, 2       ; 2 uses
  %niter98.ncmp.1 = icmp eq i64 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa, label %.lr.ph.i28.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i28.us
  br i1 %lcmp.mod94.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us, label %.lr.ph.i28.us.epil.preheader

.lr.ph.i28.us.epil.preheader:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa, %.lr.ph.i28.preheader.us
  %.011.i29.us.epil.init = phi i64 [ 0, %.lr.ph.i28.preheader.us ], [ %i.cc, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa ] ; 2 uses
  %.0910.i30.us.epil.init = phi i32 [ 0, %.lr.ph.i28.preheader.us ], [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 %.011.i29.us.epil.init
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.011.i29.us.epil.init
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !128
  %i.ch = xor i8 %i.cg, %i.ce
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !128
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %.0910.i30.us.epil.init, %i.cl
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa, %.lr.ph.i28.us.epil.preheader
  %.lcssa82 = phi i32 [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us.unr-lcssa ], [ %i.cm, %.lr.ph.i28.us.epil.preheader ] ; 2 uses
  %i.cn = icmp sgt i32 %.02435.us43, %.lcssa82
  br i1 %i.cn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us
  %i.co = trunc nuw nsw i64 %indvars.iv59 to i32
  store i32 %i.co, ptr %i.bb, align 4, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us
  %.1.us44 = phi i32 [ %.lcssa82, %bb.b ], [ %.02435.us43, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit33.loopexit.us ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge.split.us45, label %.lr.ph.i28.preheader.us, !llvm.loop !1241

._crit_edge.split.us45:                           ; preds = %bb.c
  %i.cp = load i32, ptr %6, align 4, !tbaa !129
  %i.cq = add nsw i32 %i.cp, %.1.us44
  store i32 %i.cq, ptr %6, align 4, !tbaa !129
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %i.i
  br i1 %exitcond68.not, label %._crit_edge40, label %.lr.ph.i.preheader.us, !llvm.loop !1242

.lr.ph39.split:                                   ; preds = %.lr.ph39
  br i1 %.not.i, label %._crit_edge40.sink.split, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph39.split
  %xtraiter = and i64 %i.g, 1
  %i.cr = icmp eq i64 %i.g, 1
  %unroll_iter = and i64 %i.g, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod86 = trunc i64 %i.g to i1
  br label %.lr.ph.i.preheader

._crit_edge40.sink.split:                         ; preds = %.lr.ph39.split, %.lr.ph39.split.us
  %i.cs = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 %i.cs, i1 false), !tbaa !129
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, %._crit_edge.split.us45, %._crit_edge40.sink.split, %bb.a
  ret void

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !129
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %i.e, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cw ; 3 uses
  %i.cy = load i32, ptr %3, align 4, !tbaa !129
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul i64 %i.e, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.da ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.dx, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.dw, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.011.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !128
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %.011.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !128
  %i.dg = xor i8 %i.df, %i.dd
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !128
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %.0910.i, %i.dk
  %i.dm = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dm
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !128
  %i.dr = xor i8 %i.dq, %i.do
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !128
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nuw nsw i32 %i.dl, %i.dv            ; 3 uses
  %i.dx = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dx, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.dw, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.011.i.epil.init
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !128
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 %.011.i.epil.init
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !128
  %i.ec = xor i8 %i.eb, %i.dz
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !128
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nuw nsw i32 %.0910.i.epil.init, %i.eg
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa84 = phi i32 [ %i.dw, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph.i.epil.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 0, ptr %i.ei, align 4, !tbaa !129
  %i.ej = load i32, ptr %6, align 4, !tbaa !129
  %i.ek = add nsw i32 %i.ej, %.lcssa84
  store i32 %i.ek, ptr %6, align 4, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge40, label %.lr.ph.i.preheader, !llvm.loop !1242
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE9save_treeEP8_IO_FILEPNS2_4NodeEi(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i64 @fwrite(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 32, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !288
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !414
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !293
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !283
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 2
  %i.t = trunc i64 %i.s to i32
  store i32 %i.t, ptr %i.a, align 4, !tbaa !129
  %i.u = call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !295
  tail call void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE9save_treeEP8_IO_FILEPNS2_4NodeEi(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, ptr noundef %i.x, i32 noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.f, align 4, !tbaa !288
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %.loopexit, !llvm.loop !1243

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE9load_treeEP8_IO_FILERPNS2_4NodeEi(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !265  ; 3 uses
  %i.d = icmp slt i32 %i.c, 32
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !333
  %i.e = add nsw i32 %i.c, -32
  br label %_ZN7cvflann15PooledAllocator8allocateINS_27HierarchicalClusteringIndexINS_10HammingLUTEE4NodeEEEPT_m.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !267
  %i.h = add nsw i32 %i.g, %i.c
  store i32 %i.h, ptr %i.f, align 8, !tbaa !267
  %i.i = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #37 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !195
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.69, i64 27, i64 1, ptr %i.j) #36 ; 0 uses
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !284
  store ptr %i.l, ptr %i.i, align 8, !tbaa !208
  store ptr %i.i, ptr %i.k, align 8, !tbaa !284
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %_ZN7cvflann15PooledAllocator8allocateINS_27HierarchicalClusteringIndexINS_10HammingLUTEE4NodeEEEPT_m.exit

_ZN7cvflann15PooledAllocator8allocateINS_27HierarchicalClusteringIndexINS_10HammingLUTEE4NodeEEEPT_m.exit: ; preds = %bb.c, %._crit_edge.i.i
  %i.n = phi i32 [ %i.e, %._crit_edge.i.i ], [ 8152, %bb.c ]
  %i.o = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.q, ptr %i.p, align 8, !tbaa !333
  store i32 %i.n, ptr %i.b, align 8, !tbaa !265
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !266
  %i.t = add nsw i32 %i.s, 32
  store i32 %i.t, ptr %i.r, align 4, !tbaa !266
  store ptr %i.o, ptr %2, align 8, !tbaa !295
  %i.u = tail call i64 @fread(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 32, i64 noundef 1, ptr noundef %1)
  %.not.i = icmp eq i64 %i.u, 1
  br i1 %.not.i, label %_ZN7cvflann10load_valueINS_27HierarchicalClusteringIndexINS_10HammingLUTEE4NodeEEEvP8_IO_FILERT_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7cvflann15PooledAllocator8allocateINS_27HierarchicalClusteringIndexINS_10HammingLUTEE4NodeEEEPT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -212, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN7cvflann10load_valueIfEEvP8_IO_FILERT_m, ptr noundef nonnull @.str.35, i32 noundef 153) #33
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_ZN7cvflann8LshIndexINS_10HammingLUTEE9knnSearchERKNS_6MatrixIhEERNS3_IiEES8_iRKNS_12SearchParamsE:bb.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !128
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.q
  %.pn50 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ar

bb.s:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !238
  %i.ai = trunc i64 %i.ah to i32
  %.not52 = icmp sgt i32 %4, %i.ai
  br i1 %.not52, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv5flann5Index9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES7_iRKNS0_12SearchParamsE, ptr noundef nonnull @.str.86, i32 noundef 200) #33
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.x:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %12, align 8, !tbaa !123  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.x
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !128
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.w
  %.pn53 = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.ak, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ar

bb.y:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !238
  %i.as = trunc i64 %i.ar to i32
  %.not55 = icmp sgt i32 %4, %i.as
  br i1 %.not55, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv5flann5Index9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES7_iRKNS0_12SearchParamsE, ptr noundef nonnull @.str.86, i32 noundef 201) #33
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ad:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %14, align 8, !tbaa !123  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ad
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ac
  %.pn56 = phi { ptr, i32 } [ %i.at, %bb.ac ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.au, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ar

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 9 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !224
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7cvflann18KNNUniqueResultSetIiEE, i64 16), ptr %16, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 %4, ptr %i.bh, align 8, !tbaa !247
  store ptr null, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !116
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !117
  store i64 0, ptr %i.bg, align 8, !tbaa !118
  store i32 2147483647, ptr %i.bb, align 4, !tbaa !248
  store i8 0, ptr %i.ba, align 8, !tbaa !249
  %.not92 = icmp eq i64 %i.q, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = icmp slt i32 %4, 1
  %i.bm = zext i32 %4 to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 2            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bt = icmp slt i32 %4, 0
  %i.bu = icmp ne i32 %4, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 22
  %i.bw = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 28
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.bz = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br label %bb.ag

._crit_edge.loopexit:                             ; preds = %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !115
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ae
  %i.ca = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.ae ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7cvflann15UniqueResultSetIiEE, i64 16), ptr %16, align 8, !tbaa !136
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  invoke void @_ZNSt8_Rb_treeIN7cvflann15UniqueResultSetIiE9DistIndexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef %i.ca)
          to label %_ZN7cvflann15UniqueResultSetIiED2Ev.exit unwind label %bb.af, !inline_history !250

bb.af:                                            ; preds = %._crit_edge
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #29, !inline_history !250
  unreachable

_ZN7cvflann15UniqueResultSetIiED2Ev.exit:         ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  ret void

bb.ag:                                            ; preds = %.lr.ph, %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit
  %.091 = phi i64 [ 0, %.lr.ph ], [ %i.et, %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit ] ; 6 uses
  %i.ce = load ptr, ptr %i.bd, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeIN7cvflann15UniqueResultSetIiE9DistIndexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef %i.ce)
          to label %_ZN7cvflann18KNNUniqueResultSetIiE5clearEv.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #29
  unreachable

_ZN7cvflann18KNNUniqueResultSetIiE5clearEv.exit:  ; preds = %bb.ag
  store ptr null, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !116
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !117
  store i64 0, ptr %i.bg, align 8, !tbaa !118
  store i32 2147483647, ptr %i.bb, align 4, !tbaa !248
  store i8 0, ptr %i.ba, align 8, !tbaa !249
  br i1 %i.bl, label %_ZSt6fill_nIPiiiET_S1_T0_RKT1_.exit80, label %bb.ai

bb.ai:                                            ; preds = %_ZN7cvflann18KNNUniqueResultSetIiE5clearEv.exit
  %i.ch = load ptr, ptr %i.bj, align 8, !tbaa !251
  %i.ci = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.cj = mul i64 %i.ci, %.091
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj
  call void @llvm.memset.p0.i64(ptr align 4 %i.ck, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !129
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !251
  %i.cm = load i64, ptr %i.bo, align 8, !tbaa !252
  %i.cn = mul i64 %i.cm, %.091
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cn ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ai
  %i.cq = getelementptr i8, ptr %i.co, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !129
  store <4 x i32> splat (i32 2147483647), ptr %i.cs, align 4, !tbaa !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !1286

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt6fill_nIPiiiET_S1_T0_RKT1_.exit80, label %.lr.ph.i.i.i.i76.preheader

.lr.ph.i.i.i.i76.preheader:                       ; preds = %bb.ai, %middle.block
  %.06.i.i.i.i77.ph = phi ptr [ %i.co, %bb.ai ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i.i.i76.preheader, %.lr.ph.i.i.i.i76
  %.06.i.i.i.i77 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i76 ], [ %.06.i.i.i.i77.ph, %.lr.ph.i.i.i.i76.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i77, align 4, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.cu, %i.cp
  br i1 %.not.i.i.i.i78, label %_ZSt6fill_nIPiiiET_S1_T0_RKT1_.exit80, label %.lr.ph.i.i.i.i76, !llvm.loop !1287

_ZSt6fill_nIPiiiET_S1_T0_RKT1_.exit80:            ; preds = %.lr.ph.i.i.i.i76, %middle.block, %_ZN7cvflann18KNNUniqueResultSetIiE5clearEv.exit
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !222
  %i.cw = load i64, ptr %i.bq, align 8, !tbaa !223
  %i.cx = mul i64 %i.cw, %.091
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %0, align 8, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %._crit_edge.i.i unwind label %bb.al

._crit_edge.i.i:                                  ; preds = %_ZSt6fill_nIPiiiET_S1_T0_RKT1_.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr %i.br, ptr %17, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.br, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false)
  store i64 6, ptr %i.bs, align 8, !tbaa !122
  store i8 0, ptr %i.bv, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !141
  %i.dc = invoke noundef zeroext i1 @_ZN7cvflann9get_paramIbEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.dd = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.br
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.aj
  %i.df = load i64, ptr %i.br, align 8, !tbaa !128
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !251
  %i.di = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.dj = mul i64 %i.di, %.091
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj ; 3 uses
  %i.dl = load ptr, ptr %i.bn, align 8, !tbaa !251
  %i.dm = load i64, ptr %i.bo, align 8, !tbaa !252
  %i.dn = mul i64 %i.dm, %.091
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  br i1 %i.dc, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.dp = load ptr, ptr %16, align 8, !tbaa !136
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %i.dk, ptr noundef %i.do, i32 noundef %4)
          to label %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit unwind label %bb.al, !inline_history !253

bb.al:                                            ; preds = %bb.ak, %_ZSt6fill_nIPiiiET_S1_T0_RKT1_.exit80
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.du = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.br
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.am
  %i.dw = load i64, ptr %i.br, align 8, !tbaa !128
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.dy = load ptr, ptr %i.be, align 8, !tbaa !116 ; 4 uses
  br i1 %i.bt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not30.i = icmp eq ptr %i.dy, %i.bc
  br i1 %.not30.i, label %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.ao, %.lr.ph34.i
  %.01233.i = phi ptr [ %i.ee, %.lr.ph34.i ], [ %i.dk, %bb.ao ] ; 2 uses
  %.01332.i = phi ptr [ %i.ef, %.lr.ph34.i ], [ %i.do, %bb.ao ] ; 2 uses
  %.sroa.021.031.i = phi ptr [ %i.ed, %.lr.ph34.i ], [ %i.dy, %bb.ao ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !255
  store i32 %i.eb, ptr %.01233.i, align 4, !tbaa !129
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !256
  store i32 %i.ec, ptr %.01332.i, align 4, !tbaa !129
  %i.ed = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.021.031.i) #34 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01233.i, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.01332.i, i64 4
  %.not.i = icmp eq ptr %i.ed, %i.bc
  br i1 %.not.i, label %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit, label %.lr.ph34.i, !llvm.loop !10

bb.ap:                                            ; preds = %bb.an
  %i.eg = icmp ne ptr %i.dy, %i.bc
  %i.eh = and i1 %i.bu, %i.eg
  br i1 %i.eh, label %.lr.ph.i, label %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.i
  %.029.i = phi i32 [ %i.ep, %.lr.ph.i ], [ 0, %bb.ap ]
  %.128.i = phi ptr [ %i.en, %.lr.ph.i ], [ %i.dk, %bb.ap ] ; 2 uses
  %.11427.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.do, %bb.ap ] ; 2 uses
  %.sroa.016.026.i = phi ptr [ %i.em, %.lr.ph.i ], [ %i.dy, %bb.ap ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !255
  store i32 %i.ek, ptr %.128.i, align 4, !tbaa !129
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !256
  store i32 %i.el, ptr %.11427.i, align 4, !tbaa !129
  %i.em = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.016.026.i) #34 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.128.i, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.11427.i, i64 4
  %i.ep = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %i.eq = icmp ne ptr %i.em, %i.bc
  %i.er = icmp slt i32 %i.ep, %4
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %.lr.ph.i, label %_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit, !llvm.loop !11

_ZNK7cvflann15UniqueResultSetIiE11sortAndCopyEPiS2_i.exit: ; preds = %.lr.ph.i, %.lr.ph34.i, %bb.ap, %bb.ao, %bb.ak
  %i.et = add nuw i64 %.091, 1                    ; 2 uses
  %i.eu = load i64, ptr %1, align 8, !tbaa !220
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ag, label %._crit_edge.loopexit, !llvm.loop !1288

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.ds, %bb.al ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @_ZN7cvflann15UniqueResultSetIiED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.aq ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_10HammingLUTEE9saveIndexEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = tail call i64 @fwrite(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 32, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !222
  %i.k = load i64, ptr %i.g, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !221
  %i.n = mul i64 %i.m, %i.k
  %i.o = tail call i64 @fwrite(ptr noundef %i.j, i64 noundef 1, i64 noundef %i.n, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_7
begin_hunk_8_@_ZN7cvflann11KMeansIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.bf = phi i32 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %._crit_edge.i.i60

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  store i32 2147483647, ptr %i.ba, align 8, !tbaa !540
  br label %._crit_edge.i.i60

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bi = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ae
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bn = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.an
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !128
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.bs = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aw
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.k
  %i.bu = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

._crit_edge.i.i60:                                ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bw, ptr %7, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.bx, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.by, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.bz = invoke noundef i32 @_ZN7cvflann9get_paramINS_20flann_centers_init_tEEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS9_ESaISt4pairIKS9_SA_EEERSE_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %._crit_edge.i.i60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cb = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bw
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !128
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #30
  %.pre78 = load i32, ptr %i.ca, align 4, !tbaa !1326
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.cf = phi i32 [ %.pre78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  switch i32 %i.cf, label %bb.p [
    i32 0, label %bb.u
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i60
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.ch = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bw
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.m
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !128
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.y

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  br label %bb.u

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7cvflann11KMeansIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_, ptr noundef nonnull @.str.66, i32 noundef 373) #33
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.t:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.t
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !128
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.s
  %.pn28 = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.cm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.n, %bb.o
  %.sink = phi i64 [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_2L2IfEEE21chooseCentersGonzalesEiPiiS4_Ri to i64), %bb.n ], [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_2L2IfEEE21chooseCentersKMeansppEiPiiS4_Ri to i64), %bb.o ], [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_2L2IfEEE19chooseCentersRandomEiPiiS4_Ri to i64), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cs, align 8, !tbaa !541
  %.repack31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.repack31, align 8, !tbaa !541
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 4.000000e-01, ptr %i.ct, align 8, !tbaa !542
  %i.cu = load i32, ptr %i.ar, align 4, !tbaa !539 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i32 %i.cu, 0
  %i.cx = shl nsw i64 %i.cv, 3
  %i.cy = select i1 %i.cw, i64 -1, i64 %i.cx
  %i.cz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #32
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  store ptr %i.cz, ptr %i.u, align 8, !tbaa !543
  %i.da = load i32, ptr %i.ar, align 4, !tbaa !539 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i32 %i.da, 0
  %i.dd = shl nsw i64 %i.db, 3
  %i.de = select i1 %i.dc, i64 -1, i64 %i.dd
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #32
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.df, ptr %i.v, align 8, !tbaa !544
  %i.dg = load i32, ptr %i.ar, align 4, !tbaa !539 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !543
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %i.dk, i1 false), !tbaa !546
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.dk, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn33 = phi { ptr, i32 } [ %i.dl, %bb.x ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not2.i = icmp eq ptr %i.dm, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.dn = phi ptr [ %i.do, %.lr.ph.i ], [ %i.dm, %bb.y ] ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !208 ; 3 uses
  call void @free(ptr noundef nonnull %i.dn) #31
  store ptr %i.do, ptr %i.y, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !12

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i, %bb.y
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #31
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann14CompositeIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann14CompositeIndexINS_2L2IfEEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !202
  %i.i = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.b, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.e, align 8, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !118
  store i64 %i.o, ptr %i.f, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.i, ptr %i.c, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.a
  %i.p = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #32
          to label %bb.e unwind label %bb.i       ; 3 uses

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  invoke void @_ZN7cvflann11KDTreeIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(201) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !550
  %i.r = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7cvflann11KMeansIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(212) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !551
  ret void

bb.i:                                             ; preds = %bb.f, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 208) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 216) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.t, %bb.i ], [ %i.u, %bb.j ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann14AutotunedIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(265) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca float, align 4                    ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann14AutotunedIndexINS_2L2IfEEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.i, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.m, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.l, ptr %i.n, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.l, ptr %i.o, align 8, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.p, align 8, !tbaa !118
  invoke void @_ZN7cvflann12SearchParams4initEifbb(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 32, float noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_ZN7cvflann12SearchParamsC2Eifb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.k) #31
  br label %.body

_ZN7cvflann12SearchParamsC2Eifb.exit:             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !511
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 16, ptr %i.a, align 8, !tbaa !127
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZN7cvflann12SearchParamsC2Eifb.exit
  store ptr %i.u, ptr %3, align 8, !tbaa !123
  %i.v = load i64, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(16) @.str.6, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !122
  %i.x = load ptr, ptr %3, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store float 8.000000e-01, ptr %i.b, align 4, !tbaa !139
  %i.z = invoke noundef float @_ZN7cvflann9get_paramIfEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.c unwind label %bb.h
end_hunk_8
begin_hunk_9_@_ZN7cvflann27HierarchicalClusteringIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_:bb.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bf, ptr %7, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bf, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.bg, align 8, !tbaa !122
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 0, ptr %i.bh, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 100, ptr %i.d, align 4, !tbaa !129
  %i.bi = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.bk = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bf
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.h
  %i.bm = load i64, ptr %i.bf, align 8, !tbaa !128
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bo = load i32, ptr %i.ar, align 4, !tbaa !1327
  switch i32 %i.bo, label %bb.p [
    i32 0, label %bb.u
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bq = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ae
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.i
  %i.bs = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bv = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.j
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !128
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ca = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aw
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.k
  %i.cc = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cf = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.ch = load i64, ptr %i.bf, align 8, !tbaa !128
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.y

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_, ptr noundef nonnull @.str.82, i32 noundef 385) #33
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.t:                                             ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !128
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.ck, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.m, %bb.o, %bb.n
  %.sink = phi i64 [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L2IfEEE21chooseCentersGonzalesEiPiiS4_Ri to i64), %bb.m ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L2IfEEE22GroupWiseCenterChooserEiPiiS4_Ri to i64), %bb.o ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L2IfEEE21chooseCentersKMeansppEiPiiS4_Ri to i64), %bb.n ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L2IfEEE19chooseCentersRandomEiPiiS4_Ri to i64), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cq, align 8, !tbaa !566
  %.repack28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.repack28, align 8, !tbaa !566
  %i.cr = load i32, ptr %i.ba, align 8, !tbaa !564 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i32 %i.cr, 0
  %i.cu = shl nsw i64 %i.cs, 3
  %i.cv = select i1 %i.ct, i64 -1, i64 %i.cu
  %i.cw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cv) #32
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  store ptr %i.cw, ptr %i.u, align 8, !tbaa !567
  %i.cx = load i32, ptr %i.ba, align 8, !tbaa !564 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i32 %i.cx, 0
  %i.da = shl nsw i64 %i.cy, 3
  %i.db = select i1 %i.cz, i64 -1, i64 %i.da
  %i.dc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #32
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.dc, ptr %i.v, align 8, !tbaa !568
  %i.dd = load i32, ptr %i.ba, align 8, !tbaa !564 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.df = load ptr, ptr %i.u, align 8, !tbaa !567
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.dh, i1 false), !tbaa !570
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dc, i8 0, i64 %i.dh, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn30 = phi { ptr, i32 } [ %i.di, %bb.x ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not2.i = icmp eq ptr %i.dj, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.dj, %bb.y ] ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !208 ; 3 uses
  call void @free(ptr noundef nonnull %i.dk) #31
  store ptr %i.dl, ptr %i.y, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !12

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i, %bb.y
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #31
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann8LshIndexINS_2L2IfEEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !511
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !202
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i unwind label %bb.i ; 3 uses

.noexc.i.i:                                       ; preds = %bb.b, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.k, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  store i64 %i.u, ptr %i.l, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.o, ptr %i.i, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.x, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.y, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 12, ptr %i.b, align 4, !tbaa !129
  %i.z = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ab = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.w
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !128
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !126
  store i64 7312272889233368427, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.ag, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ah, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 20, ptr %i.c, align 4, !tbaa !129
  %i.ai = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ak = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.af
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.f
  %i.am = load i64, ptr %i.af, align 8, !tbaa !128
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 17, ptr %i.a, align 8, !tbaa !127
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  store ptr %i.ap, ptr %6, align 8, !tbaa !123
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ap, ptr noundef nonnull align 1 dereferenceable(17) @.str.13, i64 17, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !122
  %i.as = load ptr, ptr %6, align 8, !tbaa !123
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 2, ptr %i.d, align 4, !tbaa !129
  %i.au = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %.noexc27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !1328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.aw = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ao
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !128
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #30
  %.pre = load i32, ptr %i.av, align 8, !tbaa !1328
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.ba = phi i32 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.au, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1329
  %i.bd = trunc i64 %i.bc to i32
end_hunk_9
begin_hunk_10_@_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE9loadIndexEP8_IO_FILE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %common.resume

bb.af:                                            ; preds = %_ZN7cvflann3any6assignIiEERS0_RKT_.exit.i, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %11, align 8, !tbaa !123  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bp
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.af
  %i.dn = load i64, ptr %i.bp, align 8, !tbaa !128
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %common.resume

bb.ag:                                            ; preds = %_ZN7cvflann3any6assignIbEERS0_RKT_.exit.i, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %12, align 8, !tbaa !123  ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ck
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.ag
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !128
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK7cvflann17KDTreeSingleIndexINS_2L2IfEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !524
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK7cvflann17KDTreeSingleIndexINS_2L2IfEEE6veclenEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !521
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK7cvflann17KDTreeSingleIndexINS_2L2IfEEE10usedMemoryEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1348
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1349
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !588
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 2
  %i.i = add i32 %i.e, %i.h
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK7cvflann17KDTreeSingleIndexINS_2L2IfEEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7cvflann17KDTreeSingleIndexINS_2L2IfEEE13getParametersB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(241) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !202
  %i.h = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %.noexc.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.d, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  store i64 %i.n, ptr %i.e, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store ptr %i.h, ptr %i.b, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE13findNeighborsERNS_9ResultSetIfEEPKfRKNS_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %5 = alloca %"class.std::vector.262", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !139
  %i.e = invoke noundef float @_ZN7cvflann9get_paramIfEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.a unwind label %bb.k

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = fadd float %i.e, 1.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.g = load ptr, ptr %4, align 8, !tbaa !123    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !128
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !521  ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %bb.c

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2                  ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32
          to label %.loopexit unwind label %bb.l  ; 6 uses

.loopexit:                                        ; preds = %bb.c
  store ptr %i.o, ptr %5, align 8, !tbaa !596
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !597
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %.pre = load i64, ptr %i.k, align 8, !tbaa !521 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !598
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !525
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.029.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.h ] ; 5 uses
  %.02728.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.2.i, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.029.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !139 ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.029.i ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !586 ; 2 uses
  %i.z = fcmp olt float %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub float %i.w, %i.y                   ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.029.i
  store float %i.ab, ptr %i.ac, align 4, !tbaa !139
  %i.ad = fadd float %.02728.i, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi float [ %i.ad, %bb.e ], [ %.02728.i, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !587 ; 2 uses
  %i.ag = fcmp ogt float %i.w, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = fsub float %i.w, %i.af                  ; 2 uses
  %i.ai = fmul float %i.ah, %i.ah                 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.029.i
  store float %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = fadd float %.1.i, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi float [ %i.ak, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %i.al = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.pre
  br i1 %exitcond.not.i, label %_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit, label %bb.d, !llvm.loop !1350

_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit: ; preds = %bb.h, %.loopexit.thread, %.loopexit
  %.027.lcssa.i = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.loopexit.thread ], [ %.2.i, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !520
  invoke void @_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE11searchLevelERNS_9ResultSetIfEEPKfPNS3_4NodeEfRSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %i.an, float noundef %.027.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %5, float noundef %i.f)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !597
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.av = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.k
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !128
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.o

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit21

bb.m:                                             ; preds = %_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIfSaIfEED2Ev.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !597
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit21

_ZNSt6vectorIfSaIfEED2Ev.exit21:                  ; preds = %bb.n, %bb.m, %bb.l
  %.pn12 = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ba, %bb.m ], [ %i.ba, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt6vectorIfSaIfEED2Ev.exit21 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7cvflann17KDTreeSingleIndexINS_2L2IfEEE10divideTreeEiiRSt6vectorINS3_8IntervalESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(241) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %4 = alloca %"class.std::vector.245", align 8   ; 10 uses
  %5 = alloca %"class.std::vector.245", align 8   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !265  ; 3 uses
  %i.f = icmp slt i32 %i.e, 48
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !333
  %i.g = add nsw i32 %i.e, -48
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !267
  %i.j = add nsw i32 %i.i, %i.e
  store i32 %i.j, ptr %i.h, align 8, !tbaa !267
  %i.k = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #37 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !195
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.69, i64 27, i64 1, ptr %i.l) #36 ; 0 uses
  br label %_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L2IfEEE4NodeEEEPT_m.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !284
  store ptr %i.n, ptr %i.k, align 8, !tbaa !208
  store ptr %i.k, ptr %i.m, align 8, !tbaa !284
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.p = phi i32 [ %i.g, %._crit_edge.i.i ], [ 8136, %bb.c ]
  %i.q = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.s, ptr %i.r, align 8, !tbaa !333
  store i32 %i.p, ptr %i.d, align 8, !tbaa !265
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !266
  %i.v = add nsw i32 %i.u, 48
  store i32 %i.v, ptr %i.t, align 4, !tbaa !266
  br label %_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L2IfEEE4NodeEEEPT_m.exit

_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L2IfEEE4NodeEEEPT_m.exit: ; preds = %.thread.i.i, %bb.d
  %.1.i.i = phi ptr [ %i.q, %bb.d ], [ null, %.thread.i.i ] ; 9 uses
  %i.w = sub nsw i32 %2, %1                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !522
  %.not = icmp sgt i32 %i.w, %i.y
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L2IfEEE4NodeEEEPT_m.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 %1, ptr %.1.i.i, align 8, !tbaa !600
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  store i32 %2, ptr %i.aa, align 4, !tbaa !601
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !521 ; 10 uses
  %.not100 = icmp eq i64 %i.ac, 0
  br i1 %.not100, label %.loopexit92, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_10
begin_hunk_11_@_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEPNS3_10KMeansNodeE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE17computeClusteringEPNS3_10KMeansNodeEPiiii(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::vector.262", align 8   ; 15 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 17 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %3, ptr %i.b, align 4, !tbaa !656
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %5, ptr %i.c, align 8, !tbaa !1488
  %i.d = icmp slt i32 %3, %4
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.e, align 8, !tbaa !657
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %.idx146 = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %2, i64 %.idx146 ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %2, ptr noundef nonnull %i.g, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %2, ptr noundef nonnull %i.g)
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !655
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.l = sext i32 %4 to i64                       ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !352
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i98 = icmp ugt i32 %4, 264              ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !353
  br i1 %.not.i.i98, label %bb.e, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i32 %4, 0
  %i.p = shl nuw nsw i64 %i.l, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #32 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !352
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack = load i64, ptr %i.t, align 8, !tbaa !541 ; 3 uses
  %.elt90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack91 = load i64, ptr %.elt90, align 8, !tbaa !541
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.unpack91 ; 2 uses
  %i.v = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.x = getelementptr i8, ptr %i.w, i64 %.unpack
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load ptr, ptr %i.y, align 8, !nosanitize !163
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.aa = inttoptr i64 %.unpack to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi ptr [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i32 noundef %4, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !129
  %i.ad = icmp slt i32 %i.ac, %4
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.ae, align 8, !tbaa !657
  %i.af = sext i32 %3 to i64                      ; 2 uses
  %.idx = shl nsw i64 %i.af, 2
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %.idx ; 2 uses
  %.not.i.i99 = icmp eq i32 %3, 0
  br i1 %.not.i.i99, label %_ZSt4sortIPiEvT_S1_.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag, i64 noundef %i.aj)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag)
          to label %_ZSt4sortIPiEvT_S1_.exit101 unwind label %bb.l

_ZSt4sortIPiEvT_S1_.exit101:                      ; preds = %bb.j, %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !655
  br label %bb.ae

bb.l:                                             ; preds = %.noexc, %bb.k, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.am = icmp slt i32 %4, 0
  br i1 %i.am, label %bb.n, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc102 unwind label %bb.s

.noexc102:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192, label %bb.o

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !352
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ap, align 8, !tbaa !353
  br label %._crit_edge

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aq = shl nuw nsw i64 %i.l, 2                 ; 2 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #32
          to label %.noexc103 unwind label %bb.s  ; 6 uses

.noexc103:                                        ; preds = %bb.o
  store ptr %i.ar, ptr %7, align 8, !tbaa !596
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !597
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !139
  %i.au = getelementptr i8, ptr %i.ar, i64 4      ; 3 uses
  %i.av = add nsw i64 %i.l, -1                    ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106, label %bb.p

bb.p:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !352
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ba, align 8, !tbaa !353
  br i1 %.not.i.i98, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #32
          to label %.noexc105 unwind label %bb.t  ; 2 uses

.noexc105:                                        ; preds = %bb.q
  store ptr %i.bb, ptr %8, align 8, !tbaa !352
  br label %.lr.ph

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106:          ; preds = %.noexc103
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !352
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.be, align 8, !tbaa !353
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.noexc105, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106
  %i.bf = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.az, %.noexc105 ], [ %i.az, %bb.p ]
  %i.bg = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.bb, %.noexc105 ], [ %i.az, %bb.p ] ; 2 uses
  %i.bh = zext nneg i32 %4 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.bi, i1 false), !tbaa !139
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bi, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192, %.lr.ph
  %i.bj = phi ptr [ %i.bf, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ] ; 2 uses
  %i.bk = phi ptr [ %i.bg, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ] ; 3 uses
  %i.bl = phi ptr [ %i.ar, %.lr.ph ], [ null, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.bm = sext i32 %3 to i64                      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !352
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i107 = icmp ugt i32 %3, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !353
  br i1 %.not.i.i107, label %bb.r, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.r:                                             ; preds = %._crit_edge
  %i.bp = shl nuw nsw i64 %i.bm, 2
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #32
          to label %.noexc108 unwind label %bb.u  ; 2 uses

.noexc108:                                        ; preds = %bb.r
  store ptr %i.bq, ptr %9, align 8, !tbaa !352
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit141

bb.t:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139

_ZN2cv10AutoBufferIiLm264EEC2Em.exit109:          ; preds = %.noexc108, %._crit_edge
  %i.bt = phi ptr [ %i.bq, %.noexc108 ], [ %i.bn, %._crit_edge ] ; 3 uses
  %i.bu = icmp sgt i32 %3, 0
  br i1 %i.bu, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !485 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !486 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !646 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ca, 2
  %i.cb = icmp ugt i64 %i.ca, 3                   ; 2 uses
  %i.cc = icmp samesign ugt i32 %4, 1
  %wide.trip.count176 = zext nneg i32 %3 to i64
  %.pre = load i32, ptr %i.s, align 4, !tbaa !129
  %i.cd = sext i32 %.pre to i64
  %i.ce = mul i64 %i.by, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.v

._crit_edge161:                                   ; preds = %bb.z, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.cg = shl nuw nsw i64 %i.l, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #32
          to label %bb.aa unwind label %bb.ah     ; 3 uses

bb.u:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136

bb.v:                                             ; preds = %.lr.ph160, %bb.z
  %indvars.iv173 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next174, %bb.z ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv173
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !129
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.by, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -12 ; 2 uses
  br i1 %i.cb, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.0.us51.i = phi float [ %i.dm, %.lr.ph.i ], [ 0.000000e+00, %bb.v ]
  %.037.us50.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %i.cn, %bb.v ] ; 5 uses
  %.039.us49.i = phi ptr [ %i.do, %.lr.ph.i ], [ %i.cf, %bb.v ] ; 5 uses
  %i.cq = load float, ptr %.037.us50.i, align 4, !tbaa !139
  %i.cr = load float, ptr %.039.us49.i, align 4, !tbaa !139
  %i.cs = fsub float %i.cq, %i.cr                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !139
  %i.cv = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !139
  %i.cx = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !139
  %i.da = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !139
  %i.dc = fsub float %i.cz, %i.db                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !139
  %i.df = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 12
  %i.dg = load float, ptr %i.df, align 4, !tbaa !139
  %i.dh = fsub float %i.de, %i.dg                 ; 2 uses
  %i.di = fmul float %i.cx, %i.cx
  %i.dj = call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.di)
  %i.dk = call float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.dj)
  %i.dl = call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dk)
  %i.dm = fadd float %.0.us51.i, %i.dl            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 16 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 16 ; 2 uses
  %i.dp = icmp ult ptr %i.dn, %i.cp
  br i1 %i.dp, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.v
  %.us-phi.i = phi ptr [ %i.cf, %bb.v ], [ %i.do, %.lr.ph.i ]
  %.us-phi47.i = phi ptr [ %i.cn, %bb.v ], [ %i.dn, %.lr.ph.i ] ; 2 uses
  %.us-phi48.i = phi float [ 0.000000e+00, %bb.v ], [ %i.dm, %.lr.ph.i ] ; 2 uses
  %i.dq = icmp ult ptr %.us-phi47.i, %i.co
  br i1 %i.dq, label %.lr.ph57.i, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit

.lr.ph57.i:                                       ; preds = %.preheader.i, %.lr.ph57.i
  %.156.i = phi float [ %i.dw, %.lr.ph57.i ], [ %.us-phi48.i, %.preheader.i ]
  %.13855.i = phi ptr [ %i.dr, %.lr.ph57.i ], [ %.us-phi47.i, %.preheader.i ] ; 2 uses
  %.14054.i = phi ptr [ %i.dt, %.lr.ph57.i ], [ %.us-phi.i, %.preheader.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.13855.i, i64 4 ; 2 uses
  %i.ds = load float, ptr %.13855.i, align 4, !tbaa !139
  %i.dt = getelementptr inbounds nuw i8, ptr %.14054.i, i64 4
  %i.du = load float, ptr %.14054.i, align 4, !tbaa !139
  %i.dv = fsub float %i.ds, %i.du                 ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %.156.i) ; 2 uses
  %i.dx = icmp ult ptr %i.dr, %i.co
  br i1 %i.dx, label %.lr.ph57.i, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit, !llvm.loop !49

_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit:        ; preds = %.lr.ph57.i, %.preheader.i
  %.036.i = phi float [ %.us-phi48.i, %.preheader.i ], [ %i.dw, %.lr.ph57.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv173 ; 2 uses
  store i32 0, ptr %i.dy, align 4, !tbaa !129
  br i1 %i.cc, label %.lr.ph157, label %._crit_edge158

._crit_edge158.loopexit:                          ; preds = %bb.x
  %i.dz = sext i32 %i.fu to i64
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit
  %i.ea = phi i64 [ 0, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ], [ %i.dz, %._crit_edge158.loopexit ] ; 2 uses
  %.076.lcssa = phi float [ %.036.i, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ], [ %.1, %._crit_edge158.loopexit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !139
  %i.ed = fcmp ogt float %.076.lcssa, %i.ec
  br i1 %i.ed, label %bb.y, label %bb.z

.lr.ph157:                                        ; preds = %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit, %bb.x
  %i.ee = phi i32 [ %i.fu, %bb.x ], [ 0, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 1, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ] ; 3 uses
  %.076155 = phi float [ %.1, %bb.x ], [ %.036.i, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !129
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul i64 %i.by, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ei ; 2 uses
  br i1 %i.cb, label %.lr.ph.i120, label %.preheader.i111

.lr.ph.i120:                                      ; preds = %.lr.ph157, %.lr.ph.i120
  %.0.us51.i121 = phi float [ %i.fg, %.lr.ph.i120 ], [ 0.000000e+00, %.lr.ph157 ]
  %.037.us50.i122 = phi ptr [ %i.fh, %.lr.ph.i120 ], [ %i.cn, %.lr.ph157 ] ; 5 uses
  %.039.us49.i123 = phi ptr [ %i.fi, %.lr.ph.i120 ], [ %i.ej, %.lr.ph157 ] ; 5 uses
  %i.ek = load float, ptr %.037.us50.i122, align 4, !tbaa !139
  %i.el = load float, ptr %.039.us49.i123, align 4, !tbaa !139
  %i.em = fsub float %i.ek, %i.el                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !139
  %i.ep = getelementptr inbounds nuw i8, ptr %.039.us49.i123, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !139
  %i.er = fsub float %i.eo, %i.eq                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !139
  %i.eu = getelementptr inbounds nuw i8, ptr %.039.us49.i123, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !139
  %i.ew = fsub float %i.et, %i.ev                 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !139
  %i.ez = getelementptr inbounds nuw i8, ptr %.039.us49.i123, i64 12
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !139
  %i.fb = fsub float %i.ey, %i.fa                 ; 2 uses
  %i.fc = fmul float %i.er, %i.er
  %i.fd = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.fc)
  %i.fe = call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.fd)
  %i.ff = call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fe)
  %i.fg = fadd float %.0.us51.i121, %i.ff         ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 16 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.039.us49.i123, i64 16 ; 2 uses
  %i.fj = icmp ult ptr %i.fh, %i.cp
  br i1 %i.fj, label %.lr.ph.i120, label %.preheader.i111

.preheader.i111:                                  ; preds = %.lr.ph.i120, %.lr.ph157
  %.us-phi.i112 = phi ptr [ %i.ej, %.lr.ph157 ], [ %i.fi, %.lr.ph.i120 ]
  %.us-phi47.i113 = phi ptr [ %i.cn, %.lr.ph157 ], [ %i.fh, %.lr.ph.i120 ] ; 2 uses
  %.us-phi48.i114 = phi float [ 0.000000e+00, %.lr.ph157 ], [ %i.fg, %.lr.ph.i120 ] ; 2 uses
  %i.fk = icmp ult ptr %.us-phi47.i113, %i.co
  br i1 %i.fk, label %.lr.ph57.i116, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124

.lr.ph57.i116:                                    ; preds = %.preheader.i111, %.lr.ph57.i116
  %.156.i117 = phi float [ %i.fq, %.lr.ph57.i116 ], [ %.us-phi48.i114, %.preheader.i111 ]
end_hunk_11
begin_hunk_12_@_ZN7cvflann4HeapINS_12BranchStructIPNS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEfEEE6popMinERS8_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false), !tbaa.struct !691
  %.not10.i.i = icmp eq i64 %.0920.i.i89.i.i, 0
  br i1 %.not10.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %i.as, align 8, !tbaa !546
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !139
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !689
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS2_7greaterISA_EEEvT_SI_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS2_7greaterISA_EEEvT_SI_T0_.exit: ; preds = %bb.b, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i
  %i.at = phi ptr [ %i.f, %bb.b ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16
  store ptr %i.au, ptr %i.b, align 8, !tbaa !689
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS2_7greaterISA_EEEvT_SI_T0_.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE17getCenterOrderingEPNS3_10KMeansNodeEPKfPi(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !538  ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = icmp slt i32 %i.b, 0
  %i.e = shl nsw i64 %i.c, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #32 ; 13 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !538
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !655  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !646  ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -12
  %i.p = icmp ugt i64 %i.m, 3
  br i1 %i.p, label %.lr.ph.i.preheader.us, label %.lr.ph41.split

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph41, %._crit_edge.us
  %indvar105 = phi i64 [ %indvar.next106, %._crit_edge.us ], [ 0, %.lr.ph41 ] ; 6 uses
  %i.q = shl nuw nsw i64 %indvar105, 2            ; 3 uses
  %scevgep111 = getelementptr i8, ptr %3, i64 %i.q
  %i.r = add nsw i64 %i.q, -4                     ; 2 uses
  %scevgep114 = getelementptr i8, ptr %3, i64 %i.r
  %scevgep107 = getelementptr i8, ptr %i.g, i64 %i.q
  %scevgep109 = getelementptr i8, ptr %i.g, i64 %i.r
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvar105
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !546
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !654
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.0.us51.i.us = phi float [ %i.ar, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.preheader.us ]
  %.037.us50.i.us = phi ptr [ %i.as, %.lr.ph.i.us ], [ %2, %.lr.ph.i.preheader.us ] ; 5 uses
  %.039.us49.i.us = phi ptr [ %i.at, %.lr.ph.i.us ], [ %i.u, %.lr.ph.i.preheader.us ] ; 5 uses
  %i.v = load float, ptr %.037.us50.i.us, align 4, !tbaa !139
  %i.w = load float, ptr %.039.us49.i.us, align 4, !tbaa !139
  %i.x = fsub float %i.v, %i.w                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.037.us50.i.us, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.us49.i.us, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !139
  %i.ac = fsub float %i.z, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.037.us50.i.us, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !139
  %i.af = getelementptr inbounds nuw i8, ptr %.039.us49.i.us, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !139
  %i.ah = fsub float %i.ae, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.037.us50.i.us, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !139
  %i.ak = getelementptr inbounds nuw i8, ptr %.039.us49.i.us, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !139
  %i.am = fsub float %i.aj, %i.al                 ; 2 uses
  %i.an = fmul float %i.ac, %i.ac
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ao)
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ap)
  %i.ar = fadd float %.0.us51.i.us, %i.aq         ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.037.us50.i.us, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.039.us49.i.us, i64 16 ; 2 uses
  %i.au = icmp ult ptr %i.as, %i.o
  br i1 %i.au, label %.lr.ph.i.us, label %.preheader.i.loopexit.us

.lr.ph57.i.us:                                    ; preds = %.preheader.i.loopexit.us, %.lr.ph57.i.us
  %.156.i.us = phi float [ %i.ba, %.lr.ph57.i.us ], [ %i.ar, %.preheader.i.loopexit.us ]
  %.13855.i.us = phi ptr [ %i.av, %.lr.ph57.i.us ], [ %i.as, %.preheader.i.loopexit.us ] ; 2 uses
  %.14054.i.us = phi ptr [ %i.ax, %.lr.ph57.i.us ], [ %i.at, %.preheader.i.loopexit.us ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.13855.i.us, i64 4 ; 2 uses
  %i.aw = load float, ptr %.13855.i.us, align 4, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %.14054.i.us, i64 4
  %i.ay = load float, ptr %.14054.i.us, align 4, !tbaa !139
  %i.az = fsub float %i.aw, %i.ay                 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %.156.i.us) ; 2 uses
  %i.bb = icmp ult ptr %i.av, %i.n
  br i1 %i.bb, label %.lr.ph57.i.us, label %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.us, !llvm.loop !42

_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.us:     ; preds = %.lr.ph57.i.us, %.preheader.i.loopexit.us
  %.036.i.us = phi float [ %i.ar, %.preheader.i.loopexit.us ], [ %i.ba, %.lr.ph57.i.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.b ], [ 0, %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.us ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv102
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !139
  %i.be = fcmp olt float %i.bd, %.036.i.us
  %i.bf = icmp samesign ult i64 %indvars.iv102, %indvar105 ; 2 uses
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br i1 %i.bg, label %bb.b, label %.preheader.us, !llvm.loop !1547

._crit_edge.us:                                   ; preds = %.lr.ph.us.preheader, %.preheader.us
  store float %.036.i.us, ptr %i.bm, align 4, !tbaa !139
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv102
  %i.bi = trunc nuw nsw i64 %indvar105 to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !129
  %indvar.next106 = add nuw nsw i64 %indvar105, 1 ; 2 uses
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !538
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvar.next106, %i.bk
  br i1 %i.bl, label %.lr.ph.i.preheader.us, label %._crit_edge42, !llvm.loop !1548

.preheader.us:                                    ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv102
  br i1 %i.bf, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.bn = xor i64 %indvars.iv102, -1
  %i.bo = add nsw i64 %indvar105, %i.bn
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  %i.bq = mul nsw i64 %i.bp, -4                   ; 4 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.bq
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.bq
  %i.br = shl nuw nsw i64 %i.bp, 2
  %i.bs = add nuw nsw i64 %i.br, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep108, ptr noundef nonnull align 4 dereferenceable(1) %scevgep110, i64 %i.bs, i1 false), !tbaa !139
  %scevgep113 = getelementptr i8, ptr %scevgep111, i64 %i.bq
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep113, ptr noundef nonnull align 4 dereferenceable(1) %scevgep115, i64 %i.bs, i1 false), !tbaa !129
  br label %._crit_edge.us

.preheader.i.loopexit.us:                         ; preds = %.lr.ph.i.us
  %i.bt = icmp ult ptr %i.as, %i.n
  br i1 %i.bt, label %.lr.ph57.i.us, label %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.us

.lr.ph41.split:                                   ; preds = %.lr.ph41
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.preheader.i, label %.preheader.i.us43

.preheader.i.us43:                                ; preds = %.lr.ph41.split, %._crit_edge.us61
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us61 ], [ 0, %.lr.ph41.split ] ; 6 uses
  %i.bu = shl nuw nsw i64 %indvar, 2              ; 3 uses
  %scevgep75 = getelementptr i8, ptr %3, i64 %i.bu
  %i.bv = add nsw i64 %i.bu, -4                   ; 2 uses
  %scevgep78 = getelementptr i8, ptr %3, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bu
  %scevgep73 = getelementptr i8, ptr %i.g, i64 %i.bv
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvar
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !546
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !654
  br label %.lr.ph57.i.us46

.lr.ph57.i.us46:                                  ; preds = %.lr.ph57.i.us46, %.preheader.i.us43
  %.156.i.us47 = phi float [ %i.ce, %.lr.ph57.i.us46 ], [ 0.000000e+00, %.preheader.i.us43 ]
  %.13855.i.us48 = phi ptr [ %i.bz, %.lr.ph57.i.us46 ], [ %2, %.preheader.i.us43 ] ; 2 uses
  %.14054.i.us49 = phi ptr [ %i.cb, %.lr.ph57.i.us46 ], [ %i.by, %.preheader.i.us43 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.13855.i.us48, i64 4 ; 2 uses
  %i.ca = load float, ptr %.13855.i.us48, align 4, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %.14054.i.us49, i64 4
  %i.cc = load float, ptr %.14054.i.us49, align 4, !tbaa !139
  %i.cd = fsub float %i.ca, %i.cc                 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %.156.i.us47) ; 3 uses
  %i.cf = icmp ult ptr %i.bz, %i.n
  br i1 %i.cf, label %.lr.ph57.i.us46, label %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50, !llvm.loop !42

_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50: ; preds = %.lr.ph57.i.us46, %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50 ], [ 0, %.lr.ph57.i.us46 ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !139
  %i.ci = fcmp olt float %i.ch, %i.ce
  %i.cj = icmp samesign ult i64 %indvars.iv, %indvar ; 2 uses
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ck, label %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50, label %.preheader.us55, !llvm.loop !1547

.preheader.us55:                                  ; preds = %_ZNK7cvflann2L2IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  br i1 %i.cj, label %.lr.ph.us59.preheader, label %._crit_edge.us61

.lr.ph.us59.preheader:                            ; preds = %.preheader.us55
  %i.cm = xor i64 %indvars.iv, -1
  %i.cn = add nsw i64 %indvar, %i.cm
  %i.co = and i64 %i.cn, 4294967295               ; 2 uses
  %i.cp = mul nsw i64 %i.co, -4                   ; 4 uses
  %scevgep72 = getelementptr i8, ptr %scevgep, i64 %i.cp
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.cp
  %i.cq = shl nuw nsw i64 %i.co, 2
  %i.cr = add nuw nsw i64 %i.cq, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep72, ptr noundef nonnull align 4 dereferenceable(1) %scevgep74, i64 %i.cr, i1 false), !tbaa !139
  %scevgep77 = getelementptr i8, ptr %scevgep75, i64 %i.cp
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.cp
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep77, ptr noundef nonnull align 4 dereferenceable(1) %scevgep79, i64 %i.cr, i1 false), !tbaa !129
  br label %._crit_edge.us61

._crit_edge.us61:                                 ; preds = %.lr.ph.us59.preheader, %.preheader.us55
  store float %i.ce, ptr %i.cl, align 4, !tbaa !139
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ct = trunc nuw nsw i64 %indvar to i32
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !129
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !538
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvar.next, %i.cv
  br i1 %i.cw, label %.preheader.i.us43, label %._crit_edge42, !llvm.loop !1548

.preheader.i:                                     ; preds = %.lr.ph41.split, %._crit_edge
  %indvar87 = phi i64 [ %indvar.next88, %._crit_edge ], [ 0, %.lr.ph41.split ] ; 5 uses
  %i.cx = shl nuw nsw i64 %indvar87, 2            ; 3 uses
  %scevgep93 = getelementptr i8, ptr %3, i64 %i.cx
  %i.cy = add nsw i64 %i.cx, -4                   ; 2 uses
  %scevgep96 = getelementptr i8, ptr %3, i64 %i.cy
  %scevgep89 = getelementptr i8, ptr %i.g, i64 %i.cx
  %scevgep91 = getelementptr i8, ptr %i.g, i64 %i.cy
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.c ], [ 0, %.preheader.i ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv84
  %i.da = load float, ptr %i.cz, align 4, !tbaa !139
  %i.db = fcmp olt float %i.da, 0.000000e+00
  %i.dc = icmp samesign ult i64 %indvars.iv84, %indvar87 ; 2 uses
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br i1 %i.dd, label %bb.c, label %.preheader, !llvm.loop !1547

.preheader:                                       ; preds = %bb.c
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv84
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.df = xor i64 %indvars.iv84, -1
  %i.dg = add nsw i64 %indvar87, %i.df
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  %i.di = mul nsw i64 %i.dh, -4                   ; 4 uses
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.di
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.dh, 2
  %i.dk = add nuw nsw i64 %i.dj, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep90, ptr noundef nonnull align 4 dereferenceable(1) %scevgep92, i64 %i.dk, i1 false), !tbaa !139
  %scevgep95 = getelementptr i8, ptr %scevgep93, i64 %i.di
  %scevgep97 = getelementptr i8, ptr %scevgep96, i64 %i.di
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep95, ptr noundef nonnull align 4 dereferenceable(1) %scevgep97, i64 %i.dk, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  store float 0.000000e+00, ptr %i.de, align 4, !tbaa !139
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.dm = trunc nuw nsw i64 %indvar87 to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !129
  %indvar.next88 = add nuw nsw i64 %indvar87, 1   ; 2 uses
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !538
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvar.next88, %i.do
  br i1 %i.dp, label %.preheader.i, label %._crit_edge42, !llvm.loop !1548

._crit_edge42:                                    ; preds = %._crit_edge.us61, %._crit_edge, %._crit_edge.us, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIiZN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISA_EERKT_iiE16HeapMapValueTypeSt4hashIiESt8equal_toIiESaISt4pairIKiSI_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN7cvflann4HeapINS_12BranchStructIPNS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrIS9_EERKT_iiEN16HeapMapValueTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !52
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !52
  br label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !693  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !378 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !341  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !343
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !344
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !1549
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !1549
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 40) #30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1550

_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !679
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !680
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !679    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !680
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L2IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !688  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !690
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEEEvPT_.exit

_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L2IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS1_12BranchStructIPNS1_11KMeansIndexINS1_2L2IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
end_hunk_12
begin_hunk_13_@_ZN7cvflann14AutotunedIndexINS_2L2IfEEE8CostDataD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !714    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !712  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.f)
          to label %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !60

_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !714
  br label %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !713
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

declare noundef i64 @_ZN2cv12getTickCountEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann12find_nearestINS_2L2IfEEEEvRKNS_6MatrixINT_11ElementTypeEEEPS5_PiiiS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %4, %3                       ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc50

.noexc50:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #32 ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !129
  %i.g = add nsw i64 %i.b, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !129
  br label %bb.b

bb.b:                                             ; preds = %.noexc50, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #32
          to label %.noexc55 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 5 uses

.noexc55:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.b ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !139
  br i1 %i.h, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc55
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !139
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc55, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.084.099 = phi ptr [ %i.e, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.1592.097 = phi ptr [ %i.f, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.074.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.16.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !484  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = icmp ugt i64 %i.q, 3                     ; 2 uses
  br i1 %i.t, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %.lr.ph.i
  %.0.us51.i = phi float [ %i.aq, %.lr.ph.i ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ]
  %.037.us50.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.n, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 5 uses
  %.039.us49.i = phi ptr [ %i.as, %.lr.ph.i ], [ %1, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 5 uses
  %i.u = load float, ptr %.037.us50.i, align 4, !tbaa !139
  %i.v = load float, ptr %.039.us49.i, align 4, !tbaa !139
  %i.w = fsub float %i.u, %i.v                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !139
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !139
  %i.ae = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !139
  %i.ag = fsub float %i.ad, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 12
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !139
  %i.al = fsub float %i.ai, %i.ak                 ; 2 uses
  %i.am = fmul float %i.ab, %i.ab
  %i.an = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.am)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ao)
  %i.aq = fadd float %.0.us51.i, %i.ap            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.039.us49.i, i64 16 ; 2 uses
  %i.at = icmp ult ptr %i.ar, %i.s
  br i1 %i.at, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.us-phi.i = phi ptr [ %1, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.as, %.lr.ph.i ]
  %.us-phi47.i = phi ptr [ %i.n, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.us-phi48.i = phi float [ 0.000000e+00, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.au = icmp ult ptr %.us-phi47.i, %i.r
  br i1 %i.au, label %.lr.ph57.i, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit

.lr.ph57.i:                                       ; preds = %.preheader.i, %.lr.ph57.i
  %.156.i = phi float [ %i.ba, %.lr.ph57.i ], [ %.us-phi48.i, %.preheader.i ]
  %.13855.i = phi ptr [ %i.av, %.lr.ph57.i ], [ %.us-phi47.i, %.preheader.i ] ; 2 uses
  %.14054.i = phi ptr [ %i.ax, %.lr.ph57.i ], [ %.us-phi.i, %.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.13855.i, i64 4 ; 2 uses
  %i.aw = load float, ptr %.13855.i, align 4, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %.14054.i, i64 4
  %i.ay = load float, ptr %.14054.i, align 4, !tbaa !139
  %i.az = fsub float %i.aw, %i.ay                 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %.156.i) ; 2 uses
  %i.bb = icmp ult ptr %i.av, %i.r
  br i1 %i.bb, label %.lr.ph57.i, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit, !llvm.loop !49

_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit:        ; preds = %.lr.ph57.i, %.preheader.i
  %.036.i = phi float [ %.us-phi48.i, %.preheader.i ], [ %i.ba, %.lr.ph57.i ]
  store float %.036.i, ptr %.sroa.074.0, align 4, !tbaa !139
  store i32 0, ptr %.sroa.084.099, align 4, !tbaa !129
  %i.bc = load i64, ptr %0, align 8, !tbaa !483   ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph113, label %.preheader

.lr.ph113:                                        ; preds = %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit
  %i.be = load i64, ptr %i.o, align 8, !tbaa !486
  br label %bb.c

.preheader:                                       ; preds = %.critedge, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %.lr.ph115.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit73

.lr.ph115.preheader:                              ; preds = %.preheader
  %i.bg = sext i32 %4 to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %scevgep = getelementptr i8, ptr %.sroa.084.099, i64 %i.bh
  %i.bi = zext nneg i32 %3 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %scevgep, i64 %i.bj, i1 false), !tbaa !129
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit73

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #30
  resume { ptr, i32 } %i.bk

bb.c:                                             ; preds = %.lr.ph113, %.critedge
  %.044112 = phi i64 [ 1, %.lr.ph113 ], [ %i.dw, %.critedge ] ; 4 uses
  %.045111 = phi i32 [ 1, %.lr.ph113 ], [ %.1, %.critedge ] ; 6 uses
  %i.bl = mul i64 %i.be, %.044112
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -12
  br i1 %i.t, label %.lr.ph.i66, label %.preheader.i57

.lr.ph.i66:                                       ; preds = %bb.c, %.lr.ph.i66
  %.0.us51.i67 = phi float [ %i.cl, %.lr.ph.i66 ], [ 0.000000e+00, %bb.c ]
  %.037.us50.i68 = phi ptr [ %i.cm, %.lr.ph.i66 ], [ %i.bm, %bb.c ] ; 5 uses
  %.039.us49.i69 = phi ptr [ %i.cn, %.lr.ph.i66 ], [ %1, %bb.c ] ; 5 uses
  %i.bp = load float, ptr %.037.us50.i68, align 4, !tbaa !139
  %i.bq = load float, ptr %.039.us49.i69, align 4, !tbaa !139
  %i.br = fsub float %i.bp, %i.bq                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.037.us50.i68, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !139
  %i.bu = getelementptr inbounds nuw i8, ptr %.039.us49.i69, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !139
  %i.bw = fsub float %i.bt, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.037.us50.i68, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %.039.us49.i69, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !139
  %i.cb = fsub float %i.by, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.037.us50.i68, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !139
  %i.ce = getelementptr inbounds nuw i8, ptr %.039.us49.i69, i64 12
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !139
  %i.cg = fsub float %i.cd, %i.cf                 ; 2 uses
  %i.ch = fmul float %i.bw, %i.bw
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.ch)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.ci)
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cj)
  %i.cl = fadd float %.0.us51.i67, %i.ck          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.037.us50.i68, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.039.us49.i69, i64 16 ; 2 uses
  %i.co = icmp ult ptr %i.cm, %i.bo
  br i1 %i.co, label %.lr.ph.i66, label %.preheader.i57

.preheader.i57:                                   ; preds = %.lr.ph.i66, %bb.c
  %.us-phi.i58 = phi ptr [ %1, %bb.c ], [ %i.cn, %.lr.ph.i66 ]
  %.us-phi47.i59 = phi ptr [ %i.bm, %bb.c ], [ %i.cm, %.lr.ph.i66 ] ; 2 uses
  %.us-phi48.i60 = phi float [ 0.000000e+00, %bb.c ], [ %i.cl, %.lr.ph.i66 ] ; 2 uses
  %i.cp = icmp ult ptr %.us-phi47.i59, %i.bn
  br i1 %i.cp, label %.lr.ph57.i62, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit70

.lr.ph57.i62:                                     ; preds = %.preheader.i57, %.lr.ph57.i62
  %.156.i63 = phi float [ %i.cv, %.lr.ph57.i62 ], [ %.us-phi48.i60, %.preheader.i57 ]
  %.13855.i64 = phi ptr [ %i.cq, %.lr.ph57.i62 ], [ %.us-phi47.i59, %.preheader.i57 ] ; 2 uses
  %.14054.i65 = phi ptr [ %i.cs, %.lr.ph57.i62 ], [ %.us-phi.i58, %.preheader.i57 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.13855.i64, i64 4 ; 2 uses
  %i.cr = load float, ptr %.13855.i64, align 4, !tbaa !139
  %i.cs = getelementptr inbounds nuw i8, ptr %.14054.i65, i64 4
  %i.ct = load float, ptr %.14054.i65, align 4, !tbaa !139
  %i.cu = fsub float %i.cr, %i.ct                 ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %.156.i63) ; 2 uses
  %i.cw = icmp ult ptr %i.cq, %i.bn
  br i1 %i.cw, label %.lr.ph57.i62, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit70, !llvm.loop !49

_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit70:      ; preds = %.lr.ph57.i62, %.preheader.i57
  %.036.i61 = phi float [ %.us-phi48.i60, %.preheader.i57 ], [ %i.cv, %.lr.ph57.i62 ] ; 3 uses
  %i.cx = icmp slt i32 %.045111, %i.a
  br i1 %i.cx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit70
  %i.cy = trunc i64 %.044112 to i32
  %i.cz = sext i32 %.045111 to i64                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.099, i64 %i.cz
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !129
  %i.db = add nsw i32 %.045111, 1
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.cz
  store float %.036.i61, ptr %i.dc, align 4, !tbaa !139
  br label %bb.g

bb.e:                                             ; preds = %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit70
  %i.dd = add nsw i32 %.045111, -1
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.de ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !139
  %i.dh = fcmp olt float %.036.i61, %i.dg
  br i1 %i.dh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %.036.i61, ptr %i.df, align 4, !tbaa !139
  %i.di = trunc i64 %.044112 to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.099, i64 %i.de
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ %i.db, %bb.d ], [ %.045111, %bb.f ], [ %.045111, %bb.e ] ; 3 uses
  %i.dk = icmp sgt i32 %.1, 1
  br i1 %i.dk, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.dl = zext nneg i32 %.1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.dl, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %indvars.iv.next ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !139 ; 2 uses
  %i.do = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !139 ; 2 uses
  %i.dr = fcmp olt float %i.dn, %i.dq
  br i1 %i.dr, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  store float %i.dq, ptr %i.dm, align 4, !tbaa !139
  store float %i.dn, ptr %i.dp, align 4, !tbaa !139
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.099, i64 %i.do ; 2 uses
  %i.dt = load <2 x i32>, ptr %i.ds, align 4, !tbaa !129
  %i.du = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.du, ptr %i.ds, align 4, !tbaa !129
  %i.dv = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.dv, label %.lr.ph, label %.critedge, !llvm.loop !1627

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %i.dw = add nuw i64 %.044112, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %i.bc
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !1628

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %.lr.ph115.preheader, %.preheader
  %i.dx = ptrtoint ptr %.sroa.16.0 to i64
  %i.dy = ptrtoint ptr %.sroa.074.0 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.dz) #30
  %i.ea = ptrtoint ptr %.sroa.1592.097 to i64
  %i.eb = ptrtoint ptr %.sroa.084.099 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.099, i64 noundef %i.ec) #30
  ret void
}

declare noundef double @_ZN2cv16getTickFrequencyEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !714    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !224
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.r, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt16allocator_traitsISaIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7cvflann14AutotunedIndexINS0_2L2IfEEE8CostDataESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.y, ptr %3, align 8, !tbaa !202
  %i.z = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull %i.x, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
end_hunk_13
begin_hunk_14_@_ZN7cvflann8LshIndexINS_2L2IfEEE9knnSearchERKNS_6MatrixIfEERNS4_IiEERS5_iRKNS_12SearchParamsE:bb.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !128
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.q
  %.pn50 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ar

bb.s:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !238
  %i.ai = trunc i64 %i.ah to i32
  %.not52 = icmp sgt i32 %4, %i.ai
  br i1 %.not52, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv5flann5Index9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES7_iRKNS0_12SearchParamsE, ptr noundef nonnull @.str.86, i32 noundef 200) #33
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.x:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %12, align 8, !tbaa !123  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.x
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !128
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.w
  %.pn53 = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.ak, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ar

bb.y:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !484
  %i.as = trunc i64 %i.ar to i32
  %.not55 = icmp sgt i32 %4, %i.as
  br i1 %.not55, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv5flann5Index9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES7_iRKNS0_12SearchParamsE, ptr noundef nonnull @.str.86, i32 noundef 201) #33
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ad:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %14, align 8, !tbaa !123  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ad
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ac
  %.pn56 = phi { ptr, i32 } [ %i.at, %bb.ac ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.au, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ar

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 9 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !224
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7cvflann18KNNUniqueResultSetIfEE, i64 16), ptr %16, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 %4, ptr %i.bh, align 8, !tbaa !500
  store ptr null, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !116
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !117
  store i64 0, ptr %i.bg, align 8, !tbaa !118
  store float f0x7F7FFFFF, ptr %i.bb, align 4, !tbaa !501
  store i8 0, ptr %i.ba, align 8, !tbaa !502
  %.not89 = icmp eq i64 %i.q, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = icmp slt i32 %4, 1
  %i.bm = zext i32 %4 to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 2            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bt = icmp slt i32 %4, 0
  %i.bu = icmp ne i32 %4, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 22
  %i.bw = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 28
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.bz = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br label %bb.ag

._crit_edge.loopexit:                             ; preds = %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !115
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ae
  %i.ca = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.ae ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7cvflann15UniqueResultSetIfEE, i64 16), ptr %16, align 8, !tbaa !136
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  invoke void @_ZNSt8_Rb_treeIN7cvflann15UniqueResultSetIfE9DistIndexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef %i.ca)
          to label %_ZN7cvflann15UniqueResultSetIfED2Ev.exit unwind label %bb.af, !inline_history !503

bb.af:                                            ; preds = %._crit_edge
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #29, !inline_history !503
  unreachable

_ZN7cvflann15UniqueResultSetIfED2Ev.exit:         ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  ret void

bb.ag:                                            ; preds = %.lr.ph, %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit
  %.088 = phi i64 [ 0, %.lr.ph ], [ %i.et, %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit ] ; 6 uses
  %i.ce = load ptr, ptr %i.bd, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeIN7cvflann15UniqueResultSetIfE9DistIndexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef %i.ce)
          to label %_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #29
  unreachable

_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit:  ; preds = %bb.ag
  store ptr null, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !116
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !117
  store i64 0, ptr %i.bg, align 8, !tbaa !118
  store float f0x7F7FFFFF, ptr %i.bb, align 4, !tbaa !501
  store i8 0, ptr %i.ba, align 8, !tbaa !502
  br i1 %i.bl, label %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit
  %i.ch = load ptr, ptr %i.bj, align 8, !tbaa !251
  %i.ci = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.cj = mul i64 %i.ci, %.088
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj
  call void @llvm.memset.p0.i64(ptr align 4 %i.ck, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !129
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !485
  %i.cm = load i64, ptr %i.bo, align 8, !tbaa !486
  %i.cn = mul i64 %i.cm, %.088
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cn ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ai
  %i.cq = getelementptr i8, ptr %i.co, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %next.gep, align 4, !tbaa !139
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.cs, align 4, !tbaa !139
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !1731

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i76.preheader

.lr.ph.i.i.i.i76.preheader:                       ; preds = %bb.ai, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.co, %bb.ai ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i.i.i76.preheader, %.lr.ph.i.i.i.i76
  %.07.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i76 ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i76.preheader ] ; 2 uses
  store float f0x7F7FFFFF, ptr %.07.i.i.i.i, align 4, !tbaa !139
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.cu, %i.cp
  br i1 %.not.i.i.i.i77, label %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i76, !llvm.loop !1732

_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i76, %middle.block, %_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !485
  %i.cw = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.cx = mul i64 %i.cw, %.088
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %0, align 8, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %._crit_edge.i.i unwind label %bb.al

._crit_edge.i.i:                                  ; preds = %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr %i.br, ptr %17, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.br, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false)
  store i64 6, ptr %i.bs, align 8, !tbaa !122
  store i8 0, ptr %i.bv, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !141
  %i.dc = invoke noundef zeroext i1 @_ZN7cvflann9get_paramIbEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.dd = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.br
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.aj
  %i.df = load i64, ptr %i.br, align 8, !tbaa !128
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !251
  %i.di = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.dj = mul i64 %i.di, %.088
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj ; 3 uses
  %i.dl = load ptr, ptr %i.bn, align 8, !tbaa !485
  %i.dm = load i64, ptr %i.bo, align 8, !tbaa !486
  %i.dn = mul i64 %i.dm, %.088
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  br i1 %i.dc, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dp = load ptr, ptr %16, align 8, !tbaa !136
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %i.dk, ptr noundef %i.do, i32 noundef %4)
          to label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit unwind label %bb.al, !inline_history !504

bb.al:                                            ; preds = %bb.ak, %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.du = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.br
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.am
  %i.dw = load i64, ptr %i.br, align 8, !tbaa !128
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dy = load ptr, ptr %i.be, align 8, !tbaa !116 ; 4 uses
  br i1 %i.bt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not30.i = icmp eq ptr %i.dy, %i.bc
  br i1 %.not30.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.ao, %.lr.ph34.i
  %.01233.i = phi ptr [ %i.ee, %.lr.ph34.i ], [ %i.dk, %bb.ao ] ; 2 uses
  %.01332.i = phi ptr [ %i.ef, %.lr.ph34.i ], [ %i.do, %bb.ao ] ; 2 uses
  %.sroa.021.031.i = phi ptr [ %i.ed, %.lr.ph34.i ], [ %i.dy, %bb.ao ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !506
  store i32 %i.eb, ptr %.01233.i, align 4, !tbaa !129
  %i.ec = load float, ptr %i.dz, align 4, !tbaa !507
  store float %i.ec, ptr %.01332.i, align 4, !tbaa !139
  %i.ed = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.021.031.i) #34 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01233.i, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.01332.i, i64 4
  %.not.i = icmp eq ptr %i.ed, %i.bc
  br i1 %.not.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit, label %.lr.ph34.i, !llvm.loop !39

bb.ap:                                            ; preds = %bb.an
  %i.eg = icmp ne ptr %i.dy, %i.bc
  %i.eh = and i1 %i.bu, %i.eg
  br i1 %i.eh, label %.lr.ph.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.i
  %.029.i = phi i32 [ %i.ep, %.lr.ph.i ], [ 0, %bb.ap ]
  %.128.i = phi ptr [ %i.en, %.lr.ph.i ], [ %i.dk, %bb.ap ] ; 2 uses
  %.11427.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.do, %bb.ap ] ; 2 uses
  %.sroa.016.026.i = phi ptr [ %i.em, %.lr.ph.i ], [ %i.dy, %bb.ap ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !506
  store i32 %i.ek, ptr %.128.i, align 4, !tbaa !129
  %i.el = load float, ptr %i.ei, align 4, !tbaa !507
  store float %i.el, ptr %.11427.i, align 4, !tbaa !139
  %i.em = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.016.026.i) #34 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.128.i, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.11427.i, i64 4
  %i.ep = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %i.eq = icmp ne ptr %i.em, %i.bc
  %i.er = icmp slt i32 %i.ep, %4
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %.lr.ph.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit, !llvm.loop !40

_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit: ; preds = %.lr.ph.i, %.lr.ph34.i, %bb.ap, %bb.ao, %bb.ak
  %i.et = add nuw i64 %.088, 1                    ; 2 uses
  %i.eu = load i64, ptr %1, align 8, !tbaa !483
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ag, label %._crit_edge.loopexit, !llvm.loop !1733

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.ds, %bb.al ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  call void @_ZN7cvflann15UniqueResultSetIfED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.aq ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_2L2IfEEE9saveIndexEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = tail call i64 @fwrite(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 32, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !485
  %i.k = load i64, ptr %i.g, align 8, !tbaa !483
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !484
  %i.n = mul i64 %i.m, %i.k
  %i.o = tail call i64 @fwrite(ptr noundef %i.j, i64 noundef 4, i64 noundef %i.n, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_14
begin_hunk_15_@_ZN7cvflann11KMeansIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.bf = phi i32 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %._crit_edge.i.i60

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  store i32 2147483647, ptr %i.ba, align 8, !tbaa !803
  br label %._crit_edge.i.i60

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bi = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ae
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bn = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.an
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !128
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.bs = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aw
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.k
  %i.bu = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

._crit_edge.i.i60:                                ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bw, ptr %7, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.bx, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.by, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.bz = invoke noundef i32 @_ZN7cvflann9get_paramINS_20flann_centers_init_tEEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS9_ESaISt4pairIKS9_SA_EEERSE_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %._crit_edge.i.i60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cb = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bw
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !128
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #30
  %.pre78 = load i32, ptr %i.ca, align 4, !tbaa !1752
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.cf = phi i32 [ %.pre78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  switch i32 %i.cf, label %bb.p [
    i32 0, label %bb.u
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i60
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.ch = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bw
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.m
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !128
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.y

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  br label %bb.u

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7cvflann11KMeansIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_, ptr noundef nonnull @.str.66, i32 noundef 373) #33
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.t:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.t
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !128
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.s
  %.pn28 = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.cm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.n, %bb.o
  %.sink = phi i64 [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_2L1IfEEE21chooseCentersGonzalesEiPiiS4_Ri to i64), %bb.n ], [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_2L1IfEEE21chooseCentersKMeansppEiPiiS4_Ri to i64), %bb.o ], [ ptrtoint (ptr @_ZN7cvflann11KMeansIndexINS_2L1IfEEE19chooseCentersRandomEiPiiS4_Ri to i64), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cs, align 8, !tbaa !804
  %.repack31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.repack31, align 8, !tbaa !804
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 4.000000e-01, ptr %i.ct, align 8, !tbaa !805
  %i.cu = load i32, ptr %i.ar, align 4, !tbaa !802 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i32 %i.cu, 0
  %i.cx = shl nsw i64 %i.cv, 3
  %i.cy = select i1 %i.cw, i64 -1, i64 %i.cx
  %i.cz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #32
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  store ptr %i.cz, ptr %i.u, align 8, !tbaa !806
  %i.da = load i32, ptr %i.ar, align 4, !tbaa !802 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i32 %i.da, 0
  %i.dd = shl nsw i64 %i.db, 3
  %i.de = select i1 %i.dc, i64 -1, i64 %i.dd
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #32
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.df, ptr %i.v, align 8, !tbaa !807
  %i.dg = load i32, ptr %i.ar, align 4, !tbaa !802 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !806
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %i.dk, i1 false), !tbaa !809
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.dk, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn33 = phi { ptr, i32 } [ %i.dl, %bb.x ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not2.i = icmp eq ptr %i.dm, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.dn = phi ptr [ %i.do, %.lr.ph.i ], [ %i.dm, %bb.y ] ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !208 ; 3 uses
  call void @free(ptr noundef nonnull %i.dn) #31
  store ptr %i.do, ptr %i.y, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !12

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i, %bb.y
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #31
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann14CompositeIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann14CompositeIndexINS_2L1IfEEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !202
  %i.i = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.b, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.e, align 8, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !118
  store i64 %i.o, ptr %i.f, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.i, ptr %i.c, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.a
  %i.p = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #32
          to label %bb.e unwind label %bb.i       ; 3 uses

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  invoke void @_ZN7cvflann11KDTreeIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(201) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !813
  %i.r = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7cvflann11KMeansIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(212) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !814
  ret void

bb.i:                                             ; preds = %bb.f, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 208) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 216) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.t, %bb.i ], [ %i.u, %bb.j ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann14AutotunedIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(265) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca float, align 4                    ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann14AutotunedIndexINS_2L1IfEEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.i, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.m, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.l, ptr %i.n, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.l, ptr %i.o, align 8, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.p, align 8, !tbaa !118
  invoke void @_ZN7cvflann12SearchParams4initEifbb(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 32, float noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_ZN7cvflann12SearchParamsC2Eifb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.k) #31
  br label %.body

_ZN7cvflann12SearchParamsC2Eifb.exit:             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !511
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 16, ptr %i.a, align 8, !tbaa !127
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZN7cvflann12SearchParamsC2Eifb.exit
  store ptr %i.u, ptr %3, align 8, !tbaa !123
  %i.v = load i64, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(16) @.str.6, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !122
  %i.x = load ptr, ptr %3, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store float 8.000000e-01, ptr %i.b, align 4, !tbaa !139
  %i.z = invoke noundef float @_ZN7cvflann9get_paramIfEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.c unwind label %bb.h
end_hunk_15
begin_hunk_16_@_ZN7cvflann27HierarchicalClusteringIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_:bb.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bf, ptr %7, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bf, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.bg, align 8, !tbaa !122
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 0, ptr %i.bh, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 100, ptr %i.d, align 4, !tbaa !129
  %i.bi = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.bk = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bf
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.h
  %i.bm = load i64, ptr %i.bf, align 8, !tbaa !128
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bo = load i32, ptr %i.ar, align 4, !tbaa !1753
  switch i32 %i.bo, label %bb.p [
    i32 0, label %bb.u
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bq = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ae
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.i
  %i.bs = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bv = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.an
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.j
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !128
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ca = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aw
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.k
  %i.cc = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cf = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.ch = load i64, ptr %i.bf, align 8, !tbaa !128
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.y

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  br label %bb.u

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEEC2ERKNS_6MatrixIhEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISD_ESaISt4pairIKSD_SE_EEES1_, ptr noundef nonnull @.str.82, i32 noundef 385) #33
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.t:                                             ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !128
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.ck, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.m, %bb.o, %bb.n
  %.sink = phi i64 [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L1IfEEE21chooseCentersGonzalesEiPiiS4_Ri to i64), %bb.m ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L1IfEEE22GroupWiseCenterChooserEiPiiS4_Ri to i64), %bb.o ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L1IfEEE21chooseCentersKMeansppEiPiiS4_Ri to i64), %bb.n ], [ ptrtoint (ptr @_ZN7cvflann27HierarchicalClusteringIndexINS_2L1IfEEE19chooseCentersRandomEiPiiS4_Ri to i64), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cq, align 8, !tbaa !828
  %.repack28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.repack28, align 8, !tbaa !828
  %i.cr = load i32, ptr %i.ba, align 8, !tbaa !826 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i32 %i.cr, 0
  %i.cu = shl nsw i64 %i.cs, 3
  %i.cv = select i1 %i.ct, i64 -1, i64 %i.cu
  %i.cw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cv) #32
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  store ptr %i.cw, ptr %i.u, align 8, !tbaa !829
  %i.cx = load i32, ptr %i.ba, align 8, !tbaa !826 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i32 %i.cx, 0
  %i.da = shl nsw i64 %i.cy, 3
  %i.db = select i1 %i.cz, i64 -1, i64 %i.da
  %i.dc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #32
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.dc, ptr %i.v, align 8, !tbaa !830
  %i.dd = load i32, ptr %i.ba, align 8, !tbaa !826 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.df = load ptr, ptr %i.u, align 8, !tbaa !829
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.dh, i1 false), !tbaa !832
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dc, i8 0, i64 %i.dh, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn30 = phi { ptr, i32 } [ %i.di, %bb.x ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !284 ; 2 uses
  %.not2.i = icmp eq ptr %i.dj, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.dj, %bb.y ] ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !208 ; 3 uses
  call void @free(ptr noundef nonnull %i.dk) #31
  store ptr %i.dl, ptr %i.y, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !12

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i, %bb.y
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #31
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_2L1IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann8LshIndexINS_2L1IfEEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !511
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !202
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i unwind label %bb.i ; 3 uses

.noexc.i.i:                                       ; preds = %bb.b, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.k, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  store i64 %i.u, ptr %i.l, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.o, ptr %i.i, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.x, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.y, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 12, ptr %i.b, align 4, !tbaa !129
  %i.z = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ab = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.w
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !128
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !126
  store i64 7312272889233368427, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.ag, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ah, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 20, ptr %i.c, align 4, !tbaa !129
  %i.ai = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ak = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.af
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.f
  %i.am = load i64, ptr %i.af, align 8, !tbaa !128
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 17, ptr %i.a, align 8, !tbaa !127
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  store ptr %i.ap, ptr %6, align 8, !tbaa !123
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ap, ptr noundef nonnull align 1 dereferenceable(17) @.str.13, i64 17, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !122
  %i.as = load ptr, ptr %6, align 8, !tbaa !123
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 2, ptr %i.d, align 4, !tbaa !129
  %i.au = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %.noexc27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.aw = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ao
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !128
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #30
  %.pre = load i32, ptr %i.av, align 8, !tbaa !1754
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.ba = phi i32 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.au, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1755
  %i.bd = trunc i64 %i.bc to i32
end_hunk_16
begin_hunk_17_@_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE9loadIndexEP8_IO_FILE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %common.resume

bb.af:                                            ; preds = %_ZN7cvflann3any6assignIiEERS0_RKT_.exit.i, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %11, align 8, !tbaa !123  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bp
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.af
  %i.dn = load i64, ptr %i.bp, align 8, !tbaa !128
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %common.resume

bb.ag:                                            ; preds = %_ZN7cvflann3any6assignIbEERS0_RKT_.exit.i, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %12, align 8, !tbaa !123  ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ck
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.ag
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !128
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK7cvflann17KDTreeSingleIndexINS_2L1IfEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !787
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK7cvflann17KDTreeSingleIndexINS_2L1IfEEE6veclenEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !784
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK7cvflann17KDTreeSingleIndexINS_2L1IfEEE10usedMemoryEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1774
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1775
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !845
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 2
  %i.i = add i32 %i.e, %i.h
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK7cvflann17KDTreeSingleIndexINS_2L1IfEEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7cvflann17KDTreeSingleIndexINS_2L1IfEEE13getParametersB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(241) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !202
  %i.h = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %.noexc.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !199  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.d, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  store i64 %i.n, ptr %i.e, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store ptr %i.h, ptr %i.b, align 8, !tbaa !124
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE13findNeighborsERNS_9ResultSetIfEEPKfRKNS_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %5 = alloca %"class.std::vector.262", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !139
  %i.e = invoke noundef float @_ZN7cvflann9get_paramIfEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.a unwind label %bb.k

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = fadd float %i.e, 1.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.g = load ptr, ptr %4, align 8, !tbaa !123    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !128
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !784  ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %bb.c

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2                  ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32
          to label %.loopexit unwind label %bb.l  ; 6 uses

.loopexit:                                        ; preds = %bb.c
  store ptr %i.o, ptr %5, align 8, !tbaa !596
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !597
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %.pre = load i64, ptr %i.k, align 8, !tbaa !784 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !598
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !788
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.029.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.h ] ; 5 uses
  %.02728.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.2.i, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.029.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !139 ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.029.i ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !843 ; 2 uses
  %i.z = fcmp olt float %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub float %i.w, %i.y
  %i.ab = call noundef float @llvm.fabs.f32(float %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.029.i
  store float %i.ab, ptr %i.ac, align 4, !tbaa !139
  %i.ad = fadd float %.02728.i, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi float [ %i.ad, %bb.e ], [ %.02728.i, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !844 ; 2 uses
  %i.ag = fcmp ogt float %i.w, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = fsub float %i.w, %i.af
  %i.ai = call noundef float @llvm.fabs.f32(float %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.029.i
  store float %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = fadd float %.1.i, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi float [ %i.ak, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %i.al = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.pre
  br i1 %exitcond.not.i, label %_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit, label %bb.d, !llvm.loop !1776

_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit: ; preds = %bb.h, %.loopexit.thread, %.loopexit
  %.027.lcssa.i = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.loopexit.thread ], [ %.2.i, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !783
  invoke void @_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE11searchLevelERNS_9ResultSetIfEEPKfPNS3_4NodeEfRSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %i.an, float noundef %.027.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %5, float noundef %i.f)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !597
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.av = load ptr, ptr %4, align 8, !tbaa !123   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.k
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !128
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.o

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit21

bb.m:                                             ; preds = %_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE23computeInitialDistancesEPKfRSt6vectorIfSaIfEE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIfSaIfEED2Ev.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !597
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit21

_ZNSt6vectorIfSaIfEED2Ev.exit21:                  ; preds = %bb.n, %bb.m, %bb.l
  %.pn12 = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ba, %bb.m ], [ %i.ba, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt6vectorIfSaIfEED2Ev.exit21 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7cvflann17KDTreeSingleIndexINS_2L1IfEEE10divideTreeEiiRSt6vectorINS3_8IntervalESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(241) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %4 = alloca %"class.std::vector.446", align 8   ; 10 uses
  %5 = alloca %"class.std::vector.446", align 8   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !265  ; 3 uses
  %i.f = icmp slt i32 %i.e, 48
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !333
  %i.g = add nsw i32 %i.e, -48
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !267
  %i.j = add nsw i32 %i.i, %i.e
  store i32 %i.j, ptr %i.h, align 8, !tbaa !267
  %i.k = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #37 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !195
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.69, i64 27, i64 1, ptr %i.l) #36 ; 0 uses
  br label %_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L1IfEEE4NodeEEEPT_m.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !284
  store ptr %i.n, ptr %i.k, align 8, !tbaa !208
  store ptr %i.k, ptr %i.m, align 8, !tbaa !284
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.p = phi i32 [ %i.g, %._crit_edge.i.i ], [ 8136, %bb.c ]
  %i.q = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.s, ptr %i.r, align 8, !tbaa !333
  store i32 %i.p, ptr %i.d, align 8, !tbaa !265
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !266
  %i.v = add nsw i32 %i.u, 48
  store i32 %i.v, ptr %i.t, align 4, !tbaa !266
  br label %_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L1IfEEE4NodeEEEPT_m.exit

_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L1IfEEE4NodeEEEPT_m.exit: ; preds = %.thread.i.i, %bb.d
  %.1.i.i = phi ptr [ %i.q, %bb.d ], [ null, %.thread.i.i ] ; 9 uses
  %i.w = sub nsw i32 %2, %1                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !785
  %.not = icmp sgt i32 %i.w, %i.y
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN7cvflann15PooledAllocator8allocateINS_17KDTreeSingleIndexINS_2L1IfEEE4NodeEEEPT_m.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 %1, ptr %.1.i.i, align 8, !tbaa !847
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  store i32 %2, ptr %i.aa, align 4, !tbaa !848
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !784 ; 10 uses
  %.not100 = icmp eq i64 %i.ac, 0
  br i1 %.not100, label %.loopexit92, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_17
begin_hunk_18_@_ZN7cvflann11KMeansIndexINS_2L1IfEEE12free_centersEPNS3_10KMeansNodeE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_2L1IfEEE17computeClusteringEPNS3_10KMeansNodeEPiiii(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::vector.262", align 8   ; 15 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 17 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %3, ptr %i.b, align 4, !tbaa !902
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %5, ptr %i.c, align 8, !tbaa !1913
  %i.d = icmp slt i32 %3, %4
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.e, align 8, !tbaa !903
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %.idx146 = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %2, i64 %.idx146 ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %2, ptr noundef nonnull %i.g, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %2, ptr noundef nonnull %i.g)
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !901
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.l = sext i32 %4 to i64                       ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !352
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i98 = icmp ugt i32 %4, 264              ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !353
  br i1 %.not.i.i98, label %bb.e, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i32 %4, 0
  %i.p = shl nuw nsw i64 %i.l, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #32 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !352
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack = load i64, ptr %i.t, align 8, !tbaa !804 ; 3 uses
  %.elt90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack91 = load i64, ptr %.elt90, align 8, !tbaa !804
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.unpack91 ; 2 uses
  %i.v = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.x = getelementptr i8, ptr %i.w, i64 %.unpack
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load ptr, ptr %i.y, align 8, !nosanitize !163
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.aa = inttoptr i64 %.unpack to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi ptr [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i32 noundef %4, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !129
  %i.ad = icmp slt i32 %i.ac, %4
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.ae, align 8, !tbaa !903
  %i.af = sext i32 %3 to i64                      ; 2 uses
  %.idx = shl nsw i64 %i.af, 2
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %.idx ; 2 uses
  %.not.i.i99 = icmp eq i32 %3, 0
  br i1 %.not.i.i99, label %_ZSt4sortIPiEvT_S1_.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag, i64 noundef %i.aj)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag)
          to label %_ZSt4sortIPiEvT_S1_.exit101 unwind label %bb.l

_ZSt4sortIPiEvT_S1_.exit101:                      ; preds = %bb.j, %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !901
  br label %bb.ae

bb.l:                                             ; preds = %.noexc, %bb.k, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.am = icmp slt i32 %4, 0
  br i1 %i.am, label %bb.n, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc102 unwind label %bb.s

.noexc102:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192, label %bb.o

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !352
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ap, align 8, !tbaa !353
  br label %._crit_edge

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aq = shl nuw nsw i64 %i.l, 2                 ; 2 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #32
          to label %.noexc103 unwind label %bb.s  ; 6 uses

.noexc103:                                        ; preds = %bb.o
  store ptr %i.ar, ptr %7, align 8, !tbaa !596
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !597
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !139
  %i.au = getelementptr i8, ptr %i.ar, i64 4      ; 3 uses
  %i.av = add nsw i64 %i.l, -1                    ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106, label %bb.p

bb.p:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !352
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ba, align 8, !tbaa !353
  br i1 %.not.i.i98, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #32
          to label %.noexc105 unwind label %bb.t  ; 2 uses

.noexc105:                                        ; preds = %bb.q
  store ptr %i.bb, ptr %8, align 8, !tbaa !352
  br label %.lr.ph

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106:          ; preds = %.noexc103
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !352
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.be, align 8, !tbaa !353
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.noexc105, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106
  %i.bf = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.az, %.noexc105 ], [ %i.az, %bb.p ]
  %i.bg = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.bb, %.noexc105 ], [ %i.az, %bb.p ] ; 2 uses
  %i.bh = zext nneg i32 %4 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.bi, i1 false), !tbaa !139
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bi, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192, %.lr.ph
  %i.bj = phi ptr [ %i.bf, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ] ; 2 uses
  %i.bk = phi ptr [ %i.bg, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ] ; 3 uses
  %i.bl = phi ptr [ %i.ar, %.lr.ph ], [ null, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.bm = sext i32 %3 to i64                      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !352
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i107 = icmp ugt i32 %3, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !353
  br i1 %.not.i.i107, label %bb.r, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.r:                                             ; preds = %._crit_edge
  %i.bp = shl nuw nsw i64 %i.bm, 2
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #32
          to label %.noexc108 unwind label %bb.u  ; 2 uses

.noexc108:                                        ; preds = %bb.r
  store ptr %i.bq, ptr %9, align 8, !tbaa !352
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit141

bb.t:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139

_ZN2cv10AutoBufferIiLm264EEC2Em.exit109:          ; preds = %.noexc108, %._crit_edge
  %i.bt = phi ptr [ %i.bq, %.noexc108 ], [ %i.bn, %._crit_edge ] ; 3 uses
  %i.bu = icmp sgt i32 %3, 0
  br i1 %i.bu, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !485 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !486 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !892 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ca, 2
  %i.cb = icmp ugt i64 %i.ca, 3                   ; 2 uses
  %i.cc = icmp samesign ugt i32 %4, 1
  %wide.trip.count176 = zext nneg i32 %3 to i64
  %.pre = load i32, ptr %i.s, align 4, !tbaa !129
  %i.cd = sext i32 %.pre to i64
  %i.ce = mul i64 %i.by, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.v

._crit_edge161:                                   ; preds = %bb.z, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.cg = shl nuw nsw i64 %i.l, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #32
          to label %bb.aa unwind label %bb.ah     ; 3 uses

bb.u:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136

bb.v:                                             ; preds = %.lr.ph160, %bb.z
  %indvars.iv173 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next174, %bb.z ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv173
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !129
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.by, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -12 ; 2 uses
  br i1 %i.cb, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.0.us46.i = phi float [ %i.cv, %.lr.ph.i ], [ 0.000000e+00, %bb.v ]
  %.032.us45.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cn, %bb.v ] ; 2 uses
  %.034.us44.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %i.cf, %bb.v ] ; 2 uses
  %i.cq = load <4 x float>, ptr %.032.us45.i, align 4, !tbaa !139
  %i.cr = load <4 x float>, ptr %.034.us44.i, align 4, !tbaa !139
  %i.cs = fsub <4 x float> %i.cq, %i.cr
  %i.ct = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cs) ; 4 uses
  %shift = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ct, %shift
  %shift211 = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop212 = fadd <4 x float> %foldExtExtBinop, %shift211
  %shift214 = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop215 = fadd <4 x float> %foldExtExtBinop212, %shift214
  %i.cu = extractelement <4 x float> %foldExtExtBinop215, i64 0
  %i.cv = fadd float %.0.us46.i, %i.cu            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.032.us45.i, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.034.us44.i, i64 16 ; 2 uses
  %i.cy = icmp ult ptr %i.cw, %i.cp
  br i1 %i.cy, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.v
  %.us-phi.i = phi ptr [ %i.cf, %bb.v ], [ %i.cx, %.lr.ph.i ]
  %.us-phi42.i = phi ptr [ %i.cn, %bb.v ], [ %i.cw, %.lr.ph.i ] ; 2 uses
  %.us-phi43.i = phi float [ 0.000000e+00, %bb.v ], [ %i.cv, %.lr.ph.i ] ; 2 uses
  %i.cz = icmp ult ptr %.us-phi42.i, %i.co
  br i1 %i.cz, label %.lr.ph52.i, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit

.lr.ph52.i:                                       ; preds = %.preheader.i, %.lr.ph52.i
  %.151.i = phi float [ %i.dg, %.lr.ph52.i ], [ %.us-phi43.i, %.preheader.i ]
  %.13350.i = phi ptr [ %i.da, %.lr.ph52.i ], [ %.us-phi42.i, %.preheader.i ] ; 2 uses
  %.13549.i = phi ptr [ %i.dc, %.lr.ph52.i ], [ %.us-phi.i, %.preheader.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.13350.i, i64 4 ; 2 uses
  %i.db = load float, ptr %.13350.i, align 4, !tbaa !139
  %i.dc = getelementptr inbounds nuw i8, ptr %.13549.i, i64 4
  %i.dd = load float, ptr %.13549.i, align 4, !tbaa !139
  %i.de = fsub float %i.db, %i.dd
  %i.df = call noundef float @llvm.fabs.f32(float %i.de)
  %i.dg = fadd float %.151.i, %i.df               ; 2 uses
  %i.dh = icmp ult ptr %i.da, %i.co
  br i1 %i.dh, label %.lr.ph52.i, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit, !llvm.loop !80

_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit:        ; preds = %.lr.ph52.i, %.preheader.i
  %.031.i = phi float [ %.us-phi43.i, %.preheader.i ], [ %i.dg, %.lr.ph52.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv173 ; 2 uses
  store i32 0, ptr %i.di, align 4, !tbaa !129
  br i1 %i.cc, label %.lr.ph157, label %._crit_edge158

._crit_edge158.loopexit:                          ; preds = %bb.x
  %i.dj = sext i32 %i.eo to i64
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit
  %i.dk = phi i64 [ 0, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit ], [ %i.dj, %._crit_edge158.loopexit ] ; 2 uses
  %.076.lcssa = phi float [ %.031.i, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit ], [ %.1, %._crit_edge158.loopexit ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dk ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !139
  %i.dn = fcmp ogt float %.076.lcssa, %i.dm
  br i1 %i.dn, label %bb.y, label %bb.z

.lr.ph157:                                        ; preds = %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit, %bb.x
  %i.do = phi i32 [ %i.eo, %bb.x ], [ 0, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 1, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit ] ; 3 uses
  %.076155 = phi float [ %.1, %bb.x ], [ %.031.i, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !129
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.by, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ds ; 2 uses
  br i1 %i.cb, label %.lr.ph.i120, label %.preheader.i111

.lr.ph.i120:                                      ; preds = %.lr.ph157, %.lr.ph.i120
  %.0.us46.i121 = phi float [ %i.dz, %.lr.ph.i120 ], [ 0.000000e+00, %.lr.ph157 ]
  %.032.us45.i122 = phi ptr [ %i.ea, %.lr.ph.i120 ], [ %i.cn, %.lr.ph157 ] ; 2 uses
  %.034.us44.i123 = phi ptr [ %i.eb, %.lr.ph.i120 ], [ %i.dt, %.lr.ph157 ] ; 2 uses
  %i.du = load <4 x float>, ptr %.032.us45.i122, align 4, !tbaa !139
  %i.dv = load <4 x float>, ptr %.034.us44.i123, align 4, !tbaa !139
  %i.dw = fsub <4 x float> %i.du, %i.dv
  %i.dx = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dw) ; 4 uses
  %shift217 = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop218 = fadd <4 x float> %i.dx, %shift217
  %shift220 = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop221 = fadd <4 x float> %foldExtExtBinop218, %shift220
  %shift223 = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop224 = fadd <4 x float> %foldExtExtBinop221, %shift223
  %i.dy = extractelement <4 x float> %foldExtExtBinop224, i64 0
  %i.dz = fadd float %.0.us46.i121, %i.dy         ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.032.us45.i122, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.034.us44.i123, i64 16 ; 2 uses
  %i.ec = icmp ult ptr %i.ea, %i.cp
  br i1 %i.ec, label %.lr.ph.i120, label %.preheader.i111

.preheader.i111:                                  ; preds = %.lr.ph.i120, %.lr.ph157
  %.us-phi.i112 = phi ptr [ %i.dt, %.lr.ph157 ], [ %i.eb, %.lr.ph.i120 ]
  %.us-phi42.i113 = phi ptr [ %i.cn, %.lr.ph157 ], [ %i.ea, %.lr.ph.i120 ] ; 2 uses
  %.us-phi43.i114 = phi float [ 0.000000e+00, %.lr.ph157 ], [ %i.dz, %.lr.ph.i120 ] ; 2 uses
  %i.ed = icmp ult ptr %.us-phi42.i113, %i.co
  br i1 %i.ed, label %.lr.ph52.i116, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit124

.lr.ph52.i116:                                    ; preds = %.preheader.i111, %.lr.ph52.i116
  %.151.i117 = phi float [ %i.ek, %.lr.ph52.i116 ], [ %.us-phi43.i114, %.preheader.i111 ]
  %.13350.i118 = phi ptr [ %i.ee, %.lr.ph52.i116 ], [ %.us-phi42.i113, %.preheader.i111 ] ; 2 uses
  %.13549.i119 = phi ptr [ %i.eg, %.lr.ph52.i116 ], [ %.us-phi.i112, %.preheader.i111 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.13350.i118, i64 4 ; 2 uses
  %i.ef = load float, ptr %.13350.i118, align 4, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %.13549.i119, i64 4
  %i.eh = load float, ptr %.13549.i119, align 4, !tbaa !139
  %i.ei = fsub float %i.ef, %i.eh
  %i.ej = call noundef float @llvm.fabs.f32(float %i.ei)
  %i.ek = fadd float %.151.i117, %i.ej            ; 2 uses
  %i.el = icmp ult ptr %i.ee, %i.co
  br i1 %i.el, label %.lr.ph52.i116, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit124, !llvm.loop !80

_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit124:     ; preds = %.lr.ph52.i116, %.preheader.i111
  %.031.i115 = phi float [ %.us-phi43.i114, %.preheader.i111 ], [ %i.ek, %.lr.ph52.i116 ] ; 2 uses
  %i.em = fcmp ogt float %.076155, %.031.i115
  br i1 %i.em, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit124
  %i.en = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.en, ptr %i.di, align 4, !tbaa !129
  br label %bb.x
end_hunk_18
begin_hunk_19_@_ZN7cvflann4HeapINS_12BranchStructIPNS_11KMeansIndexINS_2L1IfEEE10KMeansNodeEfEEE6popMinERS8_:bb.a
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i89.i.i = lshr i64 %.0920.in.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0920.i.i89.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !926
  %i.aq = fcmp olt float %.sroa.4.0.copyload.i.i, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false), !tbaa.struct !923
  %.not10.i.i = icmp eq i64 %.0920.i.i89.i.i, 0
  br i1 %.not10.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %i.as, align 8, !tbaa !809
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !139
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !921
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS2_7greaterISA_EEEvT_SI_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS2_7greaterISA_EEEvT_SI_T0_.exit: ; preds = %bb.b, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i
  %i.at = phi ptr [ %i.f, %bb.b ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterINS2_7greaterISA_EEEEEvT_SL_SL_RT0_.exit.i ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16
  store ptr %i.au, ptr %i.b, align 8, !tbaa !921
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN7cvflann12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEESt6vectorISA_SaISA_EEEENS2_7greaterISA_EEEvT_SI_T0_.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_2L1IfEEE17getCenterOrderingEPNS3_10KMeansNodeEPKfPi(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !801  ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = icmp slt i32 %i.b, 0
  %i.e = shl nsw i64 %i.c, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #32 ; 13 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !801
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !901  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !892  ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -12
  %i.p = icmp ugt i64 %i.m, 3
  br i1 %i.p, label %.lr.ph.i.preheader.us, label %.lr.ph41.split

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph41, %._crit_edge.us
  %indvar105 = phi i64 [ %indvar.next106, %._crit_edge.us ], [ 0, %.lr.ph41 ] ; 6 uses
  %i.q = shl nuw nsw i64 %indvar105, 2            ; 3 uses
  %scevgep111 = getelementptr i8, ptr %3, i64 %i.q
  %i.r = add nsw i64 %i.q, -4                     ; 2 uses
  %scevgep114 = getelementptr i8, ptr %3, i64 %i.r
  %scevgep107 = getelementptr i8, ptr %i.g, i64 %i.q
  %scevgep109 = getelementptr i8, ptr %i.g, i64 %i.r
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvar105
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !809
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !900
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.0.us46.i.us = phi float [ %i.aa, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.preheader.us ]
  %.032.us45.i.us = phi ptr [ %i.ab, %.lr.ph.i.us ], [ %2, %.lr.ph.i.preheader.us ] ; 2 uses
  %.034.us44.i.us = phi ptr [ %i.ac, %.lr.ph.i.us ], [ %i.u, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.v = load <4 x float>, ptr %.032.us45.i.us, align 4, !tbaa !139
  %i.w = load <4 x float>, ptr %.034.us44.i.us, align 4, !tbaa !139
  %i.x = fsub <4 x float> %i.v, %i.w
  %i.y = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.x) ; 4 uses
  %shift = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.y, %shift
  %shift147 = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop148 = fadd <4 x float> %foldExtExtBinop, %shift147
  %shift150 = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop151 = fadd <4 x float> %foldExtExtBinop148, %shift150
  %i.z = extractelement <4 x float> %foldExtExtBinop151, i64 0
  %i.aa = fadd float %.0.us46.i.us, %i.z          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.032.us45.i.us, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.034.us44.i.us, i64 16 ; 2 uses
  %i.ad = icmp ult ptr %i.ab, %i.o
  br i1 %i.ad, label %.lr.ph.i.us, label %.preheader.i.loopexit.us

.lr.ph52.i.us:                                    ; preds = %.preheader.i.loopexit.us, %.lr.ph52.i.us
  %.151.i.us = phi float [ %i.ak, %.lr.ph52.i.us ], [ %i.aa, %.preheader.i.loopexit.us ]
  %.13350.i.us = phi ptr [ %i.ae, %.lr.ph52.i.us ], [ %i.ab, %.preheader.i.loopexit.us ] ; 2 uses
  %.13549.i.us = phi ptr [ %i.ag, %.lr.ph52.i.us ], [ %i.ac, %.preheader.i.loopexit.us ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13350.i.us, i64 4 ; 2 uses
  %i.af = load float, ptr %.13350.i.us, align 4, !tbaa !139
  %i.ag = getelementptr inbounds nuw i8, ptr %.13549.i.us, i64 4
  %i.ah = load float, ptr %.13549.i.us, align 4, !tbaa !139
  %i.ai = fsub float %i.af, %i.ah
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.ai)
  %i.ak = fadd float %.151.i.us, %i.aj            ; 2 uses
  %i.al = icmp ult ptr %i.ae, %i.n
  br i1 %i.al, label %.lr.ph52.i.us, label %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.us, !llvm.loop !73

_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.us:     ; preds = %.lr.ph52.i.us, %.preheader.i.loopexit.us
  %.031.i.us = phi float [ %i.aa, %.preheader.i.loopexit.us ], [ %i.ak, %.lr.ph52.i.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.b ], [ 0, %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.us ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv102
  %i.an = load float, ptr %i.am, align 4, !tbaa !139
  %i.ao = fcmp olt float %i.an, %.031.i.us
  %i.ap = icmp samesign ult i64 %indvars.iv102, %indvar105 ; 2 uses
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br i1 %i.aq, label %bb.b, label %.preheader.us, !llvm.loop !1972

._crit_edge.us:                                   ; preds = %.lr.ph.us.preheader, %.preheader.us
  store float %.031.i.us, ptr %i.aw, align 4, !tbaa !139
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv102
  %i.as = trunc nuw nsw i64 %indvar105 to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !129
  %indvar.next106 = add nuw nsw i64 %indvar105, 1 ; 2 uses
  %i.at = load i32, ptr %i.a, align 8, !tbaa !801
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvar.next106, %i.au
  br i1 %i.av, label %.lr.ph.i.preheader.us, label %._crit_edge42, !llvm.loop !1973

.preheader.us:                                    ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv102
  br i1 %i.ap, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.ax = xor i64 %indvars.iv102, -1
  %i.ay = add nsw i64 %indvar105, %i.ax
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %i.ba = mul nsw i64 %i.az, -4                   ; 4 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.ba
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.ba
  %i.bb = shl nuw nsw i64 %i.az, 2
  %i.bc = add nuw nsw i64 %i.bb, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep108, ptr noundef nonnull align 4 dereferenceable(1) %scevgep110, i64 %i.bc, i1 false), !tbaa !139
  %scevgep113 = getelementptr i8, ptr %scevgep111, i64 %i.ba
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep113, ptr noundef nonnull align 4 dereferenceable(1) %scevgep115, i64 %i.bc, i1 false), !tbaa !129
  br label %._crit_edge.us

.preheader.i.loopexit.us:                         ; preds = %.lr.ph.i.us
  %i.bd = icmp ult ptr %i.ab, %i.n
  br i1 %i.bd, label %.lr.ph52.i.us, label %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.us

.lr.ph41.split:                                   ; preds = %.lr.ph41
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.preheader.i, label %.preheader.i.us43

.preheader.i.us43:                                ; preds = %.lr.ph41.split, %._crit_edge.us61
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us61 ], [ 0, %.lr.ph41.split ] ; 6 uses
  %i.be = shl nuw nsw i64 %indvar, 2              ; 3 uses
  %scevgep75 = getelementptr i8, ptr %3, i64 %i.be
  %i.bf = add nsw i64 %i.be, -4                   ; 2 uses
  %scevgep78 = getelementptr i8, ptr %3, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.be
  %scevgep73 = getelementptr i8, ptr %i.g, i64 %i.bf
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvar
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !809
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !900
  br label %.lr.ph52.i.us46

.lr.ph52.i.us46:                                  ; preds = %.lr.ph52.i.us46, %.preheader.i.us43
  %.151.i.us47 = phi float [ %i.bp, %.lr.ph52.i.us46 ], [ 0.000000e+00, %.preheader.i.us43 ]
  %.13350.i.us48 = phi ptr [ %i.bj, %.lr.ph52.i.us46 ], [ %2, %.preheader.i.us43 ] ; 2 uses
  %.13549.i.us49 = phi ptr [ %i.bl, %.lr.ph52.i.us46 ], [ %i.bi, %.preheader.i.us43 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.13350.i.us48, i64 4 ; 2 uses
  %i.bk = load float, ptr %.13350.i.us48, align 4, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %.13549.i.us49, i64 4
  %i.bm = load float, ptr %.13549.i.us49, align 4, !tbaa !139
  %i.bn = fsub float %i.bk, %i.bm
  %i.bo = tail call noundef float @llvm.fabs.f32(float %i.bn)
  %i.bp = fadd float %.151.i.us47, %i.bo          ; 3 uses
  %i.bq = icmp ult ptr %i.bj, %i.n
  br i1 %i.bq, label %.lr.ph52.i.us46, label %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50, !llvm.loop !73

_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50: ; preds = %.lr.ph52.i.us46, %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50 ], [ 0, %.lr.ph52.i.us46 ] ; 6 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bs = load float, ptr %i.br, align 4, !tbaa !139
  %i.bt = fcmp olt float %i.bs, %i.bp
  %i.bu = icmp samesign ult i64 %indvars.iv, %indvar ; 2 uses
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.bv, label %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50, label %.preheader.us55, !llvm.loop !1972

.preheader.us55:                                  ; preds = %_ZNK7cvflann2L1IfEclIPKfPfEEfT_T0_mf.exit.loopexit.us50
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  br i1 %i.bu, label %.lr.ph.us59.preheader, label %._crit_edge.us61

.lr.ph.us59.preheader:                            ; preds = %.preheader.us55
  %i.bx = xor i64 %indvars.iv, -1
  %i.by = add nsw i64 %indvar, %i.bx
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  %i.ca = mul nsw i64 %i.bz, -4                   ; 4 uses
  %scevgep72 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.ca
  %i.cb = shl nuw nsw i64 %i.bz, 2
  %i.cc = add nuw nsw i64 %i.cb, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep72, ptr noundef nonnull align 4 dereferenceable(1) %scevgep74, i64 %i.cc, i1 false), !tbaa !139
  %scevgep77 = getelementptr i8, ptr %scevgep75, i64 %i.ca
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.ca
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep77, ptr noundef nonnull align 4 dereferenceable(1) %scevgep79, i64 %i.cc, i1 false), !tbaa !129
  br label %._crit_edge.us61

._crit_edge.us61:                                 ; preds = %.lr.ph.us59.preheader, %.preheader.us55
  store float %i.bp, ptr %i.bw, align 4, !tbaa !139
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ce = trunc nuw nsw i64 %indvar to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !129
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !801
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvar.next, %i.cg
  br i1 %i.ch, label %.preheader.i.us43, label %._crit_edge42, !llvm.loop !1973

.preheader.i:                                     ; preds = %.lr.ph41.split, %._crit_edge
  %indvar87 = phi i64 [ %indvar.next88, %._crit_edge ], [ 0, %.lr.ph41.split ] ; 5 uses
  %i.ci = shl nuw nsw i64 %indvar87, 2            ; 3 uses
  %scevgep93 = getelementptr i8, ptr %3, i64 %i.ci
  %i.cj = add nsw i64 %i.ci, -4                   ; 2 uses
  %scevgep96 = getelementptr i8, ptr %3, i64 %i.cj
  %scevgep89 = getelementptr i8, ptr %i.g, i64 %i.ci
  %scevgep91 = getelementptr i8, ptr %i.g, i64 %i.cj
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.c ], [ 0, %.preheader.i ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv84
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !139
  %i.cm = fcmp olt float %i.cl, 0.000000e+00
  %i.cn = icmp samesign ult i64 %indvars.iv84, %indvar87 ; 2 uses
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br i1 %i.co, label %bb.c, label %.preheader, !llvm.loop !1972

.preheader:                                       ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv84
  br i1 %i.cn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cq = xor i64 %indvars.iv84, -1
  %i.cr = add nsw i64 %indvar87, %i.cq
  %i.cs = and i64 %i.cr, 4294967295               ; 2 uses
  %i.ct = mul nsw i64 %i.cs, -4                   ; 4 uses
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.ct
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.ct
  %i.cu = shl nuw nsw i64 %i.cs, 2
  %i.cv = add nuw nsw i64 %i.cu, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep90, ptr noundef nonnull align 4 dereferenceable(1) %scevgep92, i64 %i.cv, i1 false), !tbaa !139
  %scevgep95 = getelementptr i8, ptr %scevgep93, i64 %i.ct
  %scevgep97 = getelementptr i8, ptr %scevgep96, i64 %i.ct
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep95, ptr noundef nonnull align 4 dereferenceable(1) %scevgep97, i64 %i.cv, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  store float 0.000000e+00, ptr %i.cp, align 4, !tbaa !139
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.cx = trunc nuw nsw i64 %indvar87 to i32
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !129
  %indvar.next88 = add nuw nsw i64 %indvar87, 1   ; 2 uses
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !801
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvar.next88, %i.cz
  br i1 %i.da, label %.preheader.i, label %._crit_edge42, !llvm.loop !1973

._crit_edge42:                                    ; preds = %._crit_edge.us61, %._crit_edge, %._crit_edge.us, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIiZN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISA_EERKT_iiE16HeapMapValueTypeSt4hashIiESt8equal_toIiESaISt4pairIKiSI_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN7cvflann4HeapINS_12BranchStructIPNS_11KMeansIndexINS_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrIS9_EERKT_iiEN16HeapMapValueTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !83
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !83
  br label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !925  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !378 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !341  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !343
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !344
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !1974
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !1974
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 40) #30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1975

_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiZN7cvflann4HeapINS4_12BranchStructIPNS4_11KMeansIndexINS4_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISE_EERKT_iiE16HeapMapValueTypeELb0EEEEE18_M_deallocate_nodeEPSO_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !911
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !912
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !911    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !912
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiZN7cvflann4HeapINS2_12BranchStructIPNS2_11KMeansIndexINS2_2L1IfEEE10KMeansNodeEfEEE17getPooledInstanceIiEEN2cv3PtrISC_EERKT_iiE16HeapMapValueTypeESaISL_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSN_18_Mod_range_hashingENSN_20_Default_ranged_hashENSN_20_Prime_rehash_policyENSN_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !920  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEEEvPT_.exit

_ZSt8_DestroyIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS0_12BranchStructIPNS0_11KMeansIndexINS0_2L1IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7cvflann4HeapINS1_12BranchStructIPNS1_11KMeansIndexINS1_2L1IfEEE10KMeansNodeEfEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
end_hunk_19
begin_hunk_20_@_ZN7cvflann14AutotunedIndexINS_2L1IfEEE14optimizeKDTreeERSt6vectorINS3_8CostDataESaIS5_EE:bb.a
  resume { ptr, i32 } %.pn13
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann14AutotunedIndexINS_2L1IfEEE8CostDataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !938    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !936  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.f)
          to label %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !91

_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !938
  br label %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !937
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann12find_nearestINS_2L1IfEEEEvRKNS_6MatrixINT_11ElementTypeEEEPS5_PiiiS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %4, %3                       ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc50

.noexc50:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #32 ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !129
  %i.g = add nsw i64 %i.b, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !129
  br label %bb.b

bb.b:                                             ; preds = %.noexc50, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #32
          to label %.noexc55 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 5 uses

.noexc55:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.b ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !139
  br i1 %i.h, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc55
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !139
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc55, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.084.099 = phi ptr [ %i.e, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.1592.097 = phi ptr [ %i.f, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.074.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.16.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !484  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = icmp ugt i64 %i.q, 3                     ; 2 uses
  br i1 %i.t, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %.lr.ph.i
  %.0.us46.i = phi float [ %i.z, %.lr.ph.i ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ]
  %.032.us45.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.n, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 2 uses
  %.034.us44.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %1, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ] ; 2 uses
  %i.u = load <4 x float>, ptr %.032.us45.i, align 4, !tbaa !139
  %i.v = load <4 x float>, ptr %.034.us44.i, align 4, !tbaa !139
  %i.w = fsub <4 x float> %i.u, %i.v
  %i.x = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.w) ; 4 uses
  %shift = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.x, %shift
  %shift153 = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop154 = fadd <4 x float> %foldExtExtBinop, %shift153
  %shift156 = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop157 = fadd <4 x float> %foldExtExtBinop154, %shift156
  %i.y = extractelement <4 x float> %foldExtExtBinop157, i64 0
  %i.z = fadd float %.0.us46.i, %i.y              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.032.us45.i, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.034.us44.i, i64 16 ; 2 uses
  %i.ac = icmp ult ptr %i.aa, %i.s
  br i1 %i.ac, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.us-phi.i = phi ptr [ %1, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.ab, %.lr.ph.i ]
  %.us-phi42.i = phi ptr [ %i.n, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.us-phi43.i = phi float [ 0.000000e+00, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp ult ptr %.us-phi42.i, %i.r
  br i1 %i.ad, label %.lr.ph52.i, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit

.lr.ph52.i:                                       ; preds = %.preheader.i, %.lr.ph52.i
  %.151.i = phi float [ %i.ak, %.lr.ph52.i ], [ %.us-phi43.i, %.preheader.i ]
  %.13350.i = phi ptr [ %i.ae, %.lr.ph52.i ], [ %.us-phi42.i, %.preheader.i ] ; 2 uses
  %.13549.i = phi ptr [ %i.ag, %.lr.ph52.i ], [ %.us-phi.i, %.preheader.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13350.i, i64 4 ; 2 uses
  %i.af = load float, ptr %.13350.i, align 4, !tbaa !139
  %i.ag = getelementptr inbounds nuw i8, ptr %.13549.i, i64 4
  %i.ah = load float, ptr %.13549.i, align 4, !tbaa !139
  %i.ai = fsub float %i.af, %i.ah
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.ai)
  %i.ak = fadd float %.151.i, %i.aj               ; 2 uses
  %i.al = icmp ult ptr %i.ae, %i.r
  br i1 %i.al, label %.lr.ph52.i, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit, !llvm.loop !80

_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit:        ; preds = %.lr.ph52.i, %.preheader.i
  %.031.i = phi float [ %.us-phi43.i, %.preheader.i ], [ %i.ak, %.lr.ph52.i ]
  store float %.031.i, ptr %.sroa.074.0, align 4, !tbaa !139
  store i32 0, ptr %.sroa.084.099, align 4, !tbaa !129
  %i.am = load i64, ptr %0, align 8, !tbaa !483   ; 2 uses
  %i.an = icmp ugt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph113, label %.preheader

.lr.ph113:                                        ; preds = %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !486
  br label %bb.c

.preheader:                                       ; preds = %.critedge, %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph115.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit73

.lr.ph115.preheader:                              ; preds = %.preheader
  %i.aq = sext i32 %4 to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %.sroa.084.099, i64 %i.ar
  %i.as = zext nneg i32 %3 to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %scevgep, i64 %i.at, i1 false), !tbaa !129
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit73

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #30
  resume { ptr, i32 } %i.au

bb.c:                                             ; preds = %.lr.ph113, %.critedge
  %.044112 = phi i64 [ 1, %.lr.ph113 ], [ %i.cq, %.critedge ] ; 4 uses
  %.045111 = phi i32 [ 1, %.lr.ph113 ], [ %.1, %.critedge ] ; 6 uses
  %i.av = mul i64 %i.ao, %.044112
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -12
  br i1 %i.t, label %.lr.ph.i66, label %.preheader.i57

.lr.ph.i66:                                       ; preds = %bb.c, %.lr.ph.i66
  %.0.us46.i67 = phi float [ %i.be, %.lr.ph.i66 ], [ 0.000000e+00, %bb.c ]
  %.032.us45.i68 = phi ptr [ %i.bf, %.lr.ph.i66 ], [ %i.aw, %bb.c ] ; 2 uses
  %.034.us44.i69 = phi ptr [ %i.bg, %.lr.ph.i66 ], [ %1, %bb.c ] ; 2 uses
  %i.az = load <4 x float>, ptr %.032.us45.i68, align 4, !tbaa !139
  %i.ba = load <4 x float>, ptr %.034.us44.i69, align 4, !tbaa !139
  %i.bb = fsub <4 x float> %i.az, %i.ba
  %i.bc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bb) ; 4 uses
  %shift159 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop160 = fadd <4 x float> %i.bc, %shift159
  %shift162 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop163 = fadd <4 x float> %foldExtExtBinop160, %shift162
  %shift165 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop166 = fadd <4 x float> %foldExtExtBinop163, %shift165
  %i.bd = extractelement <4 x float> %foldExtExtBinop166, i64 0
  %i.be = fadd float %.0.us46.i67, %i.bd          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.032.us45.i68, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.034.us44.i69, i64 16 ; 2 uses
  %i.bh = icmp ult ptr %i.bf, %i.ay
  br i1 %i.bh, label %.lr.ph.i66, label %.preheader.i57

.preheader.i57:                                   ; preds = %.lr.ph.i66, %bb.c
  %.us-phi.i58 = phi ptr [ %1, %bb.c ], [ %i.bg, %.lr.ph.i66 ]
  %.us-phi42.i59 = phi ptr [ %i.aw, %bb.c ], [ %i.bf, %.lr.ph.i66 ] ; 2 uses
  %.us-phi43.i60 = phi float [ 0.000000e+00, %bb.c ], [ %i.be, %.lr.ph.i66 ] ; 2 uses
  %i.bi = icmp ult ptr %.us-phi42.i59, %i.ax
  br i1 %i.bi, label %.lr.ph52.i62, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit70

.lr.ph52.i62:                                     ; preds = %.preheader.i57, %.lr.ph52.i62
  %.151.i63 = phi float [ %i.bp, %.lr.ph52.i62 ], [ %.us-phi43.i60, %.preheader.i57 ]
  %.13350.i64 = phi ptr [ %i.bj, %.lr.ph52.i62 ], [ %.us-phi42.i59, %.preheader.i57 ] ; 2 uses
  %.13549.i65 = phi ptr [ %i.bl, %.lr.ph52.i62 ], [ %.us-phi.i58, %.preheader.i57 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.13350.i64, i64 4 ; 2 uses
  %i.bk = load float, ptr %.13350.i64, align 4, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %.13549.i65, i64 4
  %i.bm = load float, ptr %.13549.i65, align 4, !tbaa !139
  %i.bn = fsub float %i.bk, %i.bm
  %i.bo = tail call noundef float @llvm.fabs.f32(float %i.bn)
  %i.bp = fadd float %.151.i63, %i.bo             ; 2 uses
  %i.bq = icmp ult ptr %i.bj, %i.ax
  br i1 %i.bq, label %.lr.ph52.i62, label %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit70, !llvm.loop !80

_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit70:      ; preds = %.lr.ph52.i62, %.preheader.i57
  %.031.i61 = phi float [ %.us-phi43.i60, %.preheader.i57 ], [ %i.bp, %.lr.ph52.i62 ] ; 3 uses
  %i.br = icmp slt i32 %.045111, %i.a
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit70
  %i.bs = trunc i64 %.044112 to i32
  %i.bt = sext i32 %.045111 to i64                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.099, i64 %i.bt
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !129
  %i.bv = add nsw i32 %.045111, 1
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.bt
  store float %.031.i61, ptr %i.bw, align 4, !tbaa !139
  br label %bb.g

bb.e:                                             ; preds = %_ZNK7cvflann2L1IfEclIPfS3_EEfT_T0_mf.exit70
  %i.bx = add nsw i32 %.045111, -1
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.by ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !139
  %i.cb = fcmp olt float %.031.i61, %i.ca
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %.031.i61, ptr %i.bz, align 4, !tbaa !139
  %i.cc = trunc i64 %.044112 to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.099, i64 %i.by
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ %i.bv, %bb.d ], [ %.045111, %bb.f ], [ %.045111, %bb.e ] ; 3 uses
  %i.ce = icmp sgt i32 %.1, 1
  br i1 %i.ce, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cf = zext nneg i32 %.1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.cf, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %indvars.iv.next ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !139 ; 2 uses
  %i.ci = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.ci ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !139 ; 2 uses
  %i.cl = fcmp olt float %i.ch, %i.ck
  br i1 %i.cl, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  store float %i.ck, ptr %i.cg, align 4, !tbaa !139
  store float %i.ch, ptr %i.cj, align 4, !tbaa !139
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.099, i64 %i.ci ; 2 uses
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !tbaa !129
  %i.co = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !129
  %i.cp = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.cp, label %.lr.ph, label %.critedge, !llvm.loop !2031

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %i.cq = add nuw i64 %.044112, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %i.am
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !2032

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %.lr.ph115.preheader, %.preheader
  %i.cr = ptrtoint ptr %.sroa.16.0 to i64
  %i.cs = ptrtoint ptr %.sroa.074.0 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.ct) #30
  %i.cu = ptrtoint ptr %.sroa.1592.097 to i64
  %i.cv = ptrtoint ptr %.sroa.084.099 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.099, i64 noundef %i.cw) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cvflann::any>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cvflann::any>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !936  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !938    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !224
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.r, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt16allocator_traitsISaIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7cvflann14AutotunedIndexINS0_2L1IfEEE8CostDataESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.y, ptr %3, align 8, !tbaa !202
  %i.z = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull %i.x, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i.i unwind label %bb.j ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.c, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.noexc.i.i.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !200 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !124
  br label %bb.d
end_hunk_20
begin_hunk_21_@_ZN7cvflann8LshIndexINS_2L1IfEEE9knnSearchERKNS_6MatrixIfEERNS4_IiEERS5_iRKNS_12SearchParamsE:bb.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !128
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.q
  %.pn50 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ar

bb.s:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !238
  %i.ai = trunc i64 %i.ah to i32
  %.not52 = icmp sgt i32 %4, %i.ai
  br i1 %.not52, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv5flann5Index9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES7_iRKNS0_12SearchParamsE, ptr noundef nonnull @.str.86, i32 noundef 200) #33
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.x:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %12, align 8, !tbaa !123  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.x
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !128
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.w
  %.pn53 = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.ak, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ar

bb.y:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !484
  %i.as = trunc i64 %i.ar to i32
  %.not55 = icmp sgt i32 %4, %i.as
  br i1 %.not55, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv5flann5Index9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES7_iRKNS0_12SearchParamsE, ptr noundef nonnull @.str.86, i32 noundef 201) #33
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ad:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %14, align 8, !tbaa !123  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ad
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !128
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ac
  %.pn56 = phi { ptr, i32 } [ %i.at, %bb.ac ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.au, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ar

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 9 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !224
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7cvflann18KNNUniqueResultSetIfEE, i64 16), ptr %16, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 %4, ptr %i.bh, align 8, !tbaa !500
  store ptr null, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !116
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !117
  store i64 0, ptr %i.bg, align 8, !tbaa !118
  store float f0x7F7FFFFF, ptr %i.bb, align 4, !tbaa !501
  store i8 0, ptr %i.ba, align 8, !tbaa !502
  %.not89 = icmp eq i64 %i.q, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = icmp slt i32 %4, 1
  %i.bm = zext i32 %4 to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 2            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bt = icmp slt i32 %4, 0
  %i.bu = icmp ne i32 %4, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 22
  %i.bw = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 28
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.bz = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br label %bb.ag

._crit_edge.loopexit:                             ; preds = %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !115
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ae
  %i.ca = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.ae ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7cvflann15UniqueResultSetIfEE, i64 16), ptr %16, align 8, !tbaa !136
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  invoke void @_ZNSt8_Rb_treeIN7cvflann15UniqueResultSetIfE9DistIndexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef %i.ca)
          to label %_ZN7cvflann15UniqueResultSetIfED2Ev.exit unwind label %bb.af, !inline_history !503

bb.af:                                            ; preds = %._crit_edge
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #29, !inline_history !503
  unreachable

_ZN7cvflann15UniqueResultSetIfED2Ev.exit:         ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  ret void

bb.ag:                                            ; preds = %.lr.ph, %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit
  %.088 = phi i64 [ 0, %.lr.ph ], [ %i.et, %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit ] ; 6 uses
  %i.ce = load ptr, ptr %i.bd, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeIN7cvflann15UniqueResultSetIfE9DistIndexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef %i.ce)
          to label %_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #29
  unreachable

_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit:  ; preds = %bb.ag
  store ptr null, ptr %i.bd, align 8, !tbaa !115
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !116
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !117
  store i64 0, ptr %i.bg, align 8, !tbaa !118
  store float f0x7F7FFFFF, ptr %i.bb, align 4, !tbaa !501
  store i8 0, ptr %i.ba, align 8, !tbaa !502
  br i1 %i.bl, label %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit
  %i.ch = load ptr, ptr %i.bj, align 8, !tbaa !251
  %i.ci = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.cj = mul i64 %i.ci, %.088
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj
  call void @llvm.memset.p0.i64(ptr align 4 %i.ck, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !129
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !485
  %i.cm = load i64, ptr %i.bo, align 8, !tbaa !486
  %i.cn = mul i64 %i.cm, %.088
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cn ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ai
  %i.cq = getelementptr i8, ptr %i.co, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %next.gep, align 4, !tbaa !139
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.cs, align 4, !tbaa !139
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !2129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i76.preheader

.lr.ph.i.i.i.i76.preheader:                       ; preds = %bb.ai, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.co, %bb.ai ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i.i.i76.preheader, %.lr.ph.i.i.i.i76
  %.07.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i76 ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i76.preheader ] ; 2 uses
  store float f0x7F7FFFFF, ptr %.07.i.i.i.i, align 4, !tbaa !139
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.cu, %i.cp
  br i1 %.not.i.i.i.i77, label %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i76, !llvm.loop !2130

_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i76, %middle.block, %_ZN7cvflann18KNNUniqueResultSetIfE5clearEv.exit
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !485
  %i.cw = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.cx = mul i64 %i.cw, %.088
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %0, align 8, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %._crit_edge.i.i unwind label %bb.al

._crit_edge.i.i:                                  ; preds = %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr %i.br, ptr %17, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.br, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false)
  store i64 6, ptr %i.bs, align 8, !tbaa !122
  store i8 0, ptr %i.bv, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.a, align 1, !tbaa !141
  %i.dc = invoke noundef zeroext i1 @_ZN7cvflann9get_paramIbEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.dd = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.br
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.aj
  %i.df = load i64, ptr %i.br, align 8, !tbaa !128
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !251
  %i.di = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.dj = mul i64 %i.di, %.088
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj ; 3 uses
  %i.dl = load ptr, ptr %i.bn, align 8, !tbaa !485
  %i.dm = load i64, ptr %i.bo, align 8, !tbaa !486
  %i.dn = mul i64 %i.dm, %.088
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  br i1 %i.dc, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dp = load ptr, ptr %16, align 8, !tbaa !136
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %i.dk, ptr noundef %i.do, i32 noundef %4)
          to label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit unwind label %bb.al, !inline_history !504

bb.al:                                            ; preds = %bb.ak, %_ZSt6fill_nIPfifET_S1_T0_RKT1_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.du = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.br
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.am
  %i.dw = load i64, ptr %i.br, align 8, !tbaa !128
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dy = load ptr, ptr %i.be, align 8, !tbaa !116 ; 4 uses
  br i1 %i.bt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not30.i = icmp eq ptr %i.dy, %i.bc
  br i1 %.not30.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.ao, %.lr.ph34.i
  %.01233.i = phi ptr [ %i.ee, %.lr.ph34.i ], [ %i.dk, %bb.ao ] ; 2 uses
  %.01332.i = phi ptr [ %i.ef, %.lr.ph34.i ], [ %i.do, %bb.ao ] ; 2 uses
  %.sroa.021.031.i = phi ptr [ %i.ed, %.lr.ph34.i ], [ %i.dy, %bb.ao ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.021.031.i, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !506
  store i32 %i.eb, ptr %.01233.i, align 4, !tbaa !129
  %i.ec = load float, ptr %i.dz, align 4, !tbaa !507
  store float %i.ec, ptr %.01332.i, align 4, !tbaa !139
  %i.ed = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.021.031.i) #34 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01233.i, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.01332.i, i64 4
  %.not.i = icmp eq ptr %i.ed, %i.bc
  br i1 %.not.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit, label %.lr.ph34.i, !llvm.loop !39

bb.ap:                                            ; preds = %bb.an
  %i.eg = icmp ne ptr %i.dy, %i.bc
  %i.eh = and i1 %i.bu, %i.eg
  br i1 %i.eh, label %.lr.ph.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.i
  %.029.i = phi i32 [ %i.ep, %.lr.ph.i ], [ 0, %bb.ap ]
  %.128.i = phi ptr [ %i.en, %.lr.ph.i ], [ %i.dk, %bb.ap ] ; 2 uses
  %.11427.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.do, %bb.ap ] ; 2 uses
  %.sroa.016.026.i = phi ptr [ %i.em, %.lr.ph.i ], [ %i.dy, %bb.ap ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !506
  store i32 %i.ek, ptr %.128.i, align 4, !tbaa !129
  %i.el = load float, ptr %i.ei, align 4, !tbaa !507
  store float %i.el, ptr %.11427.i, align 4, !tbaa !139
  %i.em = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.016.026.i) #34 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.128.i, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.11427.i, i64 4
  %i.ep = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %i.eq = icmp ne ptr %i.em, %i.bc
  %i.er = icmp slt i32 %i.ep, %4
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %.lr.ph.i, label %_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit, !llvm.loop !40

_ZNK7cvflann15UniqueResultSetIfE11sortAndCopyEPiPfi.exit: ; preds = %.lr.ph.i, %.lr.ph34.i, %bb.ap, %bb.ao, %bb.ak
  %i.et = add nuw i64 %.088, 1                    ; 2 uses
  %i.eu = load i64, ptr %1, align 8, !tbaa !483
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ag, label %._crit_edge.loopexit, !llvm.loop !2131

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.ds, %bb.al ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  call void @_ZN7cvflann15UniqueResultSetIfED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.aq ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_2L1IfEEE9saveIndexEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call i64 @fwrite(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = tail call i64 @fwrite(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 32, i64 noundef 1, ptr noundef %1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !485
  %i.k = load i64, ptr %i.g, align 8, !tbaa !483
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !484
  %i.n = mul i64 %i.m, %i.k
  %i.o = tail call i64 @fwrite(ptr noundef %i.j, i64 noundef 4, i64 noundef %i.n, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_21
