inline.NumInlined: 80
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17gim_contact_array14merge_contactsERKS_b:bb.a
  br i1 %i.fe, label %_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit, label %bb.w

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.sroa.11.014.i = phi float [ %.sroa.11.0.copyload.i, %.lr.ph.preheader.i.new ], [ %i.gg, %.lr.ph.i ]
  %i.ff = phi <2 x float> [ %i.er, %.lr.ph.preheader.i.new ], [ %i.gd, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.fh = load <2 x float>, ptr %i.fg, align 16, !tbaa !17
  %i.fi = fadd <2 x float> %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !17
  %i.fl = fadd float %.sroa.11.014.i, %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load <2 x float>, ptr %i.fn, align 16, !tbaa !17
  %i.fp = fadd <2 x float> %i.fi, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !17
  %i.fs = fadd float %i.fl, %i.fr
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load <2 x float>, ptr %i.fu, align 16, !tbaa !17
  %i.fw = fadd <2 x float> %i.fp, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !17
  %i.fz = fadd float %i.fs, %i.fy
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load <2 x float>, ptr %i.gb, align 16, !tbaa !17
  %i.gd = fadd <2 x float> %i.fw, %i.gc           ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !17
  %i.gg = fadd float %i.fz, %i.gf                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !40

bb.w:                                             ; preds = %._crit_edge.i
  %i.gh = fmul float %i.fd, 5.000000e-01
  %i.gi = bitcast float %i.fd to i32
  %i.gj = lshr i32 %i.gi, 1
  %i.gk = sub nsw i32 1597463007, %i.gj
  %i.gl = bitcast i32 %i.gk to float              ; 3 uses
  %i.gm = fneg float %i.gl
  %i.gn = fmul float %i.gh, %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gl, float 1.500000e+00)
  %i.gp = fmul float %i.go, %i.gl                 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %.lcssa137, %i.gr
  %i.gt = fmul float %.lcssa, %i.gp
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gt, i64 0
  store <2 x float> %i.gs, ptr %i.eq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !16
  br label %_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit

_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit: ; preds = %bb.w, %._crit_edge.i, %bb.v
  %.146 = phi i32 [ %.04589, %bb.v ], [ 0, %._crit_edge.i ], [ 0, %bb.w ]
  %i.gu = load i32, ptr %i.cq, align 4, !tbaa !14 ; 4 uses
  %i.gv = load i32, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %.not.i.i73 = icmp ugt i32 %i.gu, %i.gv
  br i1 %.not.i.i73, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i76, label %bb.x

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i76: ; preds = %_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit
  %.pre.i77 = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.ac

bb.x:                                             ; preds = %_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit
  store i32 %i.gu, ptr %i.a, align 8, !tbaa !9
  %i.gw = shl i32 %i.gv, 1
  %i.gx = add i32 %i.gw, 4                        ; 4 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cq, align 4, !tbaa !14
  %i.gz = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !33, !noundef !33
  invoke void @_Z8gim_freePv(ptr noundef nonnull %i.gz)
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not.i.i.i74 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i.i74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ha = load ptr, ptr %0, align 8, !tbaa !13
  %i.hb = zext i32 %i.gu to i64
  %i.hc = mul nuw nsw i64 %i.hb, 48
  %i.hd = zext i32 %i.gx to i64
  %i.he = mul nuw nsw i64 %i.hd, 48
  %i.hf = invoke noundef ptr @_Z11gim_reallocPvmm(ptr noundef %i.ha, i64 noundef %i.hc, i64 noundef %i.he)
          to label %.noexc79 unwind label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.hg = zext i32 %i.gx to i64
  %i.hh = mul nuw nsw i64 %i.hg, 48
  %i.hi = invoke noundef ptr @_Z9gim_allocm(i64 noundef %i.hh)
          to label %.noexc79 unwind label %.loopexit

.noexc79:                                         ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i75 = phi ptr [ %i.hf, %bb.aa ], [ %i.hi, %bb.ab ] ; 2 uses
  store ptr %storemerge.i.i.i75, ptr %0, align 8, !tbaa !13
  store i32 %i.gx, ptr %i.cq, align 4, !tbaa !14
  %.pre104 = load i32, ptr %i.a, align 8, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc79, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i76
  %i.hj = phi i32 [ %i.gv, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i76 ], [ %.pre104, %.noexc79 ]
  %i.hk = phi ptr [ %.pre.i77, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i76 ], [ %storemerge.i.i.i75, %.noexc79 ]
  %i.hl = zext i32 %i.hj to i64
  %i.hm = getelementptr inbounds nuw [48 x i8], ptr %i.hk, i64 %i.hl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.hm, ptr noundef nonnull align 4 dereferenceable(48) %i.dy, i64 48, i1 false), !tbaa.struct !15
  %i.hn = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.a, align 8, !tbaa !9
  %i.hp = load ptr, ptr %0, align 8, !tbaa !13
  %i.hq = zext i32 %i.hn to i64
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hp, i64 %i.hq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.q, %bb.t, %bb.u, %bb.s, %bb.ac
  %.247 = phi i32 [ 0, %bb.q ], [ %i.eo, %bb.u ], [ %.04589, %bb.t ], [ %.04589, %bb.s ], [ %.146, %bb.ac ]
  %.143 = phi ptr [ %.04291, %bb.q ], [ %.04291, %bb.u ], [ %.04291, %bb.t ], [ %.04291, %bb.s ], [ %i.hr, %bb.ac ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.hs = icmp samesign ult i64 %indvars.iv.next100, %i.dr
  br i1 %i.hs, label %.lr.ph93, label %._crit_edge94, !llvm.loop !41

._crit_edge94:                                    ; preds = %bb.ad, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ht = icmp eq i32 %i.dm, 0
  br i1 %i.ht, label %bb.ae, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i.i

_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i.i: ; preds = %._crit_edge94
  store i32 0, ptr %i.ci, align 8, !tbaa !24
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge94, %_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i.i
  invoke void @_Z8gim_freePv(ptr noundef nonnull %i.cj)
          to label %_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  tail call void @__clang_call_terminate(ptr %i.hv) #11
  unreachable

_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev.exit:        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev.exit, %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit
  ret void

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.h, %bb.ah, %bb.g
  %.pn56.pn = phi { ptr, i32 } [ %i.ce, %bb.g ], [ %i.cf, %bb.h ], [ %.pn, %bb.ah ]
  call void @_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn56.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 2 uses
  %.not25 = icmp eq i32 %i.a, 0
  br i1 %.not25, label %.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph.i.preheader

.preheader:                                       ; preds = %.thread.loopexit.i, %bb.a
  %i.d = icmp ugt i32 %1, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %.thread.loopexit.i
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.i.preheader.preheader ], [ %i.f, %.thread.loopexit.i ] ; 2 uses
  %i.f = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 4              ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.02229.i = phi i32 [ %.021.i, %bb.d ], [ %i.j, %.lr.ph.i.preheader ] ; 3 uses
  %i.k = shl nuw i32 %.02229.i, 1                 ; 4 uses
  %i.l = icmp slt i32 %i.k, %1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = load i32, ptr %i.n, align 4, !tbaa !29
  %i.r = sub i32 %i.p, %i.q
  %i.s = lshr i32 %i.r, 31
  %spec.select.i = or disjoint i32 %i.s, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i32 [ %i.k, %.lr.ph.i ], [ %spec.select.i, %bb.b ] ; 4 uses
  %i.t = sext i32 %.021.i to i64
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = sub i32 %i.i, %i.w
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %.thread.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i32 %.02229.i, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load i64, ptr %i.v, align 4
  store i64 %i.ac, ptr %i.ab, align 4
  %.not.i = icmp ugt i32 %.021.i, %i.a
  br i1 %.not.i, label %.thread.loopexit.i, label %.lr.ph.i

.thread.loopexit.i:                               ; preds = %bb.d, %bb.c
  %.022.lcssa.ph.i = phi i32 [ %.021.i, %bb.d ], [ %.02229.i, %bb.c ]
  %.pre.i = add i32 %.022.lcssa.ph.i, -1
  %.pre32.i = zext i32 %.pre.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre32.i
  store i64 %i.h, ptr %i.ad, align 4
  %.not.wide = icmp eq i64 %i.f, 0
  br i1 %.not.wide, label %.preheader, label %.lr.ph.i.preheader, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24
  %indvars.iv28 = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next29, %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24 ]
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next29 to i32  ; 3 uses
  %i.ae = and i64 %indvars.iv.next29, 4294967295
  %i.af = load i64, ptr %0, align 4
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 4
  store i64 %i.ah, ptr %0, align 4
  store i64 %i.af, ptr %i.ag, align 4
  %i.ai = load i64, ptr %0, align 4               ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %indvars, 1                    ; 2 uses
  %.not28.i13 = icmp eq i32 %i.ak, 0
  br i1 %.not28.i13, label %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph, %bb.g
  %.02229.i15 = phi i32 [ %.021.i16, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %i.al = shl nuw i32 %.02229.i15, 1              ; 4 uses
  %i.am = icmp slt i32 %i.al, %indvars
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i14
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.as = sub i32 %i.aq, %i.ar
  %i.at = lshr i32 %i.as, 31
  %spec.select.i23 = or disjoint i32 %i.at, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i14
  %.021.i16 = phi i32 [ %i.al, %.lr.ph.i14 ], [ %spec.select.i23, %bb.e ] ; 4 uses
  %i.au = sext i32 %.021.i16 to i64
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = sub i32 %i.aj, %i.ax
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %.thread.loopexit.i17

bb.g:                                             ; preds = %bb.f
  %i.ba = add nsw i32 %.02229.i15, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load i64, ptr %i.aw, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %.not.i22 = icmp ugt i32 %.021.i16, %i.ak
  br i1 %.not.i22, label %.thread.loopexit.i17, label %.lr.ph.i14

.thread.loopexit.i17:                             ; preds = %bb.g, %bb.f
  %.022.lcssa.ph.i18 = phi i32 [ %.021.i16, %bb.g ], [ %.02229.i15, %bb.f ]
  %.pre.i19 = add i32 %.022.lcssa.ph.i18, -1
  %.pre32.i20 = zext i32 %.pre.i19 to i64
  br label %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24

_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24: ; preds = %.lr.ph, %.thread.loopexit.i17
  %.pre-phi33.i21 = phi i64 [ %.pre32.i20, %.thread.loopexit.i17 ], [ 0, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi33.i21
  store i64 %i.ai, ptr %i.be, align 4
  %i.bf = icmp ugt i32 %indvars, 1
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i

_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !24
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i

_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i:  ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.e = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE12clear_memoryEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i
  invoke void @_Z8gim_freePv(ptr noundef nonnull %i.e)
          to label %_ZN9gim_arrayI15GIM_RSORT_TOKENE12clear_memoryEv.exit unwind label %bb.c

_ZN9gim_arrayI15GIM_RSORT_TOKENE12clear_memoryEv.exit: ; preds = %bb.b, %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #11
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17gim_contact_array21merge_contacts_uniqueERKS_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit, label %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i

_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !9
  br label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit

_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit:        ; preds = %bb.a, %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.not, label %bb.c, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !9
  %i.j = tail call noundef ptr @_Z9gim_allocm(i64 noundef 192) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  store i32 4, ptr %i.h, align 4, !tbaa !14
  %.pre = load i32, ptr %i.a, align 8, !tbaa !9
  %i.k = zext i32 %.pre to i64
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i, %bb.c
  %i.l = phi i64 [ 0, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.k, %bb.c ]
  %i.m = phi ptr [ %.pre.i, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.j, %bb.c ]
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(48) %i.g, i64 48, i1 false), !tbaa.struct !15
  %i.o = load i32, ptr %i.a, align 8, !tbaa !9
  %i.p = add i32 %i.o, 1
end_hunk_0
