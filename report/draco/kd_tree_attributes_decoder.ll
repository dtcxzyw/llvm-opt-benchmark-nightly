Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/kd_tree_attributes_decoder?download=true
inline.NumInlined: 2751
inline.NumDeleted: 1291
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5draco23KdTreeAttributesDecoder35TransformAttributesToOriginalFormatEv:bb.a

bb.f:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #23
          to label %.noexc102 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ; 5 uses

.noexc102:                                        ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.am ; 2 uses
  store i32 0, ptr %i.at, align 4, !tbaa !90
  br i1 %i.ar, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc102
  %i.av = getelementptr i8, ptr %i.at, i64 4
  %.idx.i.i.i.i.i.i.i100 = shl nuw nsw i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i.i100, i1 false), !tbaa !90
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc102, %bb.e
  %.sroa.0125.0135 = phi ptr [ %i.ao, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ao, %.noexc102 ], [ null, %bb.e ] ; 5 uses
  %.sroa.9128.0132 = phi ptr [ %i.ap, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ap, %.noexc102 ], [ null, %bb.e ] ; 2 uses
  %.sroa.0121.0 = phi ptr [ %i.at, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.at, %.noexc102 ], [ null, %bb.e ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %i.au, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.au, %.noexc102 ], [ null, %bb.e ] ; 2 uses
  switch i32 %i.aj, label %bb.o [
    i32 5, label %bb.g
    i32 3, label %bb.k
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.aw = invoke noundef zeroext i1 @_ZN5draco23KdTreeAttributesDecoder34TransformAttributeBackToSignedTypeIiEEbPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.ah, i32 noundef %.084175)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.aw, label %bb.o, label %bb.p

_ZNSt6vectorIiSaIiEED2Ev.exit.thread:             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.m, %bb.k, %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0121.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = ptrtoint ptr %.sroa.9.0 to i64
  %i.ba = ptrtoint ptr %.sroa.0121.0 to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0, i64 noundef %i.bb) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.bc = invoke noundef zeroext i1 @_ZN5draco23KdTreeAttributesDecoder34TransformAttributeBackToSignedTypeIsEEbPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.ah, i32 noundef %.084175)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.bc, label %bb.o, label %bb.p

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.bd = invoke noundef zeroext i1 @_ZN5draco23KdTreeAttributesDecoder34TransformAttributeBackToSignedTypeIaEEbPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.ah, i32 noundef %.084175)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %bb.l, %bb.n, %bb.h
  %i.be = load i8, ptr %i.ak, align 8, !tbaa !87
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %.084175, %i.bf
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.h, %bb.o
  %.185 = phi i32 [ %i.bg, %bb.o ], [ %.084175, %bb.l ], [ %.084175, %bb.h ], [ %.084175, %bb.n ]
  %cond2 = phi i1 [ true, %bb.o ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.n ]
  %.not.i.i.i103 = icmp eq ptr %.sroa.0121.0, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIiSaIiEED2Ev.exit104, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = ptrtoint ptr %.sroa.9.0 to i64
  %i.bi = ptrtoint ptr %.sroa.0121.0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0, i64 noundef %i.bj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit104

_ZNSt6vectorIiSaIiEED2Ev.exit104:                 ; preds = %bb.p, %bb.q
  %.not.i.i.i105 = icmp eq ptr %.sroa.0125.0135, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit104
  %i.bk = ptrtoint ptr %.sroa.9128.0132 to i64
  %i.bl = ptrtoint ptr %.sroa.0125.0135 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0135, i64 noundef %i.bm) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit104, %bb.r
  br i1 %cond2, label %bb.ab, label %.critedge

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.i
  %.not.i.i.i106 = icmp eq ptr %.sroa.0125.0135, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIjSaIjEED2Ev.exit107, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pn95144 = phi { ptr, i32 } [ %i.ax, %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ], [ %i.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.sroa.9128.0134143 = phi ptr [ %i.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ], [ %.sroa.9128.0132, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.sroa.0125.0137142 = phi ptr [ %i.ao, %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ], [ %.sroa.0125.0135, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.bn = ptrtoint ptr %.sroa.9128.0134143 to i64
  %i.bo = ptrtoint ptr %.sroa.0125.0137142 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0137142, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit107

.noexc.i:                                         ; preds = %bb.d
  %i.bq = sext i32 %.088174 to i64                ; 2 uses
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57 ; 4 uses
  %i.bu = load ptr, ptr %i.q, align 8, !tbaa !127
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.bu, i64 %i.bq ; 3 uses
  %i.bw = add nsw i32 %.088174, 1                 ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !93
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %i.r, ptr %1, align 8, !tbaa !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 24, ptr %i.a, align 8, !tbaa !355
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc108 unwind label %bb.u  ; 2 uses

.noexc108:                                        ; preds = %.noexc.i
  store ptr %i.cf, ptr %1, align 8, !tbaa !179
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !355 ; 3 uses
  store i64 %i.cg, ptr %i.r, align 8, !tbaa !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cf, ptr noundef nonnull align 1 dereferenceable(24) @.str.1, i64 24, i1 false)
  store i64 %i.cg, ptr %i.s, align 8, !tbaa !181
  %i.ch = load ptr, ptr %1, align 8, !tbaa !179
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i8 0, ptr %i.ci, align 1, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cj = invoke noundef zeroext i1 @_ZNK5draco12DracoOptionsINS_17GeometryAttribute4TypeEE16GetAttributeBoolERKS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(96) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.noexc108
  %i.ck = load ptr, ptr %1, align 8, !tbaa !179   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.r
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.cm = load i64, ptr %i.r, align 8, !tbaa !180
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %i.cj, label %.thread, label %bb.w

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN5draco14PointAttribute8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, ptr noundef nonnull align 8 dereferenceable(112) %i.bt)
  br label %bb.ab

bb.u:                                             ; preds = %.noexc.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.v:                                             ; preds = %.noexc108
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !179   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.r
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.v
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !180
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.u
  %.pn = phi { ptr, i32 } [ %i.co, %bb.u ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.cp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit107

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !123
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !87  ; 5 uses
  %3 = zext i8 %i.cx to i64
  %i.cy = zext i8 %i.cx to i64
  %4 = shl nuw nsw i64 %3, 2                      ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cy, 2                ; 2 uses
  %i.da = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #23 ; 10 uses
  %i.db = ptrtoaddr ptr %i.da to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN5draco11DequantizerC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.x unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %notmask = shl nsw i32 -1, %i.cv
  %i.dc = xor i32 %notmask, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.de = load float, ptr %i.dd, align 8, !tbaa !134
  %i.df = invoke noundef zeroext i1 @_ZN5draco11Dequantizer4InitEfi(ptr noundef nonnull align 4 dereferenceable(4) %2, float noundef %i.de, i32 noundef %i.dc)
          to label %bb.y unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !182
  %i.di = load ptr, ptr %i.bt, align 8, !tbaa !183
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !100
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dh  ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bt, i64 96 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !184
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %.thread148, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.z
  %.not178 = icmp eq i8 %i.cx, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  br i1 %.not178, label %.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i8 %i.cx to i64         ; 5 uses
  %min.iters.check = icmp ult i8 %i.cx, 8
  %n.vec = and i64 %wide.trip.count, 248          ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dp = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv189 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next190, %._crit_edge.us ] ; 2 uses
  %.062172.us.a = phi i32 [ 0, %.preheader.us.preheader ], [ %i.fm, %._crit_edge.us ]
  %.064170.us = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next185.lcssa, %._crit_edge.us ] ; 3 uses
  %i.dq = load float, ptr %2, align 4, !tbaa !186 ; 4 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !128 ; 5 uses
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.db
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %i.du = add i64 %.064170.us, %n.vec             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.dk, i64 %.064170.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <4 x i32>, ptr %i.dw, align 4, !tbaa !90
  %wide.load206 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !90
  %i.dy = sitofp <4 x i32> %wide.load to <4 x float>
  %i.dz = sitofp <4 x i32> %wide.load206 to <4 x float>
  %i.ea = fmul <4 x float> %broadcast.splat, %i.dy
  %i.eb = fmul <4 x float> %broadcast.splat, %i.dz
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load207 = load <4 x float>, ptr %i.ec, align 4, !tbaa !115
  %wide.load208 = load <4 x float>, ptr %i.ed, align 4, !tbaa !115
  %i.ee = fadd <4 x float> %i.ea, %wide.load207
  %i.ef = fadd <4 x float> %i.eb, %wide.load208
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <4 x float> %i.ee, ptr %i.eg, align 4, !tbaa !115
  store <4 x float> %i.ef, ptr %i.eh, align 4, !tbaa !115
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv184.ph = phi i64 [ %.064170.us, %.preheader.us ], [ %i.du, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next185.prol = add nsw i64 %indvars.iv184.ph, 1 ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %indvars.iv184.ph
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !90
  %i.el = sitofp i32 %i.ek to float
  %i.em = fmul float %i.dq, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.ph
  %i.eo = load float, ptr %i.en, align 4, !tbaa !115
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.ph
  store float %i.ep, ptr %i.eq, align 4, !tbaa !115
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next185.lcssa212.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next185.prol, %scalar.ph.prol ]
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %scalar.ph.preheader ], [ %indvars.iv.next185.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.er = icmp eq i64 %indvars.iv.ph, %i.dp
  br i1 %i.er, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.1, %scalar.ph ], [ %indvars.iv184.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %indvars.iv184
  %i.et = load i32, ptr %i.es, align 4, !tbaa !90
  %i.eu = sitofp i32 %i.et to float
  %i.ev = fmul float %i.dq, %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !115
  %i.ey = fadd float %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  store float %i.ey, ptr %i.ez, align 4, !tbaa !115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next185.1 = add nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv184
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !90
  %i.fd = sitofp i32 %i.fc to float
  %i.fe = fmul float %i.dq, %i.fd
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !115
  %i.fh = fadd float %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next
  store float %i.fh, ptr %i.fi, align 4, !tbaa !115
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !349

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next185.lcssa = phi i64 [ %i.du, %middle.block ], [ %indvars.iv.next185.lcssa212.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next185.1, %scalar.ph ]
  %i.fj = load ptr, ptr %i.do, align 8, !tbaa !187
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !100
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr nonnull align 1 %i.da, i64 %4, i1 false)
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, %i.cz
  %i.fm = add nuw i32 %.062172.us.a, 1            ; 2 uses
  %i.fn = load i32, ptr %i.dl, align 8, !tbaa !184
  %i.fo = icmp ugt i32 %i.fn, %i.fm
  br i1 %i.fo, label %.preheader.us, label %.thread148, !llvm.loop !350

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.062172 = phi i32 [ %i.fr, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !187
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull align 1 %i.da, i64 %4, i1 false)
  %i.fr = add nuw i32 %.062172, 1                 ; 2 uses
  %i.fs = load i32, ptr %i.dl, align 8, !tbaa !184
  %i.ft = icmp ugt i32 %i.fs, %i.fr
  br i1 %i.ft, label %.preheader, label %.thread148, !llvm.loop !350

.thread148:                                       ; preds = %._crit_edge.us, %.preheader, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZdaPv(ptr noundef nonnull %i.da) #24
  br label %bb.ab

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.w, %bb.x
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZdaPv(ptr noundef nonnull %i.da) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit107

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZdaPv(ptr noundef nonnull %i.da) #24
  br label %.critedge

bb.ab:                                            ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit, %.thread, %.thread148
  %.290.ph = phi i32 [ %i.bw, %.thread ], [ %.088174, %bb.d ], [ %i.bw, %.thread148 ], [ %.088174, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  %.387.ph = phi i32 [ %.084175, %.thread ], [ %.084175, %bb.d ], [ %.084175, %.thread148 ], [ %.185, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  %i.fv = add nuw nsw i32 %.083176, 1             ; 2 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !21
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %.not.not = icmp slt i32 %i.fv, %i.fz
  br i1 %.not.not, label %bb.d, label %.critedge, !llvm.loop !351

_ZNSt6vectorIjSaIjEED2Ev.exit107:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.fu, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %.pn95144, %bb.s ], [ %i.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  resume { ptr, i32 } %.pn95.pn.pn

.critedge:                                        ; preds = %bb.ab, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c, %bb.aa, %bb.b
  %.8 = phi i1 [ true, %bb.b ], [ false, %bb.aa ], [ true, %bb.c ], [ true, %bb.ab ], [ false, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  ret i1 %.8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco23KdTreeAttributesDecoder34TransformAttributeBackToSignedTypeIiEEbPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87    ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #23 ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !90
  %i.g = add nsw i64 %i.c, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #23
          to label %.noexc33 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit38 ; 5 uses

.noexc33:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.c ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !90
  br i1 %i.h, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc33
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i31 = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i31, i1 false), !tbaa !90
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc33, %bb.a
  %.sroa.051.063 = phi ptr [ %i.e, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc33 ], [ null, %bb.a ] ; 5 uses
  %.sroa.12.060 = phi ptr [ %i.f, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc33 ], [ null, %bb.a ]
  %.sroa.11.0 = phi ptr [ %i.k, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc33 ], [ null, %bb.a ]
  %.sroa.045.0 = phi ptr [ %i.j, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc33 ], [ null, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !184
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge29, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = sext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %._crit_edge
  %indvars.iv88 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next89, %._crit_edge ] ; 2 uses
  %i.t = load i64, ptr %i.p, align 8, !tbaa !182
  %i.u = load i64, ptr %i.q, align 8, !tbaa !188  ; 3 uses
  %i.v = mul nsw i64 %i.u, %indvars.iv88          ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !183    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t
  %i.z = getelementptr i8, ptr %i.y, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.051.063, ptr align 1 %i.z, i64 %i.u, i1 false)
  %i.aa = load i8, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not81.not = icmp eq i8 %i.aa, 0
  br i1 %.not81.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i8 %i.aa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.063, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !90 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.critedge29, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !91
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.s
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !90
  %i.ai = add nsw i32 %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !356

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %.sroa.045.0, i64 %i.u, i1 false)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.am = load i32, ptr %i.m, align 8, !tbaa !184
  %i.an = zext i32 %i.am to i64
  %.not85 = icmp samesign ult i64 %indvars.iv.next89, %i.an
  br i1 %.not85, label %bb.c, label %.critedge29, !llvm.loop !357

.critedge29:                                      ; preds = %._crit_edge, %.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ao = phi i1 [ false, %.lr.ph ], [ true, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ true, %._crit_edge ]
  %.not.i.i.i34 = icmp eq ptr %.sroa.045.0, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %.critedge29
  %i.ap = ptrtoint ptr %.sroa.11.0 to i64
  %i.aq = ptrtoint ptr %.sroa.045.0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.0, i64 noundef %i.ar) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %.critedge29, %bb.e
  %.not.i.i.i36 = icmp eq ptr %.sroa.051.063, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit35
  %i.as = ptrtoint ptr %.sroa.12.060 to i64
  %i.at = ptrtoint ptr %.sroa.051.063 to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.051.063, i64 noundef %i.au) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit35, %bb.f
  ret i1 %i.ao

_ZNSt6vectorIjSaIjEED2Ev.exit38:                  ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #24
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco23KdTreeAttributesDecoder34TransformAttributeBackToSignedTypeIsEEbPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87    ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIsSaIsEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.c, 1                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #23 ; 6 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.c ; 2 uses
  store i16 0, ptr %i.e, align 2, !tbaa !361
  %i.g = add nsw i64 %i.c, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.i = getelementptr i8, ptr %i.e, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !361
end_hunk_0
