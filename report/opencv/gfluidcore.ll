Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidcore?download=true
inline.NumInlined: 7926
inline.NumDeleted: 1201
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 235
loop-unroll.NumUnrolled: 244
begin_hunk_0_@_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidMulCESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_EELb1EE4callERKSt6vectorINS_4GArgESaISC_EERKSB_IPNS3_6BufferESaISI_EE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !57
  %i.q = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  call void @_ZN2cv4gapi5fluid10GFluidMulC3runERKNS1_4ViewERKNS_7Scalar_IdEEiRNS1_6BufferESB_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidMulCESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_EELb1EE12init_scratchERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EERNS3_6BufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail14scratch_helperILb1ENS_4gapi5fluid10GFluidMulCEJNS_4GMatENS_7GScalarEiEE14help_init_implIJLi0ELi1ELi2EEEEvRKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EERNS3_6BufferENS0_3SeqIJXspT_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidMulCESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_EELb1EE13reset_scratchERNS3_6BufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidMulCESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_EELb1EE9getBorderERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EE(ptr dead_on_unwind noalias writable sret(%"class.cv::util::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !80, !alias.scope !1433
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidMulCESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_EELb1EE9getWindowERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid10GFluidMulC3runERKNS1_4ViewERKNS_7Scalar_IdEEiRNS1_6BufferESB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !126
  %i.e = icmp slt i32 %i.d, 5
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 983) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !49
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ag

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %._ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit_crit_edge

._ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit_crit_edge: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !91
  %.pre449 = load ptr, ptr %.pre, align 8, !tbaa !120
  %.pre450 = load ptr, ptr %.pre449, align 8, !tbaa !118
  br label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !126  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !125  ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader, label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.w, 1
  br i1 %i.y, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = srem i32 %i.z, %i.q
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !159
  %i.ae = fptrunc double %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store float %i.ae, ptr %i.af, align 4, !tbaa !132
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ah = srem i32 %i.ag, %i.q
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !159
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  store float %i.al, ptr %i.am, align 4, !tbaa !132
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4

_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod901 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod901)
  %i.an = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ao = srem i32 %i.an, %i.q
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !159
  %i.as = fptrunc double %i.ar to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.epil.init
  store float %i.as, ptr %i.at, align 4, !tbaa !132
  br label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit

_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit: ; preds = %.lr.ph.epil.preheader, %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa, %._ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit_crit_edge, %bb.h
  %i.au = phi ptr [ %.pre450, %._ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit_crit_edge ], [ %i.u, %bb.h ], [ %i.u, %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ] ; 63 uses
  %i.av = ptrtoaddr ptr %i.au to i64              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91 ; 49 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !99
  switch i32 %i.az, label %.thread160 [
    i32 0, label %bb.i
    i32 2, label %bb.n
    i32 3, label %bb.s
    i32 5, label %bb.x
  ]

bb.i:                                             ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !109 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !99
  switch i32 %i.bc, label %.thread160 [
    i32 0, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 5, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !116
  %i.bf = sext i32 %i.be to i64
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !118 ; 4 uses
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !118 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !125 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !126 ; 3 uses
  %i.bp = icmp sgt i32 %i.bm, 0
  %i.bq = icmp sgt i32 %i.bo, 0
  %or.cond = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader.preheader:                             ; preds = %bb.j
  %i.br = zext nneg i32 %i.bo to i64              ; 6 uses
  %wide.trip.count447 = zext nneg i32 %i.bm to i64 ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 2
  %scevgep859 = getelementptr i8, ptr %i.au, i64 %i.bs
  %i.bt = mul nuw nsw i64 %wide.trip.count447, %i.br ; 2 uses
  %scevgep860 = getelementptr i8, ptr %i.bi, i64 %i.bt
  %scevgep861.a = getelementptr i8, ptr %i.bk, i64 %i.bt ; 2 uses
  %min.iters.check863 = icmp ult i32 %i.bo, 4
  %bound0865 = icmp ult ptr %i.bk, %scevgep860
  %bound1866 = icmp ult ptr %i.bi, %scevgep861.a
  %found.conflict867 = and i1 %bound0865, %bound1866
  %bound0868 = icmp ult ptr %i.bk, %scevgep859
  %bound1869 = icmp ult ptr %i.au, %scevgep861.a
  %found.conflict870 = and i1 %bound0868, %bound1869
  %conflict.rdx871 = or i1 %found.conflict867, %found.conflict870
  %n.vec873 = and i64 %i.br, 2147483644           ; 3 uses
  %cmp.n880 = icmp eq i64 %n.vec873, %i.br
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge256
  %indvars.iv444 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next445, %._crit_edge256 ] ; 2 uses
  %i.bu = mul nuw nsw i64 %indvars.iv444, %i.br   ; 2 uses
  %brmerge = select i1 %min.iters.check863, i1 true, i1 %conflict.rdx871
  br i1 %brmerge, label %scalar.ph862.preheader, label %vector.body874

vector.body874:                                   ; preds = %.preheader, %vector.body874
  %index875 = phi i64 [ %index.next878, %vector.body874 ], [ 0, %.preheader ] ; 3 uses
  %i.bv = add nuw nsw i64 %index875, %i.bu        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bv
  %wide.load876 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !49, !alias.scope !1503
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index875
  %wide.load877 = load <4 x float>, ptr %i.bx, align 4, !tbaa !132, !alias.scope !1504
  %i.by = uitofp <4 x i8> %wide.load876 to <4 x float>
  %i.bz = fmul <4 x float> %wide.load877, %i.by
  %i.ca = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.bz)
  %i.cb = fptosi <4 x float> %i.ca to <4 x i32>   ; 2 uses
  %i.cc = icmp slt <4 x i32> %i.cb, zeroinitializer
  %i.cd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cb, <4 x i32> splat (i32 255))
  %i.ce = trunc nuw <4 x i32> %i.cd to <4 x i8>
  %i.cf = select <4 x i1> %i.cc, <4 x i8> zeroinitializer, <4 x i8> %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bv
  store <4 x i8> %i.cf, ptr %i.cg, align 1, !tbaa !49, !alias.scope !1505, !noalias !1506
  %index.next878 = add nuw i64 %index875, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next878, %n.vec873
  br i1 %i.ch, label %middle.block879, label %vector.body874, !llvm.loop !1438

middle.block879:                                  ; preds = %vector.body874
  br i1 %cmp.n880, label %._crit_edge256, label %scalar.ph862.preheader

scalar.ph862.preheader:                           ; preds = %.preheader, %middle.block879
  %indvars.iv439.ph = phi i64 [ %n.vec873, %middle.block879 ], [ 0, %.preheader ]
  br label %scalar.ph862

._crit_edge256:                                   ; preds = %scalar.ph862, %middle.block879
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next445, %wide.trip.count447
  br i1 %exitcond448.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader, !llvm.loop !5

scalar.ph862:                                     ; preds = %scalar.ph862.preheader, %scalar.ph862
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %scalar.ph862 ], [ %indvars.iv439.ph, %scalar.ph862.preheader ] ; 3 uses
  %i.ci = add nuw nsw i64 %indvars.iv439, %i.bu   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !49
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv439
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !132
  %i.cn = uitofp i8 %i.ck to float
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = tail call float @llvm.rint.f32(float %i.co)
  %i.cq = fptosi float %i.cp to i32               ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  %spec.select3.i = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 255)
  %spec.select.i = trunc nuw i32 %spec.select3.i to i8
  %i.cs = select i1 %i.cr, i8 0, i8 %spec.select.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !49
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %i.br
  br i1 %exitcond443.not, label %._crit_edge256, label %scalar.ph862, !llvm.loop !1439

bb.k:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !116
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !118 ; 4 uses
  %i.da = load ptr, ptr %i.ax, align 8, !tbaa !120
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !118 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !125 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !126 ; 3 uses
  %i.dg = icmp sgt i32 %i.dd, 0
  %i.dh = icmp sgt i32 %i.df, 0
  %or.cond258 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond258, label %.preheader164.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader164.preheader:                          ; preds = %bb.k
  %i.di = zext nneg i32 %i.df to i64              ; 6 uses
  %wide.trip.count437 = zext nneg i32 %i.dd to i64 ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 2
  %scevgep825 = getelementptr i8, ptr %i.au, i64 %i.dj
  %i.dk = mul nuw nsw i64 %wide.trip.count437, %i.di ; 2 uses
  %i.dl = shl nuw nsw i64 %i.dk, 1
  %scevgep826 = getelementptr i8, ptr %i.cz, i64 %i.dl
  %scevgep827 = getelementptr i8, ptr %i.db, i64 %i.dk ; 2 uses
  %min.iters.check829 = icmp ult i32 %i.df, 4
  %bound0831 = icmp ult ptr %i.db, %scevgep826
  %bound1832 = icmp ult ptr %i.cz, %scevgep827
  %found.conflict833 = and i1 %bound0831, %bound1832
  %bound0834 = icmp ult ptr %i.db, %scevgep825
  %bound1835 = icmp ult ptr %i.au, %scevgep827
  %found.conflict836 = and i1 %bound0834, %bound1835
  %conflict.rdx837 = or i1 %found.conflict833, %found.conflict836
  %n.vec839 = and i64 %i.di, 2147483644           ; 3 uses
  %cmp.n846 = icmp eq i64 %n.vec839, %i.di
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %._crit_edge252
  %indvars.iv434 = phi i64 [ 0, %.preheader164.preheader ], [ %indvars.iv.next435, %._crit_edge252 ] ; 2 uses
  %i.dm = mul nuw nsw i64 %indvars.iv434, %i.di   ; 2 uses
  %brmerge922 = select i1 %min.iters.check829, i1 true, i1 %conflict.rdx837
  br i1 %brmerge922, label %scalar.ph828.preheader, label %vector.body840

vector.body840:                                   ; preds = %.preheader164, %vector.body840
  %index841 = phi i64 [ %index.next844, %vector.body840 ], [ 0, %.preheader164 ] ; 3 uses
  %i.dn = add nuw nsw i64 %index841, %i.dm        ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dn
  %wide.load842 = load <4 x i16>, ptr %i.do, align 2, !tbaa !131, !alias.scope !1507
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index841
  %wide.load843 = load <4 x float>, ptr %i.dp, align 4, !tbaa !132, !alias.scope !1508
  %i.dq = uitofp <4 x i16> %wide.load842 to <4 x float>
  %i.dr = fmul <4 x float> %wide.load843, %i.dq
  %i.ds = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.dr)
  %i.dt = fptosi <4 x float> %i.ds to <4 x i32>   ; 2 uses
  %i.du = icmp slt <4 x i32> %i.dt, zeroinitializer
  %i.dv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 255))
  %i.dw = trunc nuw <4 x i32> %i.dv to <4 x i8>
  %i.dx = select <4 x i1> %i.du, <4 x i8> zeroinitializer, <4 x i8> %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dn
  store <4 x i8> %i.dx, ptr %i.dy, align 1, !tbaa !49, !alias.scope !1509, !noalias !1510
  %index.next844 = add nuw i64 %index841, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next844, %n.vec839
  br i1 %i.dz, label %middle.block845, label %vector.body840, !llvm.loop !1444

middle.block845:                                  ; preds = %vector.body840
  br i1 %cmp.n846, label %._crit_edge252, label %scalar.ph828.preheader

scalar.ph828.preheader:                           ; preds = %.preheader164, %middle.block845
  %indvars.iv429.ph = phi i64 [ %n.vec839, %middle.block845 ], [ 0, %.preheader164 ]
  br label %scalar.ph828

._crit_edge252:                                   ; preds = %scalar.ph828, %middle.block845
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader164, !llvm.loop !1445

scalar.ph828:                                     ; preds = %scalar.ph828.preheader, %scalar.ph828
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph828 ], [ %indvars.iv429.ph, %scalar.ph828.preheader ] ; 3 uses
  %i.ea = add nuw nsw i64 %indvars.iv429, %i.dm   ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !131
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv429
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !132
  %i.ef = uitofp i16 %i.ec to float
  %i.eg = fmul float %i.ee, %i.ef
  %i.eh = tail call float @llvm.rint.f32(float %i.eg)
  %i.ei = fptosi float %i.eh to i32               ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %spec.select3.i127 = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 255)
  %spec.select.i128 = trunc nuw i32 %spec.select3.i127 to i8
  %i.ek = select i1 %i.ej, i8 0, i8 %spec.select.i128
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ea
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !49
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %i.di
  br i1 %exitcond433.not, label %._crit_edge252, label %scalar.ph828, !llvm.loop !1446

bb.l:                                             ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.en = load i32, ptr %i.em, align 8, !tbaa !116
  %i.eo = sext i32 %i.en to i64
  %i.ep = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !118 ; 4 uses
  %i.es = load ptr, ptr %i.ax, align 8, !tbaa !120
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !118 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !125 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !126 ; 3 uses
  %i.ey = icmp sgt i32 %i.ev, 0
  %i.ez = icmp sgt i32 %i.ex, 0
  %or.cond259 = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond259, label %.preheader166.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader166.preheader:                          ; preds = %bb.l
  %i.fa = zext nneg i32 %i.ex to i64              ; 6 uses
  %wide.trip.count427 = zext nneg i32 %i.ev to i64 ; 2 uses
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %scevgep791 = getelementptr i8, ptr %i.au, i64 %i.fb
  %i.fc = mul nuw nsw i64 %wide.trip.count427, %i.fa ; 2 uses
  %i.fd = shl nuw nsw i64 %i.fc, 1
  %scevgep792 = getelementptr i8, ptr %i.er, i64 %i.fd
  %scevgep793 = getelementptr i8, ptr %i.et, i64 %i.fc ; 2 uses
  %min.iters.check795 = icmp ult i32 %i.ex, 4
  %bound0797 = icmp ult ptr %i.et, %scevgep792
  %bound1798 = icmp ult ptr %i.er, %scevgep793
  %found.conflict799 = and i1 %bound0797, %bound1798
  %bound0800 = icmp ult ptr %i.et, %scevgep791
  %bound1801 = icmp ult ptr %i.au, %scevgep793
  %found.conflict802 = and i1 %bound0800, %bound1801
  %conflict.rdx803 = or i1 %found.conflict799, %found.conflict802
end_hunk_0
begin_hunk_1_@_ZN2cv16GFluidKernelImplINS_4gapi5fluid13GFluidMulCOldENS1_4core8GMulCOldELb1EE6kernelEv:_ZNSt8functionIFiRKSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  call void @__clang_call_terminate(ptr %i.bd) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit23:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit21, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GMulCOldESt5tupleIJNS_4GMatEdiEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GMulCOldESt5tupleIJNS_4GMatEdiEES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid13GFluidMulCOldESt5tupleIJNS_4GMatEdiEES5_IJS6_EELb1EE4callERKSt6vectorINS_4GArgESaISB_EERKSA_IPNS3_6BufferESaISH_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !159
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !57
  %i.n = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  tail call void @_ZN2cv4gapi5fluid13GFluidMulCOld3runERKNS1_4ViewEdiRNS1_6BufferES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, double noundef %i.i, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid13GFluidMulCOldESt5tupleIJNS_4GMatEdiEES5_IJS6_EELb1EE12init_scratchERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EERNS3_6BufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail14scratch_helperILb1ENS_4gapi5fluid13GFluidMulCOldEJNS_4GMatEdiEE14help_init_implIJLi0ELi1ELi2EEEEvRKSt6vectorINS_4util7variantIJNS9_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISH_EERKS8_INS_4GArgESaISM_EERNS3_6BufferENS0_3SeqIJXspT_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid13GFluidMulCOldESt5tupleIJNS_4GMatEdiEES5_IJS6_EELb1EE13reset_scratchERNS3_6BufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid13GFluidMulCOldESt5tupleIJNS_4GMatEdiEES5_IJS6_EELb1EE9getBorderERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.cv::util::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !80, !alias.scope !1533
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid13GFluidMulCOldESt5tupleIJNS_4GMatEdiEES5_IJS6_EELb1EE9getWindowERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid13GFluidMulCOld3runERKNS1_4ViewEdiRNS1_6BufferES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !126
  %i.e = icmp slt i32 %i.d, 5
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1032) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !49
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 35 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  br i1 %i.n, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !125  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.w = fptrunc double %1 to float               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %broadcast.splat, ptr %i.x, align 4, !tbaa !132
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.w, ptr %i.aa, align 4, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1535

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 22 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !99
  switch i32 %i.ae, label %.thread78 [
    i32 0, label %bb.i
    i32 3, label %bb.m
    i32 5, label %bb.o
  ]

bb.i:                                             ; preds = %.loopexit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !109 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !99
  switch i32 %i.ah, label %.thread78 [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 5, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !116
  %i.ak = sext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !118 ; 4 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !125 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !126 ; 3 uses
  %i.au = icmp sgt i32 %i.ar, 0
  %i.av = icmp sgt i32 %i.at, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader.preheader:                             ; preds = %bb.j
  %i.aw = zext nneg i32 %i.at to i64              ; 6 uses
  %wide.trip.count200 = zext nneg i32 %i.ar to i64 ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %scevgep392 = getelementptr i8, ptr %i.r, i64 %i.ax
  %i.ay = mul nuw nsw i64 %wide.trip.count200, %i.aw ; 2 uses
  %scevgep393 = getelementptr i8, ptr %i.an, i64 %i.ay
  %scevgep394.a = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %min.iters.check396 = icmp ult i32 %i.at, 4
  %bound0398 = icmp ult ptr %i.ap, %scevgep393
  %bound1399 = icmp ult ptr %i.an, %scevgep394.a
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0401 = icmp ult ptr %i.ap, %scevgep392
  %bound1402 = icmp ult ptr %i.r, %scevgep394.a
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict400, %found.conflict403
  %n.vec406 = and i64 %i.aw, 2147483644           ; 3 uses
  %cmp.n413 = icmp eq i64 %n.vec406, %i.aw
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge117
  %indvars.iv197 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next198, %._crit_edge117 ] ; 2 uses
  %i.az = mul nuw nsw i64 %indvars.iv197, %i.aw   ; 2 uses
  %brmerge = select i1 %min.iters.check396, i1 true, i1 %conflict.rdx404
  br i1 %brmerge, label %scalar.ph395.preheader, label %vector.body407

vector.body407:                                   ; preds = %.preheader, %vector.body407
  %index408 = phi i64 [ %index.next411, %vector.body407 ], [ 0, %.preheader ] ; 3 uses
  %i.ba = add nuw nsw i64 %index408, %i.az        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ba
  %wide.load409 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !49, !alias.scope !1566
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index408
  %wide.load410 = load <4 x float>, ptr %i.bc, align 4, !tbaa !132, !alias.scope !1567
  %i.bd = uitofp <4 x i8> %wide.load409 to <4 x float>
  %i.be = fmul <4 x float> %wide.load410, %i.bd
  %i.bf = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.be)
  %i.bg = fptosi <4 x float> %i.bf to <4 x i32>   ; 2 uses
  %i.bh = icmp slt <4 x i32> %i.bg, zeroinitializer
  %i.bi = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bg, <4 x i32> splat (i32 255))
  %i.bj = trunc nuw <4 x i32> %i.bi to <4 x i8>
  %i.bk = select <4 x i1> %i.bh, <4 x i8> zeroinitializer, <4 x i8> %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !49, !alias.scope !1568, !noalias !1569
  %index.next411 = add nuw i64 %index408, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next411, %n.vec406
  br i1 %i.bm, label %middle.block412, label %vector.body407, !llvm.loop !1540

middle.block412:                                  ; preds = %vector.body407
  br i1 %cmp.n413, label %._crit_edge117, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %.preheader, %middle.block412
  %indvars.iv192.ph = phi i64 [ %n.vec406, %middle.block412 ], [ 0, %.preheader ]
  br label %scalar.ph395

._crit_edge117:                                   ; preds = %scalar.ph395, %middle.block412
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader, !llvm.loop !5

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %scalar.ph395 ], [ %indvars.iv192.ph, %scalar.ph395.preheader ] ; 3 uses
  %i.bn = add nuw nsw i64 %indvars.iv192, %i.az   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !49
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv192
  %i.br = load float, ptr %i.bq, align 4, !tbaa !132
  %i.bs = uitofp i8 %i.bp to float
  %i.bt = fmul float %i.br, %i.bs
  %i.bu = tail call float @llvm.rint.f32(float %i.bt)
  %i.bv = fptosi float %i.bu to i32               ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  %spec.select3.i = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 255)
  %spec.select.i = trunc nuw i32 %spec.select3.i to i8
  %i.bx = select i1 %i.bw, i8 0, i8 %spec.select.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bn
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !49
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %i.aw
  br i1 %exitcond196.not, label %._crit_edge117, label %scalar.ph395, !llvm.loop !1541

bb.k:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !116
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !118 ; 4 uses
  %i.cf = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !125 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !126 ; 3 uses
  %i.cl = icmp sgt i32 %i.ci, 0
  %i.cm = icmp sgt i32 %i.ck, 0
  %or.cond119 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond119, label %.preheader79.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader79.preheader:                           ; preds = %bb.k
  %i.cn = zext nneg i32 %i.ck to i64              ; 6 uses
  %wide.trip.count190 = zext nneg i32 %i.ci to i64 ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep358 = getelementptr i8, ptr %i.r, i64 %i.co
  %i.cp = mul nuw nsw i64 %wide.trip.count190, %i.cn ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 1
  %scevgep359 = getelementptr i8, ptr %i.ce, i64 %i.cq
  %scevgep360 = getelementptr i8, ptr %i.cg, i64 %i.cp ; 2 uses
  %min.iters.check362 = icmp ult i32 %i.ck, 4
  %bound0364 = icmp ult ptr %i.cg, %scevgep359
  %bound1365 = icmp ult ptr %i.ce, %scevgep360
  %found.conflict366 = and i1 %bound0364, %bound1365
  %bound0367 = icmp ult ptr %i.cg, %scevgep358
  %bound1368 = icmp ult ptr %i.r, %scevgep360
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %found.conflict366, %found.conflict369
  %n.vec372 = and i64 %i.cn, 2147483644           ; 3 uses
  %cmp.n379 = icmp eq i64 %n.vec372, %i.cn
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge113
  %indvars.iv187 = phi i64 [ 0, %.preheader79.preheader ], [ %indvars.iv.next188, %._crit_edge113 ] ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv187, %i.cn   ; 2 uses
  %brmerge432 = select i1 %min.iters.check362, i1 true, i1 %conflict.rdx370
  br i1 %brmerge432, label %scalar.ph361.preheader, label %vector.body373

vector.body373:                                   ; preds = %.preheader79, %vector.body373
  %index374 = phi i64 [ %index.next377, %vector.body373 ], [ 0, %.preheader79 ] ; 3 uses
  %i.cs = add nuw nsw i64 %index374, %i.cr        ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cs
  %wide.load375 = load <4 x i16>, ptr %i.ct, align 2, !tbaa !131, !alias.scope !1570
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index374
  %wide.load376 = load <4 x float>, ptr %i.cu, align 4, !tbaa !132, !alias.scope !1571
  %i.cv = sitofp <4 x i16> %wide.load375 to <4 x float>
  %i.cw = fmul <4 x float> %wide.load376, %i.cv
  %i.cx = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.cw)
  %i.cy = fptosi <4 x float> %i.cx to <4 x i32>   ; 2 uses
  %i.cz = icmp slt <4 x i32> %i.cy, zeroinitializer
  %i.da = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cy, <4 x i32> splat (i32 255))
  %i.db = trunc nuw <4 x i32> %i.da to <4 x i8>
  %i.dc = select <4 x i1> %i.cz, <4 x i8> zeroinitializer, <4 x i8> %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cs
  store <4 x i8> %i.dc, ptr %i.dd, align 1, !tbaa !49, !alias.scope !1572, !noalias !1573
  %index.next377 = add nuw i64 %index374, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next377, %n.vec372
  br i1 %i.de, label %middle.block378, label %vector.body373, !llvm.loop !1546

middle.block378:                                  ; preds = %vector.body373
  br i1 %cmp.n379, label %._crit_edge113, label %scalar.ph361.preheader

scalar.ph361.preheader:                           ; preds = %.preheader79, %middle.block378
  %indvars.iv182.ph = phi i64 [ %n.vec372, %middle.block378 ], [ 0, %.preheader79 ]
  br label %scalar.ph361

._crit_edge113:                                   ; preds = %scalar.ph361, %middle.block378
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count190
  br i1 %exitcond191.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader79, !llvm.loop !6

scalar.ph361:                                     ; preds = %scalar.ph361.preheader, %scalar.ph361
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph361 ], [ %indvars.iv182.ph, %scalar.ph361.preheader ] ; 3 uses
  %i.df = add nuw nsw i64 %indvars.iv182, %i.cr   ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !131
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv182
  %i.dj = load float, ptr %i.di, align 4, !tbaa !132
  %i.dk = sitofp i16 %i.dh to float
  %i.dl = fmul float %i.dj, %i.dk
  %i.dm = tail call float @llvm.rint.f32(float %i.dl)
  %i.dn = fptosi float %i.dm to i32               ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  %spec.select3.i66 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 255)
  %spec.select.i67 = trunc nuw i32 %spec.select3.i66 to i8
  %i.dp = select i1 %i.do, i8 0, i8 %spec.select.i67
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.df
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !49
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %i.cn
  br i1 %exitcond186.not, label %._crit_edge113, label %scalar.ph361, !llvm.loop !1547

bb.l:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !116
  %i.dt = sext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !118 ; 6 uses
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !118 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !125 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !126 ; 3 uses
  %i.ed = icmp sgt i32 %i.ea, 0
  %i.ee = icmp sgt i32 %i.ec, 0
  %or.cond120 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond120, label %.preheader81.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader81.preheader:                           ; preds = %bb.l
  %i.ef = zext nneg i32 %i.ec to i64              ; 8 uses
  %wide.trip.count180 = zext nneg i32 %i.ea to i64 ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %scevgep324 = getelementptr i8, ptr %i.r, i64 %i.eg
  %i.eh = mul nuw nsw i64 %wide.trip.count180, %i.ef ; 2 uses
  %i.ei = shl nuw i64 %i.eh, 2
  %scevgep325 = getelementptr i8, ptr %i.dw, i64 %i.ei
  %scevgep326 = getelementptr i8, ptr %i.dy, i64 %i.eh ; 2 uses
  %min.iters.check328 = icmp ult i32 %i.ec, 4
  %bound0330 = icmp ult ptr %i.dy, %scevgep325
  %bound1331 = icmp ult ptr %i.dw, %scevgep326
  %found.conflict332 = and i1 %bound0330, %bound1331
  %bound0333 = icmp ult ptr %i.dy, %scevgep324
  %bound1334 = icmp ult ptr %i.r, %scevgep326
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx336 = or i1 %found.conflict332, %found.conflict335
end_hunk_1
