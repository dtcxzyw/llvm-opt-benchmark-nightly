Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/apriltag_quad_thresh?download=true
inline.NumInlined: 743
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2cv5arucoL6ptsortEPNS0_2ptEi:bb.a
  %.9.i.lcssa255 = phi i32 [ %i.gm, %._crit_edge.loopexit ], [ %.0.i.lcssa, %._crit_edge ]
  %.9153.i.lcssa253 = phi i32 [ %.10154.i, %._crit_edge.loopexit ], [ %.0144.i.lcssa, %._crit_edge ]
  br i1 %.lcssa257, label %bb.br, label %_ZN2cv5arucoL7ptsort_EPNS0_2ptEi.exit

bb.br:                                            ; preds = %.split, %bb.bq
  %.9153.i.lcssa253260 = phi i32 [ %.9153.i.lcssa254, %.split ], [ %.9153.i.lcssa253, %bb.bq ] ; 2 uses
  %.9.i.lcssa255259 = phi i32 [ %.9.i.lcssa256, %.split ], [ %.9.i.lcssa255, %bb.bq ]
  %i.gu = zext nneg i32 %.9.i.lcssa255259 to i64
  %i.gv = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.gu
  %i.gw = sext i32 %.9153.i.lcssa253260 to i64
  %i.gx = getelementptr inbounds [12 x i8], ptr %i.ck, i64 %i.gw
  %i.gy = sub nsw i32 %i.ci, %.9153.i.lcssa253260
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = mul nuw nsw i64 %i.gz, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr nonnull align 4 %i.gx, i64 %i.ha, i1 false)
  br label %_ZN2cv5arucoL7ptsort_EPNS0_2ptEi.exit

_ZN2cv5arucoL7ptsort_EPNS0_2ptEi.exit:            ; preds = %.split, %bb.bq, %bb.br
  %i.hb = load ptr, ptr %2, align 8, !tbaa !132   ; 3 uses
  %.not.i.i = icmp eq ptr %i.hb, %i.cc
  %i.hc = icmp eq ptr %i.hb, null
  %or.cond.i = or i1 %.not.i.i, %i.hc
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferINS_5aruco2ptELm1024EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN2cv5arucoL7ptsort_EPNS0_2ptEi.exit
  call void @_ZdaPv(ptr noundef nonnull %i.hb) #23
  br label %_ZN2cv10AutoBufferINS_5aruco2ptELm1024EED2Ev.exit

_ZN2cv10AutoBufferINS_5aruco2ptELm1024EED2Ev.exit: ; preds = %_ZN2cv5arucoL7ptsort_EPNS0_2ptEi.exit, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.a, %_ZN2cv10AutoBufferINS_5aruco2ptELm1024EED2Ev.exit, %bb.ap, %bb.w, %bb.l, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_(ptr nofree noundef readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 13 uses
  %i.g = icmp slt i32 %i.b, 32768
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_, ptr noundef nonnull @.str.1, i32 noundef 1050) #22
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !18
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.an

bb.g:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.d, 32768
  br i1 %i.o, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_, ptr noundef nonnull @.str.1, i32 noundef 1051) #22
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.l:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.l
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.k
  %.pn307 = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.an

bb.m:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = and i64 %i.f, 4294967295
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_, ptr noundef nonnull @.str.1, i32 noundef 1053) #22
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

bb.r:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.r
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.q
  %.pn309 = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %i.ab, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.an

bb.s:                                             ; preds = %bb.m
  %i.ah = sdiv i32 %i.b, 4                        ; 13 uses
  %i.ai = sdiv i32 %i.d, 4                        ; 7 uses
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = sext i32 %i.aj to i64                   ; 4 uses
  %i.al = tail call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 1) #25 ; 13 uses
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 1) #25 ; 13 uses
  %i.an = icmp sgt i32 %i.d, 3                    ; 3 uses
  %i.ao = icmp sgt i32 %i.b, 3
  %or.cond537 = and i1 %i.an, %i.ao
  br i1 %or.cond537, label %.preheader346.lr.ph.split, label %._crit_edge355.split

.preheader346.lr.ph.split:                        ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 112 uses
  %sext = shl i64 %i.f, 32
  %i.ar = ashr exact i64 %sext, 32                ; 4 uses
  %i.as = zext nneg i32 %i.ah to i64
  %wide.trip.count404 = zext nneg i32 %i.ai to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 32
  %min.iters.check538 = icmp ult i32 %i.b, 64
  %i.at = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 536870896    ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check.not.not = icmp eq i64 %i.at, 0
  %n.vec539 = and i64 %wide.trip.count, 536870904 ; 3 uses
  %cmp.n542 = icmp eq i64 %n.vec539, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader346.lr.ph.split, %._crit_edge
  %indvars.iv401 = phi i64 [ 0, %.preheader346.lr.ph.split ], [ %indvars.iv.next402, %._crit_edge ] ; 3 uses
  %i.au = shl nuw nsw i64 %indvars.iv401, 2       ; 4 uses
  %i.av = mul nuw nsw i64 %indvars.iv401, %i.as   ; 3 uses
  %i.aw = or disjoint i64 %i.au, 3
  %i.ax = mul nsw i64 %i.aw, %i.ar                ; 25 uses
  %i.ay = mul nsw i64 %i.au, %i.ar                ; 25 uses
  %i.az = or disjoint i64 %i.au, 1
  %i.ba = mul nsw i64 %i.az, %i.ar                ; 25 uses
  %i.bb = or disjoint i64 %i.au, 2
  %i.bc = mul nsw i64 %i.bb, %i.ar                ; 25 uses
  br i1 %min.iters.check, label %.preheader345.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check538, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.be = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bg = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bh = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bi = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bj = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bk = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bl = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bm = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bn = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bo = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bq = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.br = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bs = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.bt = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.bu = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.bv = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.bw = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.bx = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.by = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.bz = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.ca = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.cb = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.cd = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.ce = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.cf = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.cg = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.ch = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.ci = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.cj = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.ck = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cl = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cm = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cn = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.co = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cp = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cq = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cr = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cs = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.ct = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cu = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cv = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cw = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cx = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cy = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.cz = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.da = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.db = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dc = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.de = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.df = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dg = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dh = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.di = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dj = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dk = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dl = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dm = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.dn = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.do = getelementptr i8, ptr %i.aq, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.dp = shl nuw nsw i64 %index, 2               ; 4 uses
  %i.dq = shl i64 %index, 2
  %i.dr = or disjoint i64 %i.dq, 4                ; 4 uses
  %i.ds = shl i64 %index, 2
  %i.dt = or disjoint i64 %i.ds, 8                ; 4 uses
  %i.du = shl i64 %index, 2
  %i.dv = or disjoint i64 %i.du, 12               ; 4 uses
  %i.dw = shl i64 %index, 2
  %i.dx = or disjoint i64 %i.dw, 16               ; 4 uses
  %i.dy = shl i64 %index, 2
  %i.dz = or disjoint i64 %i.dy, 20               ; 4 uses
  %i.ea = shl i64 %index, 2
  %i.eb = or disjoint i64 %i.ea, 24               ; 4 uses
  %i.ec = shl i64 %index, 2
  %i.ed = or disjoint i64 %i.ec, 28               ; 4 uses
  %i.ee = shl i64 %index, 2
  %i.ef = or disjoint i64 %i.ee, 32               ; 4 uses
  %i.eg = shl i64 %index, 2
  %i.eh = or disjoint i64 %i.eg, 36               ; 4 uses
  %i.ei = shl i64 %index, 2
  %i.ej = or disjoint i64 %i.ei, 40               ; 4 uses
  %i.ek = shl i64 %index, 2
  %i.el = or disjoint i64 %i.ek, 44               ; 4 uses
  %i.em = shl i64 %index, 2
  %i.en = or disjoint i64 %i.em, 48               ; 4 uses
  %i.eo = shl i64 %index, 2
  %i.ep = or disjoint i64 %i.eo, 52               ; 4 uses
  %i.eq = shl i64 %index, 2
  %i.er = or disjoint i64 %i.eq, 56               ; 4 uses
  %i.es = shl i64 %index, 2
  %i.et = or disjoint i64 %i.es, 60               ; 4 uses
  %i.eu = getelementptr i8, ptr %i.bd, i64 %i.dp  ; 4 uses
  %i.ev = getelementptr i8, ptr %i.be, i64 %i.dr  ; 4 uses
  %i.ew = getelementptr i8, ptr %i.bf, i64 %i.dt  ; 4 uses
  %i.ex = getelementptr i8, ptr %i.bg, i64 %i.dv  ; 4 uses
  %i.ey = getelementptr i8, ptr %i.bh, i64 %i.dx  ; 4 uses
  %i.ez = getelementptr i8, ptr %i.bi, i64 %i.dz  ; 4 uses
  %i.fa = getelementptr i8, ptr %i.bj, i64 %i.eb  ; 4 uses
  %i.fb = getelementptr i8, ptr %i.bk, i64 %i.ed  ; 4 uses
  %i.fc = getelementptr i8, ptr %i.bl, i64 %i.ef  ; 4 uses
  %i.fd = getelementptr i8, ptr %i.bm, i64 %i.eh  ; 4 uses
  %i.fe = getelementptr i8, ptr %i.bn, i64 %i.ej  ; 4 uses
  %i.ff = getelementptr i8, ptr %i.bo, i64 %i.el  ; 4 uses
  %i.fg = getelementptr i8, ptr %i.bp, i64 %i.en  ; 4 uses
  %i.fh = getelementptr i8, ptr %i.bq, i64 %i.ep  ; 4 uses
  %i.fi = getelementptr i8, ptr %i.br, i64 %i.er  ; 4 uses
  %i.fj = getelementptr i8, ptr %i.bs, i64 %i.et  ; 4 uses
  %i.fk = load i8, ptr %i.eu, align 1, !tbaa !18
  %i.fl = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.fm = load i8, ptr %i.ew, align 1, !tbaa !18
  %i.fn = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.fo = load i8, ptr %i.ey, align 1, !tbaa !18
  %i.fp = load i8, ptr %i.ez, align 1, !tbaa !18
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !18
  %i.fr = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fs = load i8, ptr %i.fc, align 1, !tbaa !18
  %i.ft = load i8, ptr %i.fd, align 1, !tbaa !18
  %i.fu = load i8, ptr %i.fe, align 1, !tbaa !18
  %i.fv = load i8, ptr %i.ff, align 1, !tbaa !18
  %i.fw = load i8, ptr %i.fg, align 1, !tbaa !18
  %i.fx = load i8, ptr %i.fh, align 1, !tbaa !18
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !18
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !18
  %i.ga = insertelement <16 x i8> poison, i8 %i.fk, i64 0
  %i.gb = insertelement <16 x i8> %i.ga, i8 %i.fl, i64 1
  %i.gc = insertelement <16 x i8> %i.gb, i8 %i.fm, i64 2
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 3
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 4
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 5
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 6
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 7
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 8
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 9
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 10
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 11
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 12
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 13
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 14
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 15 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.eu, i64 1
  %i.gr = getelementptr i8, ptr %i.ev, i64 1
  %i.gs = getelementptr i8, ptr %i.ew, i64 1
  %i.gt = getelementptr i8, ptr %i.ex, i64 1
  %i.gu = getelementptr i8, ptr %i.ey, i64 1
  %i.gv = getelementptr i8, ptr %i.ez, i64 1
  %i.gw = getelementptr i8, ptr %i.fa, i64 1
  %i.gx = getelementptr i8, ptr %i.fb, i64 1
  %i.gy = getelementptr i8, ptr %i.fc, i64 1
  %i.gz = getelementptr i8, ptr %i.fd, i64 1
  %i.ha = getelementptr i8, ptr %i.fe, i64 1
  %i.hb = getelementptr i8, ptr %i.ff, i64 1
  %i.hc = getelementptr i8, ptr %i.fg, i64 1
  %i.hd = getelementptr i8, ptr %i.fh, i64 1
  %i.he = getelementptr i8, ptr %i.fi, i64 1
  %i.hf = getelementptr i8, ptr %i.fj, i64 1
  %i.hg = load i8, ptr %i.gq, align 1, !tbaa !18
  %i.hh = load i8, ptr %i.gr, align 1, !tbaa !18
  %i.hi = load i8, ptr %i.gs, align 1, !tbaa !18
  %i.hj = load i8, ptr %i.gt, align 1, !tbaa !18
  %i.hk = load i8, ptr %i.gu, align 1, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_:bb.a
  %i.auf = insertelement <8 x i8> %i.aue, i8 %i.atx, i64 6
  %i.aug = insertelement <8 x i8> %i.auf, i8 %i.aty, i64 7 ; 2 uses
  %i.auh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.aug, <8 x i8> %i.ath)
  %i.aui = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.aug, <8 x i8> %i.ati)
  %i.auj = getelementptr i8, ptr %i.atj, i64 1
  %i.auk = getelementptr i8, ptr %i.atk, i64 1
  %i.aul = getelementptr i8, ptr %i.atl, i64 1
  %i.aum = getelementptr i8, ptr %i.atm, i64 1
  %i.aun = getelementptr i8, ptr %i.atn, i64 1
  %i.auo = getelementptr i8, ptr %i.ato, i64 1
  %i.aup = getelementptr i8, ptr %i.atp, i64 1
  %i.auq = getelementptr i8, ptr %i.atq, i64 1
  %i.aur = load i8, ptr %i.auj, align 1, !tbaa !18
  %i.aus = load i8, ptr %i.auk, align 1, !tbaa !18
  %i.aut = load i8, ptr %i.aul, align 1, !tbaa !18
  %i.auu = load i8, ptr %i.aum, align 1, !tbaa !18
  %i.auv = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.auw = load i8, ptr %i.auo, align 1, !tbaa !18
  %i.aux = load i8, ptr %i.aup, align 1, !tbaa !18
  %i.auy = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.auz = insertelement <8 x i8> poison, i8 %i.aur, i64 0
  %i.ava = insertelement <8 x i8> %i.auz, i8 %i.aus, i64 1
  %i.avb = insertelement <8 x i8> %i.ava, i8 %i.aut, i64 2
  %i.avc = insertelement <8 x i8> %i.avb, i8 %i.auu, i64 3
  %i.avd = insertelement <8 x i8> %i.avc, i8 %i.auv, i64 4
  %i.ave = insertelement <8 x i8> %i.avd, i8 %i.auw, i64 5
  %i.avf = insertelement <8 x i8> %i.ave, i8 %i.aux, i64 6
  %i.avg = insertelement <8 x i8> %i.avf, i8 %i.auy, i64 7 ; 2 uses
  %i.avh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.avg, <8 x i8> %i.auh)
  %i.avi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.avg, <8 x i8> %i.aui)
  %i.avj = getelementptr i8, ptr %i.atj, i64 2
  %i.avk = getelementptr i8, ptr %i.atk, i64 2
  %i.avl = getelementptr i8, ptr %i.atl, i64 2
  %i.avm = getelementptr i8, ptr %i.atm, i64 2
  %i.avn = getelementptr i8, ptr %i.atn, i64 2
  %i.avo = getelementptr i8, ptr %i.ato, i64 2
  %i.avp = getelementptr i8, ptr %i.atp, i64 2
  %i.avq = getelementptr i8, ptr %i.atq, i64 2
  %i.avr = load i8, ptr %i.avj, align 1, !tbaa !18
  %i.avs = load i8, ptr %i.avk, align 1, !tbaa !18
  %i.avt = load i8, ptr %i.avl, align 1, !tbaa !18
  %i.avu = load i8, ptr %i.avm, align 1, !tbaa !18
  %i.avv = load i8, ptr %i.avn, align 1, !tbaa !18
  %i.avw = load i8, ptr %i.avo, align 1, !tbaa !18
  %i.avx = load i8, ptr %i.avp, align 1, !tbaa !18
  %i.avy = load i8, ptr %i.avq, align 1, !tbaa !18
  %i.avz = insertelement <8 x i8> poison, i8 %i.avr, i64 0
  %i.awa = insertelement <8 x i8> %i.avz, i8 %i.avs, i64 1
  %i.awb = insertelement <8 x i8> %i.awa, i8 %i.avt, i64 2
  %i.awc = insertelement <8 x i8> %i.awb, i8 %i.avu, i64 3
  %i.awd = insertelement <8 x i8> %i.awc, i8 %i.avv, i64 4
  %i.awe = insertelement <8 x i8> %i.awd, i8 %i.avw, i64 5
  %i.awf = insertelement <8 x i8> %i.awe, i8 %i.avx, i64 6
  %i.awg = insertelement <8 x i8> %i.awf, i8 %i.avy, i64 7 ; 2 uses
  %i.awh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.awg, <8 x i8> %i.avh)
  %i.awi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.awg, <8 x i8> %i.avi)
  %i.awj = getelementptr i8, ptr %i.atj, i64 3
  %i.awk = getelementptr i8, ptr %i.atk, i64 3
  %i.awl = getelementptr i8, ptr %i.atl, i64 3
  %i.awm = getelementptr i8, ptr %i.atm, i64 3
  %i.awn = getelementptr i8, ptr %i.atn, i64 3
  %i.awo = getelementptr i8, ptr %i.ato, i64 3
  %i.awp = getelementptr i8, ptr %i.atp, i64 3
  %i.awq = getelementptr i8, ptr %i.atq, i64 3
  %i.awr = load i8, ptr %i.awj, align 1, !tbaa !18
  %i.aws = load i8, ptr %i.awk, align 1, !tbaa !18
  %i.awt = load i8, ptr %i.awl, align 1, !tbaa !18
  %i.awu = load i8, ptr %i.awm, align 1, !tbaa !18
  %i.awv = load i8, ptr %i.awn, align 1, !tbaa !18
  %i.aww = load i8, ptr %i.awo, align 1, !tbaa !18
  %i.awx = load i8, ptr %i.awp, align 1, !tbaa !18
  %i.awy = load i8, ptr %i.awq, align 1, !tbaa !18
  %i.awz = insertelement <8 x i8> poison, i8 %i.awr, i64 0
  %i.axa = insertelement <8 x i8> %i.awz, i8 %i.aws, i64 1
  %i.axb = insertelement <8 x i8> %i.axa, i8 %i.awt, i64 2
  %i.axc = insertelement <8 x i8> %i.axb, i8 %i.awu, i64 3
  %i.axd = insertelement <8 x i8> %i.axc, i8 %i.awv, i64 4
  %i.axe = insertelement <8 x i8> %i.axd, i8 %i.aww, i64 5
  %i.axf = insertelement <8 x i8> %i.axe, i8 %i.awx, i64 6
  %i.axg = insertelement <8 x i8> %i.axf, i8 %i.awy, i64 7 ; 2 uses
  %i.axh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.axg, <8 x i8> %i.awh)
  %i.axi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.axg, <8 x i8> %i.awi)
  %i.axj = getelementptr i8, ptr %i.ako, i64 %i.akw ; 4 uses
  %i.axk = getelementptr i8, ptr %i.akp, i64 %i.aky ; 4 uses
  %i.axl = getelementptr i8, ptr %i.akq, i64 %i.ala ; 4 uses
  %i.axm = getelementptr i8, ptr %i.akr, i64 %i.alc ; 4 uses
  %i.axn = getelementptr i8, ptr %i.aks, i64 %i.ale ; 4 uses
  %i.axo = getelementptr i8, ptr %i.akt, i64 %i.alg ; 4 uses
  %i.axp = getelementptr i8, ptr %i.aku, i64 %i.ali ; 4 uses
  %i.axq = getelementptr i8, ptr %i.akv, i64 %i.alk ; 4 uses
  %i.axr = load i8, ptr %i.axj, align 1, !tbaa !18
  %i.axs = load i8, ptr %i.axk, align 1, !tbaa !18
  %i.axt = load i8, ptr %i.axl, align 1, !tbaa !18
  %i.axu = load i8, ptr %i.axm, align 1, !tbaa !18
  %i.axv = load i8, ptr %i.axn, align 1, !tbaa !18
  %i.axw = load i8, ptr %i.axo, align 1, !tbaa !18
  %i.axx = load i8, ptr %i.axp, align 1, !tbaa !18
  %i.axy = load i8, ptr %i.axq, align 1, !tbaa !18
  %i.axz = insertelement <8 x i8> poison, i8 %i.axr, i64 0
  %i.aya = insertelement <8 x i8> %i.axz, i8 %i.axs, i64 1
  %i.ayb = insertelement <8 x i8> %i.aya, i8 %i.axt, i64 2
  %i.ayc = insertelement <8 x i8> %i.ayb, i8 %i.axu, i64 3
  %i.ayd = insertelement <8 x i8> %i.ayc, i8 %i.axv, i64 4
  %i.aye = insertelement <8 x i8> %i.ayd, i8 %i.axw, i64 5
  %i.ayf = insertelement <8 x i8> %i.aye, i8 %i.axx, i64 6
  %i.ayg = insertelement <8 x i8> %i.ayf, i8 %i.axy, i64 7 ; 2 uses
  %i.ayh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.ayg, <8 x i8> %i.axh)
  %i.ayi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.ayg, <8 x i8> %i.axi)
  %i.ayj = getelementptr i8, ptr %i.axj, i64 1
  %i.ayk = getelementptr i8, ptr %i.axk, i64 1
  %i.ayl = getelementptr i8, ptr %i.axl, i64 1
  %i.aym = getelementptr i8, ptr %i.axm, i64 1
  %i.ayn = getelementptr i8, ptr %i.axn, i64 1
  %i.ayo = getelementptr i8, ptr %i.axo, i64 1
  %i.ayp = getelementptr i8, ptr %i.axp, i64 1
  %i.ayq = getelementptr i8, ptr %i.axq, i64 1
  %i.ayr = load i8, ptr %i.ayj, align 1, !tbaa !18
  %i.ays = load i8, ptr %i.ayk, align 1, !tbaa !18
  %i.ayt = load i8, ptr %i.ayl, align 1, !tbaa !18
  %i.ayu = load i8, ptr %i.aym, align 1, !tbaa !18
  %i.ayv = load i8, ptr %i.ayn, align 1, !tbaa !18
  %i.ayw = load i8, ptr %i.ayo, align 1, !tbaa !18
  %i.ayx = load i8, ptr %i.ayp, align 1, !tbaa !18
  %i.ayy = load i8, ptr %i.ayq, align 1, !tbaa !18
  %i.ayz = insertelement <8 x i8> poison, i8 %i.ayr, i64 0
  %i.aza = insertelement <8 x i8> %i.ayz, i8 %i.ays, i64 1
  %i.azb = insertelement <8 x i8> %i.aza, i8 %i.ayt, i64 2
  %i.azc = insertelement <8 x i8> %i.azb, i8 %i.ayu, i64 3
  %i.azd = insertelement <8 x i8> %i.azc, i8 %i.ayv, i64 4
  %i.aze = insertelement <8 x i8> %i.azd, i8 %i.ayw, i64 5
  %i.azf = insertelement <8 x i8> %i.aze, i8 %i.ayx, i64 6
  %i.azg = insertelement <8 x i8> %i.azf, i8 %i.ayy, i64 7 ; 2 uses
  %i.azh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.azg, <8 x i8> %i.ayh)
  %i.azi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.azg, <8 x i8> %i.ayi)
  %i.azj = getelementptr i8, ptr %i.axj, i64 2
  %i.azk = getelementptr i8, ptr %i.axk, i64 2
  %i.azl = getelementptr i8, ptr %i.axl, i64 2
  %i.azm = getelementptr i8, ptr %i.axm, i64 2
  %i.azn = getelementptr i8, ptr %i.axn, i64 2
  %i.azo = getelementptr i8, ptr %i.axo, i64 2
  %i.azp = getelementptr i8, ptr %i.axp, i64 2
  %i.azq = getelementptr i8, ptr %i.axq, i64 2
  %i.azr = load i8, ptr %i.azj, align 1, !tbaa !18
  %i.azs = load i8, ptr %i.azk, align 1, !tbaa !18
  %i.azt = load i8, ptr %i.azl, align 1, !tbaa !18
  %i.azu = load i8, ptr %i.azm, align 1, !tbaa !18
  %i.azv = load i8, ptr %i.azn, align 1, !tbaa !18
  %i.azw = load i8, ptr %i.azo, align 1, !tbaa !18
  %i.azx = load i8, ptr %i.azp, align 1, !tbaa !18
  %i.azy = load i8, ptr %i.azq, align 1, !tbaa !18
  %i.azz = insertelement <8 x i8> poison, i8 %i.azr, i64 0
  %i.baa = insertelement <8 x i8> %i.azz, i8 %i.azs, i64 1
  %i.bab = insertelement <8 x i8> %i.baa, i8 %i.azt, i64 2
  %i.bac = insertelement <8 x i8> %i.bab, i8 %i.azu, i64 3
  %i.bad = insertelement <8 x i8> %i.bac, i8 %i.azv, i64 4
  %i.bae = insertelement <8 x i8> %i.bad, i8 %i.azw, i64 5
  %i.baf = insertelement <8 x i8> %i.bae, i8 %i.azx, i64 6
  %i.bag = insertelement <8 x i8> %i.baf, i8 %i.azy, i64 7 ; 2 uses
  %i.bah = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.bag, <8 x i8> %i.azh)
  %i.bai = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.bag, <8 x i8> %i.azi)
  %i.baj = getelementptr i8, ptr %i.axj, i64 3
  %i.bak = getelementptr i8, ptr %i.axk, i64 3
  %i.bal = getelementptr i8, ptr %i.axl, i64 3
  %i.bam = getelementptr i8, ptr %i.axm, i64 3
  %i.ban = getelementptr i8, ptr %i.axn, i64 3
  %i.bao = getelementptr i8, ptr %i.axo, i64 3
  %i.bap = getelementptr i8, ptr %i.axp, i64 3
  %i.baq = getelementptr i8, ptr %i.axq, i64 3
  %i.bar = load i8, ptr %i.baj, align 1, !tbaa !18
  %i.bas = load i8, ptr %i.bak, align 1, !tbaa !18
  %i.bat = load i8, ptr %i.bal, align 1, !tbaa !18
  %i.bau = load i8, ptr %i.bam, align 1, !tbaa !18
  %i.bav = load i8, ptr %i.ban, align 1, !tbaa !18
  %i.baw = load i8, ptr %i.bao, align 1, !tbaa !18
  %i.bax = load i8, ptr %i.bap, align 1, !tbaa !18
  %i.bay = load i8, ptr %i.baq, align 1, !tbaa !18
  %i.baz = insertelement <8 x i8> poison, i8 %i.bar, i64 0
  %i.bba = insertelement <8 x i8> %i.baz, i8 %i.bas, i64 1
  %i.bbb = insertelement <8 x i8> %i.bba, i8 %i.bat, i64 2
  %i.bbc = insertelement <8 x i8> %i.bbb, i8 %i.bau, i64 3
  %i.bbd = insertelement <8 x i8> %i.bbc, i8 %i.bav, i64 4
  %i.bbe = insertelement <8 x i8> %i.bbd, i8 %i.baw, i64 5
  %i.bbf = insertelement <8 x i8> %i.bbe, i8 %i.bax, i64 6
  %i.bbg = insertelement <8 x i8> %i.bbf, i8 %i.bay, i64 7 ; 2 uses
  %i.bbh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.bbg, <8 x i8> %i.bah)
  %i.bbi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.bbg, <8 x i8> %i.bai)
  %i.bbj = add nuw nsw i64 %index540, %i.av       ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bbj
  store <8 x i8> %i.bbi, ptr %i.bbk, align 1, !tbaa !18
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bbj
  store <8 x i8> %i.bbh, ptr %i.bbl, align 1, !tbaa !18
  %index.next541 = add nuw i64 %index540, 8       ; 2 uses
  %i.bbm = icmp eq i64 %index.next541, %n.vec539
  br i1 %i.bbm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n542, label %._crit_edge, label %.preheader345.preheader

.preheader345.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec539, %vec.epilog.middle.block ]
  br label %.preheader345

._crit_edge355.split:                             ; preds = %._crit_edge, %bb.s
  %i.bbn = tail call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 1) #25 ; 4 uses
  %i.bbo = tail call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 1) #25 ; 4 uses
  %i.bbp = icmp sgt i32 %i.b, 3                   ; 2 uses
  %or.cond392 = and i1 %i.an, %i.bbp
  br i1 %or.cond392, label %.preheader343.preheader, label %._crit_edge365.split

.preheader343.preheader:                          ; preds = %._crit_edge355.split
  %i.bbq = zext nneg i32 %i.ah to i64             ; 3 uses
  %i.bbr = zext nneg i32 %i.ah to i64             ; 7 uses
  %i.bbs = zext nneg i32 %i.ai to i64             ; 3 uses
  br label %.preheader343

.preheader345:                                    ; preds = %.preheader345.preheader, %.preheader345
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader345 ], [ %indvars.iv.ph, %.preheader345.preheader ] ; 3 uses
  %i.bbt = shl nuw nsw i64 %indvars.iv, 2         ; 4 uses
  %10 = add nsw i64 %i.ay, %i.bbt                 ; 4 uses
  %11 = getelementptr inbounds i8, ptr %i.aq, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !18      ; 2 uses
  %13 = getelementptr i8, ptr %i.aq, i64 %10
  %14 = getelementptr i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !18      ; 2 uses
  %spec.select.1 = tail call i8 @llvm.umin.i8(i8 %15, i8 %12)
  %.2280.1 = tail call i8 @llvm.umax.i8(i8 %15, i8 %12)
  %16 = getelementptr i8, ptr %i.aq, i64 %10
  %17 = getelementptr i8, ptr %16, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !18      ; 2 uses
  %spec.select.2 = tail call i8 @llvm.umin.i8(i8 %18, i8 %spec.select.1)
  %.2280.2 = tail call i8 @llvm.umax.i8(i8 %18, i8 %.2280.1)
  %19 = getelementptr i8, ptr %i.aq, i64 %10
  %20 = getelementptr i8, ptr %19, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !18      ; 2 uses
  %spec.select.3 = tail call i8 @llvm.umin.i8(i8 %21, i8 %spec.select.2)
  %.2280.3 = tail call i8 @llvm.umax.i8(i8 %21, i8 %.2280.2)
  %22 = add nsw i64 %i.ba, %i.bbt                 ; 4 uses
  %23 = getelementptr inbounds i8, ptr %i.aq, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !18      ; 2 uses
  %spec.select.1394 = tail call i8 @llvm.umin.i8(i8 %24, i8 %spec.select.3)
  %.2280.1395 = tail call i8 @llvm.umax.i8(i8 %24, i8 %.2280.3)
  %25 = getelementptr i8, ptr %i.aq, i64 %22
  %26 = getelementptr i8, ptr %25, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !18      ; 2 uses
  %spec.select.1.1 = tail call i8 @llvm.umin.i8(i8 %27, i8 %spec.select.1394)
  %.2280.1.1 = tail call i8 @llvm.umax.i8(i8 %27, i8 %.2280.1395)
  %28 = getelementptr i8, ptr %i.aq, i64 %22
  %29 = getelementptr i8, ptr %28, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !18      ; 2 uses
  %spec.select.2.1 = tail call i8 @llvm.umin.i8(i8 %30, i8 %spec.select.1.1)
  %.2280.2.1 = tail call i8 @llvm.umax.i8(i8 %30, i8 %.2280.1.1)
  %31 = getelementptr i8, ptr %i.aq, i64 %22
  %32 = getelementptr i8, ptr %31, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !18      ; 2 uses
  %spec.select.3.1 = tail call i8 @llvm.umin.i8(i8 %33, i8 %spec.select.2.1)
  %.2280.3.1 = tail call i8 @llvm.umax.i8(i8 %33, i8 %.2280.2.1)
  %34 = add nsw i64 %i.bc, %i.bbt                 ; 4 uses
  %35 = getelementptr inbounds i8, ptr %i.aq, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !18      ; 2 uses
  %spec.select.2396 = tail call i8 @llvm.umin.i8(i8 %36, i8 %spec.select.3.1)
  %.2280.2397 = tail call i8 @llvm.umax.i8(i8 %36, i8 %.2280.3.1)
  %37 = getelementptr i8, ptr %i.aq, i64 %34
  %38 = getelementptr i8, ptr %37, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !18      ; 2 uses
  %spec.select.1.2 = tail call i8 @llvm.umin.i8(i8 %39, i8 %spec.select.2396)
  %.2280.1.2 = tail call i8 @llvm.umax.i8(i8 %39, i8 %.2280.2397)
  %40 = getelementptr i8, ptr %i.aq, i64 %34
  %i.bbu = getelementptr i8, ptr %40, i64 2
  %41 = load i8, ptr %i.bbu, align 1, !tbaa !18   ; 2 uses
  %spec.select.2.2 = tail call i8 @llvm.umin.i8(i8 %41, i8 %spec.select.1.2)
  %.2280.2.2 = tail call i8 @llvm.umax.i8(i8 %41, i8 %.2280.1.2)
  %42 = getelementptr i8, ptr %i.aq, i64 %34
  %i.bbv = getelementptr i8, ptr %42, i64 3
  %43 = load i8, ptr %i.bbv, align 1, !tbaa !18   ; 2 uses
  %spec.select.3.2 = tail call i8 @llvm.umin.i8(i8 %43, i8 %spec.select.2.2)
  %.2280.3.2 = tail call i8 @llvm.umax.i8(i8 %43, i8 %.2280.2.2)
  %44 = add nsw i64 %i.ax, %i.bbt                 ; 4 uses
  %i.bbw = getelementptr inbounds i8, ptr %i.aq, i64 %44
  %45 = load i8, ptr %i.bbw, align 1, !tbaa !18   ; 2 uses
  %spec.select.3398 = tail call i8 @llvm.umin.i8(i8 %45, i8 %spec.select.3.2)
  %.2280.3399 = tail call i8 @llvm.umax.i8(i8 %45, i8 %.2280.3.2)
  %46 = getelementptr i8, ptr %i.aq, i64 %44
  %i.bbx = getelementptr i8, ptr %46, i64 1
  %47 = load i8, ptr %i.bbx, align 1, !tbaa !18   ; 2 uses
  %spec.select.1.3 = tail call i8 @llvm.umin.i8(i8 %47, i8 %spec.select.3398)
  %.2280.1.3 = tail call i8 @llvm.umax.i8(i8 %47, i8 %.2280.3399)
  %48 = getelementptr i8, ptr %i.aq, i64 %44
  %49 = getelementptr i8, ptr %48, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !18      ; 2 uses
  %spec.select.2.3 = tail call i8 @llvm.umin.i8(i8 %50, i8 %spec.select.1.3)
  %.2280.2.3 = tail call i8 @llvm.umax.i8(i8 %50, i8 %.2280.1.3)
  %51 = getelementptr i8, ptr %i.aq, i64 %44
  %52 = getelementptr i8, ptr %51, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !18      ; 2 uses
  %spec.select.3.3 = tail call i8 @llvm.umin.i8(i8 %53, i8 %spec.select.2.3)
  %.2280.3.3 = tail call i8 @llvm.umax.i8(i8 %53, i8 %.2280.2.3)
  %i.bby = add nuw nsw i64 %indvars.iv, %i.av     ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bby
  store i8 %.2280.3.3, ptr %i.bbz, align 1, !tbaa !18
  %i.bca = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bby
  store i8 %spec.select.3.3, ptr %i.bca, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader345, !llvm.loop !136

._crit_edge:                                      ; preds = %.preheader345, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %._crit_edge355.split, label %iter.check, !llvm.loop !137

.preheader343:                                    ; preds = %.preheader343.preheader, %._crit_edge363
  %indvars.iv429 = phi i64 [ 0, %.preheader343.preheader ], [ %i.bcf, %._crit_edge363 ] ; 4 uses
  %i.bcb = mul nuw nsw i64 %indvars.iv429, %i.bbq ; 2 uses
  %i.bcc = add nsw i64 %indvars.iv429, -1         ; 2 uses
  %i.bcd = trunc nsw i64 %i.bcc to i32
  %or.cond = icmp ugt i32 %i.ai, %i.bcd
  %i.bce = mul nuw nsw i64 %i.bcc, %i.bbq
  %or.cond.1 = icmp samesign ult i64 %indvars.iv429, %i.bbs
  %i.bcf = add nuw nsw i64 %indvars.iv429, 1      ; 4 uses
  %i.bcg = icmp samesign ult i64 %i.bcf, %i.bbs
  %i.bch = mul nuw nsw i64 %i.bcf, %i.bbq
  br label %.preheader342

._crit_edge365.split:                             ; preds = %._crit_edge363, %._crit_edge355.split
  tail call void @free(ptr noundef %i.al) #21
  tail call void @free(ptr noundef %i.am) #21
  br i1 %i.an, label %.preheader339.lr.ph, label %.preheader335

.preheader339.lr.ph:                              ; preds = %._crit_edge365.split
  %i.bci = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 32 uses
  br i1 %i.bbp, label %.preheader339.preheader, label %.lr.ph377

.preheader339.preheader:                          ; preds = %.preheader339.lr.ph
  %i.bcl = zext nneg i32 %i.ah to i64
  %wide.trip.count459 = zext nneg i32 %i.ai to i64
  %wide.trip.count454 = zext nneg i32 %i.ah to i64
  br label %.preheader339

.preheader342:                                    ; preds = %.preheader343, %.loopexit341.2
  %indvars.iv422 = phi i64 [ 0, %.preheader343 ], [ %indvars.iv.next423.pre-phi, %.loopexit341.2 ] ; 14 uses
  br i1 %or.cond, label %.preheader340, label %.loopexit341

._crit_edge363:                                   ; preds = %.loopexit341.2
  %exitcond434.not = icmp eq i64 %i.bcf, %i.bbs
  br i1 %exitcond434.not, label %._crit_edge365.split, label %.preheader343, !llvm.loop !138

.preheader340:                                    ; preds = %.preheader342
  %i.bcm = add nsw i64 %i.bce, %indvars.iv422     ; 4 uses
  %i.bcn = trunc i64 %indvars.iv422 to i32
  %i.bco = add i32 %i.bcn, -1
  %or.cond317 = icmp ult i32 %i.bco, %i.ah
  br i1 %or.cond317, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader340
  %i.bcp = add nsw i64 %i.bcm, -1                 ; 2 uses
  %i.bcq = getelementptr inbounds i8, ptr %i.al, i64 %i.bcp
  %i.bcr = load i8, ptr %i.bcq, align 1, !tbaa !18
  %i.bcs = getelementptr inbounds i8, ptr %i.am, i64 %i.bcp
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %.preheader340, %bb.t
  %.3269 = phi i8 [ 0, %.preheader340 ], [ %i.bcr, %bb.t ] ; 2 uses
  %.3 = phi i8 [ -1, %.preheader340 ], [ %i.bct, %bb.t ] ; 2 uses
  %or.cond317.1 = icmp samesign ult i64 %indvars.iv422, %i.bbr
  br i1 %or.cond317.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bcu = getelementptr inbounds i8, ptr %i.al, i64 %i.bcm
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !18
  %spec.select318.1 = tail call i8 @llvm.umax.i8(i8 %i.bcv, i8 %.3269)
  %i.bcw = getelementptr inbounds i8, ptr %i.am, i64 %i.bcm
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !18
  %.2265.1 = tail call i8 @llvm.umin.i8(i8 %i.bcx, i8 %.3)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3269.1 = phi i8 [ %.3269, %bb.u ], [ %spec.select318.1, %bb.v ] ; 2 uses
  %.3.1 = phi i8 [ %.3, %bb.u ], [ %.2265.1, %bb.v ] ; 2 uses
  %i.bcy = add nuw nsw i64 %indvars.iv422, 1
  %i.bcz = icmp samesign ult i64 %i.bcy, %i.bbr
  br i1 %i.bcz, label %bb.x, label %.loopexit341

bb.x:                                             ; preds = %bb.w
  %i.bda = add nsw i64 %i.bcm, 1                  ; 2 uses
  %i.bdb = getelementptr inbounds i8, ptr %i.al, i64 %i.bda
  %i.bdc = load i8, ptr %i.bdb, align 1, !tbaa !18
  %spec.select318.2 = tail call i8 @llvm.umax.i8(i8 %i.bdc, i8 %.3269.1)
  %i.bdd = getelementptr inbounds i8, ptr %i.am, i64 %i.bda
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !18
  %.2265.2 = tail call i8 @llvm.umin.i8(i8 %i.bde, i8 %.3.1)
  br label %.loopexit341

.loopexit341:                                     ; preds = %bb.w, %bb.x, %.preheader342
  %.4270 = phi i8 [ 0, %.preheader342 ], [ %.3269.1, %bb.w ], [ %spec.select318.2, %bb.x ] ; 3 uses
  %.4 = phi i8 [ -1, %.preheader342 ], [ %.3.1, %bb.w ], [ %.2265.2, %bb.x ] ; 3 uses
  br i1 %or.cond.1, label %.preheader340.1, label %.loopexit341.1

.preheader340.1:                                  ; preds = %.loopexit341
  %i.bdf = add nsw i64 %i.bcb, %indvars.iv422     ; 4 uses
  %i.bdg = trunc i64 %indvars.iv422 to i32
  %i.bdh = add i32 %i.bdg, -1
  %or.cond317.1412 = icmp ult i32 %i.bdh, %i.ah
  br i1 %or.cond317.1412, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader340.1
  %i.bdi = add nsw i64 %i.bdf, -1                 ; 2 uses
  %i.bdj = getelementptr inbounds i8, ptr %i.al, i64 %i.bdi
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !18
  %spec.select318.1413 = tail call i8 @llvm.umax.i8(i8 %i.bdk, i8 %.4270)
  %i.bdl = getelementptr inbounds i8, ptr %i.am, i64 %i.bdi
  %i.bdm = load i8, ptr %i.bdl, align 1, !tbaa !18
  %.2265.1414 = tail call i8 @llvm.umin.i8(i8 %i.bdm, i8 %.4)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader340.1
  %.3269.1415 = phi i8 [ %.4270, %.preheader340.1 ], [ %spec.select318.1413, %bb.y ] ; 2 uses
  %.3.1416 = phi i8 [ %.4, %.preheader340.1 ], [ %.2265.1414, %bb.y ] ; 2 uses
  %or.cond317.1.1 = icmp samesign ult i64 %indvars.iv422, %i.bbr
  br i1 %or.cond317.1.1, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bdn = getelementptr inbounds i8, ptr %i.al, i64 %i.bdf
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !18
  %spec.select318.1.1 = tail call i8 @llvm.umax.i8(i8 %i.bdo, i8 %.3269.1415)
  %i.bdp = getelementptr inbounds i8, ptr %i.am, i64 %i.bdf
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !18
  %.2265.1.1 = tail call i8 @llvm.umin.i8(i8 %i.bdq, i8 %.3.1416)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3269.1.1 = phi i8 [ %.3269.1415, %bb.z ], [ %spec.select318.1.1, %bb.aa ] ; 2 uses
  %.3.1.1 = phi i8 [ %.3.1416, %bb.z ], [ %.2265.1.1, %bb.aa ] ; 2 uses
  %i.bdr = add nuw nsw i64 %indvars.iv422, 1
  %i.bds = icmp samesign ult i64 %i.bdr, %i.bbr
  br i1 %i.bds, label %bb.ac, label %.loopexit341.1

bb.ac:                                            ; preds = %bb.ab
  %i.bdt = add nsw i64 %i.bdf, 1                  ; 2 uses
  %i.bdu = getelementptr inbounds i8, ptr %i.al, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !18
  %spec.select318.2.1 = tail call i8 @llvm.umax.i8(i8 %i.bdv, i8 %.3269.1.1)
  %i.bdw = getelementptr inbounds i8, ptr %i.am, i64 %i.bdt
  %i.bdx = load i8, ptr %i.bdw, align 1, !tbaa !18
  %.2265.2.1 = tail call i8 @llvm.umin.i8(i8 %i.bdx, i8 %.3.1.1)
  br label %.loopexit341.1

.loopexit341.1:                                   ; preds = %bb.ab, %bb.ac, %.loopexit341
  %.4270.1 = phi i8 [ %.4270, %.loopexit341 ], [ %.3269.1.1, %bb.ab ], [ %spec.select318.2.1, %bb.ac ] ; 3 uses
  %.4.1 = phi i8 [ %.4, %.loopexit341 ], [ %.3.1.1, %bb.ab ], [ %.2265.2.1, %bb.ac ] ; 3 uses
  br i1 %i.bcg, label %.preheader340.2, label %.loopexit341.1..loopexit341.2_crit_edge

.loopexit341.1..loopexit341.2_crit_edge:          ; preds = %.loopexit341.1
  %.pre = add nuw nsw i64 %indvars.iv422, 1
  br label %.loopexit341.2

.preheader340.2:                                  ; preds = %.loopexit341.1
  %i.bdy = add nsw i64 %i.bch, %indvars.iv422     ; 4 uses
  %i.bdz = trunc i64 %indvars.iv422 to i32
  %i.bea = add i32 %i.bdz, -1
  %or.cond317.2417 = icmp ult i32 %i.bea, %i.ah
  br i1 %or.cond317.2417, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader340.2
  %i.beb = add nsw i64 %i.bdy, -1                 ; 2 uses
  %i.bec = getelementptr inbounds i8, ptr %i.al, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !18
  %spec.select318.2418 = tail call i8 @llvm.umax.i8(i8 %i.bed, i8 %.4270.1)
  %i.bee = getelementptr inbounds i8, ptr %i.am, i64 %i.beb
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !18
  %.2265.2419 = tail call i8 @llvm.umin.i8(i8 %i.bef, i8 %.4.1)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader340.2
  %.3269.2420 = phi i8 [ %.4270.1, %.preheader340.2 ], [ %spec.select318.2418, %bb.ad ] ; 2 uses
  %.3.2421 = phi i8 [ %.4.1, %.preheader340.2 ], [ %.2265.2419, %bb.ad ] ; 2 uses
  %or.cond317.1.2 = icmp samesign ult i64 %indvars.iv422, %i.bbr
  br i1 %or.cond317.1.2, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.beg = getelementptr inbounds i8, ptr %i.al, i64 %i.bdy
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !18
  %spec.select318.1.2 = tail call i8 @llvm.umax.i8(i8 %i.beh, i8 %.3269.2420)
  %i.bei = getelementptr inbounds i8, ptr %i.am, i64 %i.bdy
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !18
  %.2265.1.2 = tail call i8 @llvm.umin.i8(i8 %i.bej, i8 %.3.2421)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3269.1.2 = phi i8 [ %.3269.2420, %bb.ae ], [ %spec.select318.1.2, %bb.af ] ; 2 uses
  %.3.1.2 = phi i8 [ %.3.2421, %bb.ae ], [ %.2265.1.2, %bb.af ] ; 2 uses
  %i.bek = add nuw nsw i64 %indvars.iv422, 1      ; 3 uses
  %i.bel = icmp samesign ult i64 %i.bek, %i.bbr
  br i1 %i.bel, label %bb.ah, label %.loopexit341.2

bb.ah:                                            ; preds = %bb.ag
  %i.bem = add nsw i64 %i.bdy, 1                  ; 2 uses
  %i.ben = getelementptr inbounds i8, ptr %i.al, i64 %i.bem
  %i.beo = load i8, ptr %i.ben, align 1, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !80
  %.pre45 = load ptr, ptr %i.r, align 8, !tbaa !80
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.s, %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %.pre45, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.aa = phi ptr [ %i.t, %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 5 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !75
  %.not7.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc26, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.noexc26 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.noexc26 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !51
  store i64 %i.af, ptr %.09.i.i.i.i.i, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc26 ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !74
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !80, !alias.scope !242
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !80, !alias.scope !241
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75, !alias.scope !242
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !75, !alias.scope !241
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !242
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !236

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %i.ao, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.at, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !80, !alias.scope !244
  store <2 x ptr> %i.ap, ptr %.012.i.i.i29, align 8, !tbaa !80, !alias.scope !243
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75, !alias.scope !244
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !75, !alias.scope !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !244
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !236

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ao, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.au, %.lr.ph.i.i.i28 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #23
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !240
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.az, ptr %i.av, align 8, !tbaa !79
  ret void

bb.e:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #22
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ba

bb.h:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umin.v8i8(<8 x i8>, <8 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umax.v8i8(<8 x i8>, <8 x i8>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !8, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"double", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!15, !15, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!9, !9, i64 0}
!24 = !{!"float", !8, i64 0}
!25 = !{!"bool", !8, i64 0}
!26 = !{!"_ZTSN2cv5aruco18DetectorParametersE", !9, i64 0, !9, i64 4, !9, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !9, i64 56, !19, i64 64, !24, i64 72, !9, i64 76, !9, i64 80, !24, i64 84, !9, i64 88, !19, i64 96, !9, i64 104, !9, i64 108, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !24, i64 144, !24, i64 148, !9, i64 152, !9, i64 156, !24, i64 160, !24, i64 164, !9, i64 168, !9, i64 172, !25, i64 176, !25, i64 177, !9, i64 180, !24, i64 184, !24, i64 188}
!27 = !{!26, !24, i64 160}
!28 = !{!26, !24, i64 164}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!"_ZTSN2cv5aruco6zarrayE", !15, i64 0, !9, i64 8, !9, i64 12, !13, i64 16}
!31 = !{!30, !9, i64 8}
!32 = !{!30, !15, i64 0}
!33 = !{!30, !13, i64 16}
!34 = !{!"short", !8, i64 0}
!35 = !{!"_ZTSN2cv5aruco2ptE", !34, i64 0, !34, i64 2, !24, i64 4, !34, i64 8, !34, i64 10}
!36 = !{!35, !34, i64 0}
!37 = !{!35, !34, i64 2}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!34, !34, i64 0}
!41 = !{!35, !24, i64 4}
!42 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!43 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!44 = !{!"_ZTSN2cv10DataLayoutE", !8, i64 0}
!45 = !{!"_ZTSN2cv8MatShapeE", !9, i64 0, !44, i64 4, !9, i64 8, !8, i64 12}
!46 = !{!"_ZTSN2cv7MatStepE", !8, i64 0}
!47 = !{!"_ZTSN2cv3MatE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !42, i64 56, !43, i64 64, !45, i64 72, !46, i64 128}
!48 = !{!47, !9, i64 12}
!49 = !{!47, !9, i64 8}
!50 = !{!47, !13, i64 24}
!51 = !{!24, !24, i64 0}
!52 = !{!47, !9, i64 0}
!53 = !{!"p1 _ZTSN2cv5aruco9UnionFind5ufrecE", !12, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN2cv5aruco9UnionFind5ufrecESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 0}
!56 = !{!"_ZTSN2cv5aruco9UnionFind5ufrecE", !9, i64 0, !9, i64 4}
!57 = !{!56, !9, i64 4}
!58 = !{!56, !9, i64 0}
!59 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IiEESaIS2_EE", !12, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 8}
!62 = !{!60, !59, i64 16}
!63 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!64 = !{!"p1 _ZTSN2cv6Point_IiEE", !12, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 0}
!67 = !{!65, !64, i64 8}
!68 = !{!65, !64, i64 16}
!69 = !{!64, !64, i64 0}
!70 = !{!54, !53, i64 16}
!71 = !{!"p1 _ZTSN2cv6Point_IfEE", !12, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !71, i64 8}
!75 = !{!72, !71, i64 16}
!76 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IfEESaIS2_EE", !12, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!77, !76, i64 8}
!79 = !{!77, !76, i64 16}
!80 = !{!71, !71, i64 0}
!81 = !{!14, !13, i64 0}
!82 = !{!16, !15, i64 8}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22}
!91 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!92 = !{!26, !9, i64 156}
!93 = distinct !{!93, !22, !29}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = !{!"p1 _ZTSN2cv5aruco13remove_vertexE", !12, i64 0}
!97 = !{!"_ZTSN2cv10AutoBufferINS_5aruco13remove_vertexELm0EEE", !96, i64 0, !15, i64 8, !8, i64 16}
!98 = !{!97, !96, i64 0}
!99 = !{!97, !15, i64 8}
!100 = !{!"p1 _ZTSN2cv5aruco7segmentE", !12, i64 0}
!101 = !{!"_ZTSN2cv10AutoBufferINS_5aruco7segmentELm0EEE", !100, i64 0, !15, i64 8, !8, i64 16}
!102 = !{!101, !100, i64 0}
!103 = !{!101, !15, i64 8}
!104 = !{!96, !96, i64 0}
!105 = !{!"_ZTSN2cv5aruco13remove_vertexE", !9, i64 0, !9, i64 4, !9, i64 8, !19, i64 16}
!106 = !{!105, !9, i64 0}
!107 = !{!105, !9, i64 4}
!108 = !{!105, !9, i64 8}
!109 = !{!105, !19, i64 16}
!110 = !{!"_ZTSN2cv5aruco7segmentE", !9, i64 0, !9, i64 4, !9, i64 8}
!111 = !{!110, !9, i64 0}
!112 = !{!110, !9, i64 8}
!113 = !{!110, !9, i64 4}
!114 = distinct !{!114, !22, !38, !39}
!115 = distinct !{!115, !22, !38}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22, !29}
!119 = !{!"p1 _ZTSN2cv5aruco11line_fit_ptE", !12, i64 0}
!120 = !{!"_ZTSN2cv10AutoBufferINS_5aruco11line_fit_ptELm64EEE", !119, i64 0, !15, i64 8, !8, i64 16}
!121 = !{!120, !119, i64 0}
!122 = !{!120, !15, i64 8}
!123 = !{!"_ZTSN2cv5aruco11line_fit_ptE", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40}
!124 = !{!123, !19, i64 32}
!125 = !{!123, !19, i64 40}
!126 = distinct !{null}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = !{i64 0, i64 2, !40, i64 2, i64 2, !40, i64 4, i64 4, !51, i64 8, i64 2, !40, i64 10, i64 2, !40}
!130 = !{!"p1 _ZTSN2cv5aruco2ptE", !12, i64 0}
!131 = !{!"_ZTSN2cv10AutoBufferINS_5aruco2ptELm1024EEE", !130, i64 0, !15, i64 8, !8, i64 16}
!132 = !{!131, !130, i64 0}
!133 = !{!131, !15, i64 8}
!134 = distinct !{!134, !22, !38, !39}
!135 = distinct !{!135, !22, !38, !39}
!136 = distinct !{!136, !22, !39, !38}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !22}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = distinct !{!146, !22}
!147 = distinct !{!147, !22}
!148 = !{!"branch_weights", i32 8, i32 8}
!149 = !{!26, !9, i64 168}
!150 = !{!26, !9, i64 172}
!151 = distinct !{!151, !22, !38, !39}
!152 = distinct !{!152, !22, !39, !38}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !22}
!155 = distinct !{!155, !22}
!156 = distinct !{!156, !22}
!157 = distinct !{!157, !22}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22}
!161 = distinct !{!161, !22}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!164 = distinct !{!164, !163, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!166 = distinct !{!166, !22}
end_hunk_2
