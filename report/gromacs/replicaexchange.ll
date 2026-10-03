Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/replicaexchange?download=true
inline.NumInlined: 495
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE:bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !49
  store i8 %i.h, ptr %i.g, align 1, !tbaa !49
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !60
  %i.k = load ptr, ptr %0, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !49
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #5

declare void @_Z15check_multi_intP8_IO_FILERK14gmx_multisim_tiPKcb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_Z17check_multi_int64P8_IO_FILERK14gmx_multisim_tlPKcb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef float @_Z27constantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL13repl_quantityPK14gmx_multisim_tP11gmx_repl_ex19ReplicaExchangeTypef(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2, float noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 184, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) ; 19 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = load i32, ptr %1, align 8, !tbaa !29
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store float %3, ptr %i.g, align 4, !tbaa !32
  %i.h = load i32, ptr %0, align 8, !tbaa !14
  tail call void @_Z12gmx_sumf_simiPfPK14gmx_multisim_t(i32 noundef %i.h, ptr noundef %i.c, ptr noundef nonnull %0)
  %i.i = load i32, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %i.k = load float, ptr %i.c, align 4, !tbaa !32 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %i.l = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i32 %i.i, 33
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.n = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi41 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi42 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi43 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %wide.load = load <8 x float>, ptr %i.p, align 4, !tbaa !32
  %wide.load44 = load <8 x float>, ptr %i.q, align 4, !tbaa !32
  %wide.load45 = load <8 x float>, ptr %i.r, align 4, !tbaa !32
  %wide.load46 = load <8 x float>, ptr %i.s, align 4, !tbaa !32
  %i.t = fsub <8 x float> %wide.load, %broadcast.splat
  %i.u = fsub <8 x float> %wide.load44, %broadcast.splat
  %i.v = fsub <8 x float> %wide.load45, %broadcast.splat
  %i.w = fsub <8 x float> %wide.load46, %broadcast.splat
  %i.x = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.t)
  %i.y = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.u)
  %i.z = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.v)
  %i.aa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.w)
  %i.ab = fpext <8 x float> %i.x to <8 x double>
  %i.ac = fpext <8 x float> %i.y to <8 x double>
  %i.ad = fpext <8 x float> %i.z to <8 x double>
  %i.ae = fpext <8 x float> %i.aa to <8 x double>
  %i.af = fcmp ogt <8 x double> %i.ab, splat (double 1.000000e-05)
  %i.ag = fcmp ogt <8 x double> %i.ac, splat (double 1.000000e-05)
  %i.ah = fcmp ogt <8 x double> %i.ad, splat (double 1.000000e-05)
  %i.ai = fcmp ogt <8 x double> %i.ae, splat (double 1.000000e-05)
  %i.aj = or <8 x i1> %vec.phi, %i.af             ; 2 uses
  %i.ak = or <8 x i1> %vec.phi41, %i.ag           ; 2 uses
  %i.al = or <8 x i1> %vec.phi42, %i.ah           ; 2 uses
  %i.am = or <8 x i1> %vec.phi43, %i.ai           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.ak, %i.aj
  %bin.rdx47 = or <8 x i1> %i.al, %bin.rdx
  %bin.rdx48 = or <8 x i1> %i.am, %bin.rdx47
  %bin.rdx48.fr = freeze <8 x i1> %bin.rdx48
  %i.ao = bitcast <8 x i1> %bin.rdx48.fr to i8
  %i.ap = icmp ne i8 %i.ao, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ap, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.l, -4                     ; 3 uses
  %broadcast.splatinsert50 = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat51 = shufflevector <4 x i1> %broadcast.splatinsert50, <4 x i1> poison, <4 x i32> zeroinitializer
  %4 = or disjoint i64 %n.vec49, 1
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi55 = phi <4 x i1> [ %broadcast.splat51, %vec.epilog.ph ], [ %i.aw, %vec.epilog.vector.body ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %wide.load56 = load <4 x float>, ptr %i.ar, align 4, !tbaa !32
  %i.as = fsub <4 x float> %wide.load56, %broadcast.splat53
  %.fr90 = freeze <4 x float> %i.as
  %i.at = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %.fr90)
  %i.au = fpext <4 x float> %i.at to <4 x double>
  %i.av = fcmp ogt <4 x double> %i.au, splat (double 1.000000e-05)
  %i.aw = or <4 x i1> %vec.phi55, %i.av           ; 2 uses
  %index.next57 = add nuw i64 %index54, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next57, %n.vec49
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ay = bitcast <4 x i1> %i.aw to i4
  %i.az = icmp ne i4 %i.ay, 0                     ; 2 uses
  %cmp.n58 = icmp eq i64 %i.l, %n.vec49
  br i1 %cmp.n58, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  %.02227.ph = phi i1 [ false, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02227 = phi i1 [ %spec.select, %vec.epilog.scalar.ph ], [ %.02227.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !32
  %i.bc = fsub float %i.bb, %i.k
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fpext float %i.bd to double
  %i.bf = fcmp ogt double %i.be, 1.000000e-05
  %spec.select = select i1 %i.bf, i1 true, i1 %.02227 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !217

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.az, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %spec.select, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %2, ptr %i.bg, align 4, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = zext nneg i32 %2 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bm = sext i32 %i.bl to i64
  %i.bn = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 202, i64 noundef range(i64 -2147483648, 2147483648) %i.bm, i64 noundef 4) ; 13 uses
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !40
  %i.bo = load i32, ptr %0, align 8, !tbaa !14    ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %iter.check76, label %.loopexit

iter.check76:                                     ; preds = %bb.b
  %i.bq = ptrtoaddr ptr %i.bn to i64
  %wide.trip.count35 = zext nneg i32 %i.bo to i64 ; 8 uses
  %min.iters.check61 = icmp ult i32 %i.bo, 4
  %i.br = sub i64 %i.d, %i.bq
  %diff.check = icmp ugt i64 %i.br, -128
  %or.cond = or i1 %min.iters.check61, %diff.check
  br i1 %or.cond, label %.lr.ph31.preheader, label %vector.main.loop.iter.check62

vector.main.loop.iter.check62:                    ; preds = %iter.check76
  %min.iters.check63 = icmp ult i32 %i.bo, 32
  br i1 %min.iters.check63, label %vec.epilog.ph80, label %vector.ph64

vector.ph64:                                      ; preds = %vector.main.loop.iter.check62
  %i.bs = and i64 %wide.trip.count35, 28
  %n.vec65 = and i64 %wide.trip.count35, 2147483616 ; 4 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.ph64, %vector.body66
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index67 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %wide.load68 = load <8 x float>, ptr %i.bt, align 4, !tbaa !32
  %wide.load69 = load <8 x float>, ptr %i.bu, align 4, !tbaa !32
  %wide.load70 = load <8 x float>, ptr %i.bv, align 4, !tbaa !32
  %wide.load71 = load <8 x float>, ptr %i.bw, align 4, !tbaa !32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index67 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store <8 x float> %wide.load68, ptr %i.bx, align 4, !tbaa !32
  store <8 x float> %wide.load69, ptr %i.by, align 4, !tbaa !32
  store <8 x float> %wide.load70, ptr %i.bz, align 4, !tbaa !32
  store <8 x float> %wide.load71, ptr %i.ca, align 4, !tbaa !32
  %index.next72 = add nuw i64 %index67, 32        ; 2 uses
  %i.cb = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.cb, label %middle.block73, label %vector.body66, !llvm.loop !218

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %n.vec65, %wide.trip.count35
  br i1 %cmp.n74, label %.loopexit, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check79, label %.lr.ph31.preheader, label %vec.epilog.ph80, !prof !65

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check62, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec65, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check62 ]
  %n.vec81 = and i64 %wide.trip.count35, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index83
  %wide.load84 = load <4 x float>, ptr %i.cc, align 4, !tbaa !32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index83
  store <4 x float> %wide.load84, ptr %i.cd, align 4, !tbaa !32
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.ce, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !219

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %n.vec81, %wide.trip.count35
  br i1 %cmp.n87, label %.loopexit, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %iter.check76, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv32.ph = phi i64 [ 0, %iter.check76 ], [ %n.vec65, %vec.epilog.iter.check78 ], [ %n.vec81, %vec.epilog.middle.block86 ] ; 4 uses
  %i.cf = sub nsw i64 %wide.trip.count35, %indvars.iv32.ph
  %xtraiter = and i64 %i.cf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph31.prol.loopexit, label %.lr.ph31.prol

.lr.ph31.prol:                                    ; preds = %.lr.ph31.preheader, %.lr.ph31.prol
  %indvars.iv32.prol = phi i64 [ %indvars.iv.next33.prol, %.lr.ph31.prol ], [ %indvars.iv32.ph, %.lr.ph31.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph31.prol ], [ 0, %.lr.ph31.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv32.prol
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv32.prol
  store float %i.ch, ptr %i.ci, align 4, !tbaa !32
  %indvars.iv.next33.prol = add nuw nsw i64 %indvars.iv32.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph31.prol.loopexit, label %.lr.ph31.prol, !llvm.loop !220

.lr.ph31.prol.loopexit:                           ; preds = %.lr.ph31.prol, %.lr.ph31.preheader
  %indvars.iv32.unr = phi i64 [ %indvars.iv32.ph, %.lr.ph31.preheader ], [ %indvars.iv.next33.prol, %.lr.ph31.prol ]
  %i.cj = sub nsw i64 %indvars.iv32.ph, %wide.trip.count35
  %i.ck = icmp ugt i64 %i.cj, -8
  br i1 %i.ck, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31
  %indvars.iv32 = phi i64 [ %indvars.iv.next33.7, %.lr.ph31 ], [ %indvars.iv32.unr, %.lr.ph31.prol.loopexit ] ; 10 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv32
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv32
  store float %i.cm, ptr %i.cn, align 4, !tbaa !32
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33
  %i.cp = load float, ptr %i.co, align 4, !tbaa !32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33
  store float %i.cp, ptr %i.cq, align 4, !tbaa !32
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33.1
  store float %i.cs, ptr %i.ct, align 4, !tbaa !32
  %indvars.iv.next33.2 = add nuw nsw i64 %indvars.iv32, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33.2
  store float %i.cv, ptr %i.cw, align 4, !tbaa !32
  %indvars.iv.next33.3 = add nuw nsw i64 %indvars.iv32, 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33.3
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33.3
  store float %i.cy, ptr %i.cz, align 4, !tbaa !32
  %indvars.iv.next33.4 = add nuw nsw i64 %indvars.iv32, 5 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33.4
  %i.db = load float, ptr %i.da, align 4, !tbaa !32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33.4
  store float %i.db, ptr %i.dc, align 4, !tbaa !32
  %indvars.iv.next33.5 = add nuw nsw i64 %indvars.iv32, 6 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33.5
  %i.de = load float, ptr %i.dd, align 4, !tbaa !32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33.5
  store float %i.de, ptr %i.df, align 4, !tbaa !32
  %indvars.iv.next33.6 = add nuw nsw i64 %indvars.iv32, 7 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next33.6
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next33.6
  store float %i.dh, ptr %i.di, align 4, !tbaa !32
  %indvars.iv.next33.7 = add nuw nsw i64 %indvars.iv32, 8 ; 2 uses
  %exitcond36.not.7 = icmp eq i64 %indvars.iv.next33.7, %wide.trip.count35
  br i1 %exitcond36.not.7, label %.loopexit, label %.lr.ph31, !llvm.loop !221

.loopexit:                                        ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31, %middle.block73, %vec.epilog.middle.block86, %bb.a, %bb.b, %._crit_edge
  %.022.lcssa39 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %bb.b ], [ true, %middle.block73 ], [ true, %vec.epilog.middle.block86 ], [ true, %.lr.ph31 ], [ true, %.lr.ph31.prol.loopexit ]
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 208, ptr noundef nonnull %i.c)
  ret i1 %.022.lcssa39
}

declare void @_Z11please_citeP8_IO_FILEPKc(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_Z17enumValueToString19TemperatureCoupling(i32 noundef) local_unnamed_addr #5

end_hunk_0
