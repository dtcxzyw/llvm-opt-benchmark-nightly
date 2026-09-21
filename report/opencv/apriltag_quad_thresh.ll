Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/apriltag_quad_thresh?download=true
inline.NumInlined: 743
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2cv5aruco16quad_segment_aggEiPNS0_11line_fit_ptEPi:_ZN2cv10AutoBufferINS_5aruco7segmentELm0EE10deallocateEv.exit.i.i
  %.050120 = phi i32 [ 0, %.lr.ph122.preheader.new ], [ %.1.1, %bb.af ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %niter.next.1, %bb.af ]
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %indvars.iv129
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !111
  %.not = icmp eq i32 %i.dv, 0
  br i1 %.not, label %.lr.ph122.1, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph122
  %i.dw = add nsw i32 %.050120, 1
  %i.dx = sext i32 %.050120 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dx
  %i.dz = trunc nuw nsw i64 %indvars.iv129 to i32
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !23
  br label %.lr.ph122.1

.lr.ph122.1:                                      ; preds = %.lr.ph122, %bb.ad
  %.1 = phi i32 [ %i.dw, %bb.ad ], [ %.050120, %.lr.ph122 ] ; 3 uses
  %indvars.iv.next130 = or disjoint i64 %indvars.iv129, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %indvars.iv.next130
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !111
  %.not.1 = icmp eq i32 %i.eb, 0
  br i1 %.not.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph122.1
  %i.ec = add nsw i32 %.1, 1
  %i.ed = sext i32 %.1 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ed
  %i.ef = trunc nuw nsw i64 %indvars.iv.next130 to i32
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph122.1
  %.1.1 = phi i32 [ %i.ec, %bb.ae ], [ %.1, %.lr.ph122.1 ] ; 2 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph122, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph122.epil.preheader

.lr.ph122.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph122.preheader
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next130.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.050120.epil.init = phi i32 [ 0, %.lr.ph122.preheader ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod144 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod144)
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %indvars.iv129.epil.init
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !111
  %.not.epil = icmp eq i32 %i.eh, 0
  br i1 %.not.epil, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph122.epil.preheader
  %i.ei = sext i32 %.050120.epil.init to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ei
  %i.ek = trunc nuw nsw i64 %indvars.iv129.epil.init to i32
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.ag, %.lr.ph122.epil.preheader, %.preheader, %.thread
  %.269 = phi i32 [ 0, %.thread ], [ 1, %.preheader ], [ 1, %.lr.ph122.epil.preheader ], [ 1, %bb.ag ], [ 1, %.loopexit.loopexit.unr-lcssa ]
  %i.el = load ptr, ptr %4, align 8, !tbaa !102   ; 3 uses
  %.not.i.i = icmp eq ptr %i.el, %i.p
  %i.em = icmp eq ptr %i.el, null
  %or.cond.i = or i1 %.not.i.i, %i.em
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.el) #23
  br label %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit

_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit: ; preds = %.loopexit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.en = load ptr, ptr %3, align 8, !tbaa !98    ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.en, %i.i
  %i.eo = icmp eq ptr %i.en, null
  %or.cond.i85 = or i1 %.not.i.i84, %i.eo
  br i1 %or.cond.i85, label %_ZN2cv10AutoBufferINS_5aruco13remove_vertexELm0EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.en) #23
  br label %_ZN2cv10AutoBufferINS_5aruco13remove_vertexELm0EED2Ev.exit

_ZN2cv10AutoBufferINS_5aruco13remove_vertexELm0EED2Ev.exit: ; preds = %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 %.269

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ab, %bb.ac, %bb.h
  %.pn79 = phi { ptr, i32 } [ %lpad.phi, %bb.h ], [ %.pn76, %bb.ab ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dt, %bb.ac ] ; 2 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !102   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.ep, %i.p
  %i.eq = icmp eq ptr %i.ep, null
  %or.cond.i87 = or i1 %.not.i.i86, %i.eq
  br i1 %or.cond.i87, label %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit88, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.ep) #23
  br label %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit88

_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit88: ; preds = %bb.ak, %bb.aj, %bb.e
  %.pn79.pn = phi { ptr, i32 } [ %i.al, %bb.e ], [ %.pn79, %bb.aj ], [ %.pn79, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.er = load ptr, ptr %3, align 8, !tbaa !98    ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.er, %i.i
  %i.es = icmp eq ptr %i.er, null
  %or.cond.i90 = or i1 %.not.i.i89, %i.es
  br i1 %or.cond.i90, label %_ZN2cv10AutoBufferINS_5aruco13remove_vertexELm0EED2Ev.exit91, label %bb.al

bb.al:                                            ; preds = %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit88
  call void @_ZdaPv(ptr noundef nonnull %i.er) #23
  br label %_ZN2cv10AutoBufferINS_5aruco13remove_vertexELm0EED2Ev.exit91

_ZN2cv10AutoBufferINS_5aruco13remove_vertexELm0EED2Ev.exit91: ; preds = %_ZN2cv10AutoBufferINS_5aruco7segmentELm0EED2Ev.exit88, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn79.pn
}

declare noundef ptr @_ZN2cv5aruco15zmaxheap_createEm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN2cv5aruco12zmaxheap_addEPNS0_8zmaxheapEPvf(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2cv5aruco19zmaxheap_remove_maxEPNS0_8zmaxheapEPvPf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN2cv5aruco16zmaxheap_destroyEPNS0_8zmaxheapE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2cv5aruco8fit_quadERKNS0_18DetectorParametersENS_3MatEPNS0_6zarrayEPNS0_5sQuadE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::AutoBuffer.14", align 8 ; 9 uses
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x [4 x double]], align 16      ; 18 uses
  %i.c = alloca double, align 8                   ; 17 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv5aruco8fit_quadERKNS0_18DetectorParametersENS_3MatEPNS0_6zarrayEPNS0_5sQuadE, ptr noundef nonnull @.str.1, i32 noundef 580) #22
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ap

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %.val320 = load i32, ptr %i.k, align 8, !tbaa !31 ; 5 uses
  %i.l = icmp slt i32 %.val320, 4
  br i1 %i.l, label %bb.ao, label %.preheader373

.preheader373:                                    ; preds = %bb.g
  %.val331 = load i64, ptr %2, align 8, !tbaa !32 ; 4 uses
  %i.m = getelementptr i8, ptr %2, i64 16         ; 6 uses
  %.val332 = load ptr, ptr %i.m, align 8, !tbaa !33 ; 11 uses
  %wide.trip.count = zext nneg i32 %.val320 to i64 ; 6 uses
  %min.iters.check = icmp ugt i32 %.val320, 7
  %ident.check.not = icmp eq i64 %.val331, 1
  %or.cond500 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond500, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader373
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi487 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi488 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi489 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi490 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %vec.phi491 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %vec.phi492 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi493 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.bx, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 7
  %i.ac = load i16, ptr %i.n, align 4, !tbaa !36
  %i.ad = load i16, ptr %i.p, align 4, !tbaa !36
  %i.ae = load i16, ptr %i.r, align 4, !tbaa !36
  %i.af = load i16, ptr %i.t, align 4, !tbaa !36
  %i.ag = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 2
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 3 ; 2 uses
  %i.ak = load i16, ptr %i.v, align 4, !tbaa !36
  %i.al = load i16, ptr %i.x, align 4, !tbaa !36
  %i.am = load i16, ptr %i.z, align 4, !tbaa !36
  %i.an = load i16, ptr %i.ab, align 4, !tbaa !36
  %i.ao = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %i.ap = insertelement <4 x i16> %i.ao, i16 %i.al, i64 1
  %i.aq = insertelement <4 x i16> %i.ap, i16 %i.am, i64 2
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.an, i64 3 ; 2 uses
  %i.as = zext <4 x i16> %i.aj to <4 x i32>
  %i.at = zext <4 x i16> %i.ar to <4 x i32>
  %7 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi, <4 x i16> %i.aj) ; 2 uses
  %8 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi487, <4 x i16> %i.ar) ; 2 uses
  %i.au = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi488, <4 x i32> %i.as) ; 2 uses
  %i.av = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi489, <4 x i32> %i.at) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %i.be = load i16, ptr %i.aw, align 2, !tbaa !37
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !37
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !37
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !37
  %i.bi = insertelement <4 x i16> poison, i16 %i.be, i64 0
  %i.bj = insertelement <4 x i16> %i.bi, i16 %i.bf, i64 1
  %i.bk = insertelement <4 x i16> %i.bj, i16 %i.bg, i64 2
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 3 ; 2 uses
  %i.bm = load i16, ptr %i.ba, align 2, !tbaa !37
  %i.bn = load i16, ptr %i.bb, align 2, !tbaa !37
  %i.bo = load i16, ptr %i.bc, align 2, !tbaa !37
  %i.bp = load i16, ptr %i.bd, align 2, !tbaa !37
  %i.bq = insertelement <4 x i16> poison, i16 %i.bm, i64 0
  %i.br = insertelement <4 x i16> %i.bq, i16 %i.bn, i64 1
  %i.bs = insertelement <4 x i16> %i.br, i16 %i.bo, i64 2
  %i.bt = insertelement <4 x i16> %i.bs, i16 %i.bp, i64 3 ; 2 uses
  %i.bu = zext <4 x i16> %i.bl to <4 x i32>
  %i.bv = zext <4 x i16> %i.bt to <4 x i32>
  %9 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi490, <4 x i16> %i.bl) ; 2 uses
  %10 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi491, <4 x i16> %i.bt) ; 2 uses
  %i.bw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi492, <4 x i32> %i.bu) ; 2 uses
  %i.bx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi493, <4 x i32> %i.bv) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %7, <4 x i16> %8)
  %11 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax)
  %12 = zext i16 %11 to i32                       ; 2 uses
  %rdx.minmax494 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.bz = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax494) ; 2 uses
  %rdx.minmax495 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %9, <4 x i16> %10)
  %13 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax495)
  %14 = zext i16 %13 to i32                       ; 2 uses
  %rdx.minmax496 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bw, <4 x i32> %i.bx)
  %i.ca = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax496) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader373, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader373 ], [ %n.vec, %middle.block ] ; 4 uses
  %.0277379.ph = phi i32 [ 0, %.preheader373 ], [ %12, %middle.block ] ; 2 uses
  %.0278378.ph = phi i32 [ 2147483647, %.preheader373 ], [ %i.bz, %middle.block ] ; 2 uses
  %.0280377.ph = phi i32 [ 0, %.preheader373 ], [ %14, %middle.block ] ; 2 uses
  %.0281376.ph = phi i32 [ 2147483647, %.preheader373 ], [ %i.ca, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = mul i64 %.val331, %indvars.iv.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !37
  %i.cf = load i16, ptr %i.cc, align 4, !tbaa !36
  %i.cg = zext i16 %i.ce to i32                   ; 2 uses
  %i.ch = zext i16 %i.cf to i32                   ; 2 uses
  %.0277..prol = tail call i32 @llvm.umax.i32(i32 %.0277379.ph, i32 %i.ch) ; 2 uses
  %i.ci = tail call i32 @llvm.umin.i32(i32 %.0278378.ph, i32 %i.ch) ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %.0280377.ph, i32 %i.cg) ; 2 uses
  %i.ck = tail call i32 @llvm.umin.i32(i32 %.0281376.ph, i32 %i.cg) ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0277..lcssa516.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %.0277..prol, %scalar.ph.prol ]
  %.lcssa515.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %.lcssa514.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.lcssa513.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.0277379.unr = phi i32 [ %.0277379.ph, %scalar.ph.preheader ], [ %.0277..prol, %scalar.ph.prol ]
  %.0278378.unr = phi i32 [ %.0278378.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %.0280377.unr = phi i32 [ %.0280377.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.0281376.unr = phi i32 [ %.0281376.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %i.cl = add nsw i64 %wide.trip.count, -1
  %i.cm = icmp eq i64 %indvars.iv.ph, %i.cl
  br i1 %i.cm, label %.lr.ph, label %scalar.ph

.lr.ph:                                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.0277..lcssa = phi i32 [ %12, %middle.block ], [ %.0277..lcssa516.unr, %scalar.ph.prol.loopexit ], [ %.0277..1, %scalar.ph ]
  %.lcssa486 = phi i32 [ %i.bz, %middle.block ], [ %.lcssa515.unr, %scalar.ph.prol.loopexit ], [ %i.dl, %scalar.ph ]
  %.lcssa485 = phi i32 [ %14, %middle.block ], [ %.lcssa514.unr, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ]
  %.lcssa484 = phi i32 [ %i.ca, %middle.block ], [ %.lcssa513.unr, %scalar.ph.prol.loopexit ], [ %i.dn, %scalar.ph ]
  %i.cn = add nuw nsw i32 %.0277..lcssa, %.lcssa486
  %i.co = add nuw nsw i32 %.lcssa485, %.lcssa484
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = uitofp nneg i32 %i.cn to double
  %i.cr = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cp, i64 1
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> splat (double 5.000000e-01), <2 x double> <double 5.118000e-02, double -2.858100e-02>)
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0277379 = phi i32 [ %.0277..1, %scalar.ph ], [ %.0277379.unr, %scalar.ph.prol.loopexit ]
  %.0278378 = phi i32 [ %i.dl, %scalar.ph ], [ %.0278378.unr, %scalar.ph.prol.loopexit ]
  %.0280377 = phi i32 [ %i.dm, %scalar.ph ], [ %.0280377.unr, %scalar.ph.prol.loopexit ]
  %.0281376 = phi i32 [ %i.dn, %scalar.ph ], [ %.0281376.unr, %scalar.ph.prol.loopexit ]
  %i.cu = mul i64 %.val331, %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !37
  %i.cy = load i16, ptr %i.cv, align 4, !tbaa !36
  %i.cz = zext i16 %i.cx to i32                   ; 2 uses
  %i.da = zext i16 %i.cy to i32                   ; 2 uses
  %.0277. = tail call i32 @llvm.umax.i32(i32 %.0277379, i32 %i.da)
  %i.db = tail call i32 @llvm.umin.i32(i32 %.0278378, i32 %i.da)
  %i.dc = tail call i32 @llvm.umax.i32(i32 %.0280377, i32 %i.cz)
  %i.dd = tail call i32 @llvm.umin.i32(i32 %.0281376, i32 %i.cz)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.de = mul i64 %.val331, %indvars.iv.next
  %i.df = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !37
  %i.di = load i16, ptr %i.df, align 4, !tbaa !36
  %i.dj = zext i16 %i.dh to i32                   ; 2 uses
  %i.dk = zext i16 %i.di to i32                   ; 2 uses
  %.0277..1 = tail call i32 @llvm.umax.i32(i32 %.0277., i32 %i.dk) ; 2 uses
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.db, i32 %i.dk) ; 2 uses
  %i.dm = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 %i.dj) ; 2 uses
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 %i.dj) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.lr.ph, label %scalar.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.h
  %i.do = fcmp olt double %i.eh, 0.000000e+00
  br i1 %i.do, label %bb.ao, label %.lr.ph386.preheader

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv403 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next404, %bb.h ] ; 2 uses
  %.0285381 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.eh, %bb.h ]
  %.val329 = load i64, ptr %2, align 8, !tbaa !32
  %.val330 = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.dp = mul i64 %.val329, %indvars.iv403
  %i.dq = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.dp ; 3 uses
  %i.dr = load <2 x i16>, ptr %i.dq, align 4, !tbaa !40
  %i.ds = uitofp <2 x i16> %i.dr to <2 x double>
  %i.dt = fsub <2 x double> %i.ds, %i.ct          ; 3 uses
  %i.du = fptrunc <2 x double> %i.dt to <2 x float> ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = extractelement <2 x float> %i.du, i64 1
  %i.dx = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.dw, float noundef %i.dv)
  %i.dy = fmul float %i.dx, f0x3C8EFA35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store float %i.dy, ptr %i.dz, align 4, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.eb = load <2 x i16>, ptr %i.ea, align 4, !tbaa !40
  %i.ec = sitofp <2 x i16> %i.eb to <2 x double>  ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.dt, %i.ec
  %i.ed = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ee = extractelement <2 x double> %i.dt, i64 0
  %i.ef = extractelement <2 x double> %i.ec, i64 0
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %i.ed)
  %i.eh = fadd double %.0285381, %i.eg            ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count
  br i1 %exitcond407.not, label %._crit_edge, label %bb.h, !llvm.loop !116

.lr.ph386.preheader:                              ; preds = %._crit_edge
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !33
  tail call fastcc void @_ZN2cv5arucoL6ptsortEPNS0_2ptEi(ptr noundef %i.ei, i32 noundef %.val320)
  %.val328 = load ptr, ptr %i.m, align 8, !tbaa !33
  %wide.trip.count411 = zext nneg i32 %.val320 to i64
  br label %.lr.ph386

._crit_edge387:                                   ; preds = %bb.m
  store i32 %.1288, ptr %i.k, align 8, !tbaa !31
  %i.ej = icmp slt i32 %.1288, 4
  br i1 %i.ej, label %bb.ao, label %bb.n

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %bb.m
  %indvars.iv408 = phi i64 [ 1, %.lr.ph386.preheader ], [ %indvars.iv.next409, %bb.m ] ; 3 uses
  %.0287384 = phi i32 [ 1, %.lr.ph386.preheader ], [ %.1288, %bb.m ] ; 4 uses
  %.0348382 = phi ptr [ %.val328, %.lr.ph386.preheader ], [ %i.el, %bb.m ] ; 2 uses
  %.val325 = load i64, ptr %2, align 8, !tbaa !32 ; 2 uses
  %.val326 = load ptr, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %i.ek = mul i64 %.val325, %indvars.iv408
  %i.el = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.ek ; 4 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !36
  %i.en = load i16, ptr %.0348382, align 4, !tbaa !36
  %.not311 = icmp eq i16 %i.em, %i.en
  br i1 %.not311, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph386
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %.0348382, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !37
  %.not312 = icmp eq i16 %i.ep, %i.er
  br i1 %.not312, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph386
  %i.es = zext i32 %.0287384 to i64
  %.not313 = icmp eq i64 %indvars.iv408, %i.es
  br i1 %.not313, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.et = sext i32 %.0287384 to i64
  %i.eu = mul i64 %.val325, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ev, ptr noundef nonnull align 4 dereferenceable(12) %i.el, i64 12, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ew = add nsw i32 %.0287384, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1288 = phi i32 [ %i.ew, %bb.l ], [ %.0287384, %bb.i ] ; 10 uses
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge387, label %.lr.ph386, !llvm.loop !117

bb.n:                                             ; preds = %._crit_edge387
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ex = zext nneg i32 %.1288 to i64             ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ey, ptr %6, align 8, !tbaa !121
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %.1288, 64
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !122
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fa = mul nuw nsw i64 %i.ex, 48
  %i.fb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fa) #24 ; 2 uses
  store ptr %i.fb, ptr %6, align 8, !tbaa !121
  %.pre = load i64, ptr %i.ez, align 8, !tbaa !122
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fc = phi i64 [ %i.ex, %bb.n ], [ %.pre, %bb.o ]
  %i.fd = phi ptr [ %i.ey, %bb.n ], [ %i.fb, %bb.o ] ; 13 uses
  %i.fe = mul i64 %i.fc, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fd, i8 0, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count417 = zext nneg i32 %.1288 to i64
  %.val321.peel = load i64, ptr %2, align 8, !tbaa !32
  %.val322.peel = load ptr, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %i.fi = load <2 x i16>, ptr %.val322.peel, align 4, !tbaa !40
  %i.fj = uitofp <2 x i16> %i.fi to <2 x double>
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double 5.000000e-01)) ; 5 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 0
  %i.fm = call double @llvm.floor.f64(double %i.fl)
  %i.fn = fptosi double %i.fm to i32              ; 5 uses
  %i.fo = extractelement <2 x double> %i.fk, i64 1 ; 2 uses
  %i.fp = call double @llvm.floor.f64(double %i.fo)
  %i.fq = fptosi double %i.fp to i32              ; 4 uses
  %.not369.peel = icmp eq i32 %i.fn, 0
  br i1 %.not369.peel, label %.peel.next, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fr = add nuw nsw i32 %i.fn, 1
  %i.fs = load i32, ptr %i.ff, align 4, !tbaa !48 ; 4 uses
  %i.ft = icmp slt i32 %i.fr, %i.fs
  %i.fu = icmp ne i32 %i.fq, 0
  %or.cond.peel = and i1 %i.fu, %i.ft
  br i1 %or.cond.peel, label %bb.r, label %.peel.next

bb.r:                                             ; preds = %bb.q
  %i.fv = add nuw nsw i32 %i.fq, 1                ; 2 uses
  %i.fw = load i32, ptr %i.fg, align 8, !tbaa !49
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.s, label %.peel.next

bb.s:                                             ; preds = %bb.r
  %i.fy = load ptr, ptr %i.fh, align 8, !tbaa !50 ; 3 uses
  %i.fz = mul nsw i32 %i.fs, %i.fq
  %i.ga = add nuw nsw i32 %i.fz, %i.fn
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !18
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr i8, ptr %i.gc, i64 -1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !18
  %i.gi = zext i8 %i.gh to i32
  %i.gj = sub nsw i32 %i.gf, %i.gi                ; 2 uses
  %i.gk = mul nsw i32 %i.fs, %i.fv
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !66

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
  %i.af = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.af, ptr %.09.i.i.i.i.i, align 4
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
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !80, !alias.scope !242, !noalias !241
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !80, !alias.scope !241, !noalias !242
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75, !alias.scope !242, !noalias !241
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !75, !alias.scope !241, !noalias !242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !242, !noalias !241
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
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !80, !alias.scope !244, !noalias !243
  store <2 x ptr> %i.ap, ptr %.012.i.i.i29, align 8, !tbaa !80, !alias.scope !243, !noalias !244
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75, !alias.scope !244, !noalias !243
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !75, !alias.scope !243, !noalias !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !244, !noalias !243
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
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v8i8(<8 x i8>) #3

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
!63 = !{!"p1 _ZTSN2cv6Point_IiEE", !12, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!64, !63, i64 8}
!68 = !{!64, !63, i64 16}
!69 = !{!63, !63, i64 0}
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
end_hunk_1
