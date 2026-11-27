Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEE:bb.a
  %i.gd = mul nsw i32 %i.gc, %i.fy
  %i.ge = sdiv i32 %i.gd, %i.fz
  %i.gf = sext i32 %i.ge to i64
  %.not65.1 = icmp slt i64 %indvars.iv.1, %i.gf
  br i1 %.not65.1, label %..critedge.1_crit_edge, label %bb.ap, !llvm.loop !272

..critedge.1_crit_edge:                           ; preds = %.lr.ph156
  br label %.critedge.1, !llvm.loop !272

.critedge.1:                                      ; preds = %bb.ap, %..critedge.1_crit_edge, %.preheader.1
  %.1.lcssa.1 = phi i32 [ %i.gb, %.preheader.1 ], [ %.1.1155, %..critedge.1_crit_edge ], [ %i.gb, %bb.ap ] ; 2 uses
  %i.gg = mul nsw i32 %.1.lcssa.1, %i.ek
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.1
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.gi = load i32, ptr %i.k, align 4, !tbaa !10  ; 3 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next.1, %i.gj
  br i1 %i.gk, label %.preheader.1, label %.loopexit144, !llvm.loop !273

.loopexit144:                                     ; preds = %.critedge.1, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1
  %i.gl = phi i32 [ %i.ft, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1 ], [ %i.gi, %.critedge.1 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre89, i64 80
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !10 ; 4 uses
  %i.go = mul nsw i32 %i.gn, %i.ek
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.loopexit144
  %storemerge.1 = phi i32 [ 0, %.loopexit144 ], [ %i.gt, %bb.aq ] ; 5 uses
  %i.gp = mul nsw i32 %i.gl, %storemerge.1
  %i.gq = sdiv i32 %i.gp, %i.gn
  %i.gr = icmp slt i32 %i.gq, %9
  %i.gs = icmp slt i32 %storemerge.1, %i.gn
  %or.cond.1 = and i1 %i.gs, %i.gr
  %i.gt = add nuw nsw i32 %storemerge.1, 1
  br i1 %or.cond.1, label %bb.aq, label %.critedge2.1, !llvm.loop !274

.critedge2.1:                                     ; preds = %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre89, i64 188
  store i32 %storemerge.1, ptr %i.gu, align 4, !tbaa !10
  %i.gv = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not64.1 = icmp eq ptr %i.gv, null
  br i1 %.not64.1, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.critedge2.1
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gv, ptr noundef nonnull @.str.5, i32 noundef 121, i32 noundef %storemerge.1) #7 ; 0 uses
  %.pre90 = load ptr, ptr %i.a, align 8, !tbaa !148 ; 2 uses
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %.pre90, i64 80
  %.pre93 = load i32, ptr %.phi.trans.insert92, align 4, !tbaa !10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge2.1
  %i.gx = phi i32 [ %.pre93, %bb.ar ], [ %i.gn, %.critedge2.1 ] ; 2 uses
  %i.gy = phi ptr [ %.pre90, %bb.ar ], [ %.pre89, %.critedge2.1 ] ; 6 uses
  %i.gz = icmp sgt i32 %i.gx, 1
  br i1 %i.gz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 188
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !10
  %i.hc = icmp sgt i32 %i.hb, %i.gx
  br i1 %i.hc, label %bb.ai, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 112 ; 2 uses
  %i.he = load i32, ptr %i.d, align 4, !tbaa !10  ; 4 uses
  %i.hf = sext i32 %i.he to i64                   ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 120 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !151 ; 2 uses
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !152 ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 2                 ; 3 uses
  %i.hn = icmp ult i64 %i.hm, %i.hf
  br i1 %i.hn, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ho = icmp ugt i64 %i.hm, %i.hf
  br i1 %i.ho, label %bb.aw, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

bb.aw:                                            ; preds = %bb.av
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hf ; 2 uses
  %.not.i.i66.2 = icmp eq ptr %i.hh, %i.hp
  br i1 %.not.i.i66.2, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.aw
  store ptr %i.hp, ptr %i.hg, align 8, !tbaa !151
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

bb.ax:                                            ; preds = %bb.au
  %i.hq = sub nuw nsw i64 %i.hf, %i.hm
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 noundef %i.hq)
  %.pre94 = load i32, ptr %i.d, align 4, !tbaa !10
  %.pre95.pre = load ptr, ptr %i.a, align 8, !tbaa !148
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

_ZNSt6vectorIiSaIiEE6resizeEm.exit.2:             ; preds = %bb.ax, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.aw, %bb.av
  %.pre95 = phi ptr [ %.pre95.pre, %bb.ax ], [ %i.gy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2 ], [ %i.gy, %bb.aw ], [ %i.gy, %bb.av ] ; 5 uses
  %i.hr = phi i32 [ %.pre94, %bb.ax ], [ %i.he, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2 ], [ %i.he, %bb.aw ], [ %i.he, %bb.av ] ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.preheader.lr.ph.2, label %.loopexit

.preheader.lr.ph.2:                               ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre95, i64 76
  %i.hu = getelementptr inbounds nuw i8, ptr %.pre95, i64 112
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !152
  br label %.preheader.2

.preheader.2:                                     ; preds = %.critedge.2, %.preheader.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader.lr.ph.2 ], [ %indvars.iv.next.2, %.critedge.2 ] ; 3 uses
  %i.hw = phi i32 [ %i.hr, %.preheader.lr.ph.2 ], [ %i.ig, %.critedge.2 ]
  %.05370.2 = phi i32 [ 0, %.preheader.lr.ph.2 ], [ %.1.lcssa.2, %.critedge.2 ] ; 3 uses
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !10 ; 2 uses
  %i.hy = add nsw i32 %.05370.2, 1
  %smax.2 = call i32 @llvm.smax.i32(i32 %i.hx, i32 %i.hy)
  %i.hz = add nsw i32 %smax.2, -1                 ; 4 uses
  %exitcond.2.not160 = icmp eq i32 %.05370.2, %i.hz
  br i1 %exitcond.2.not160, label %.critedge.2, label %.lr.ph162

bb.ay:                                            ; preds = %.lr.ph162
  %exitcond.2.not = icmp eq i32 %i.ia, %i.hz
  br i1 %exitcond.2.not, label %.critedge.2, label %.lr.ph162, !llvm.loop !272

.lr.ph162:                                        ; preds = %.preheader.2, %bb.ay
  %.1.2161 = phi i32 [ %i.ia, %bb.ay ], [ %.05370.2, %.preheader.2 ] ; 2 uses
  %i.ia = add nsw i32 %.1.2161, 1                 ; 3 uses
  %i.ib = mul nsw i32 %i.ia, %i.hw
  %i.ic = sdiv i32 %i.ib, %i.hx
  %i.id = sext i32 %i.ic to i64
  %.not65.2 = icmp slt i64 %indvars.iv.2, %i.id
  br i1 %.not65.2, label %..critedge.2_crit_edge, label %bb.ay, !llvm.loop !272

..critedge.2_crit_edge:                           ; preds = %.lr.ph162
  br label %.critedge.2, !llvm.loop !272

.critedge.2:                                      ; preds = %bb.ay, %..critedge.2_crit_edge, %.preheader.2
  %.1.lcssa.2 = phi i32 [ %i.hz, %.preheader.2 ], [ %.1.2161, %..critedge.2_crit_edge ], [ %i.hz, %bb.ay ] ; 2 uses
  %i.ie = mul nsw i32 %.1.lcssa.2, %i.go
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.2
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !10
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.ig = load i32, ptr %i.d, align 4, !tbaa !10  ; 3 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp slt i64 %indvars.iv.next.2, %i.ih
  br i1 %i.ii, label %.preheader.2, label %.loopexit, !llvm.loop !273

.loopexit:                                        ; preds = %.critedge.2, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2
  %i.ij = phi i32 [ %i.hr, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2 ], [ %i.ig, %.critedge.2 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.pre95, i64 76
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !10 ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.loopexit
  %storemerge.2 = phi i32 [ 0, %.loopexit ], [ %i.iq, %bb.az ] ; 5 uses
  %i.im = mul nsw i32 %i.ij, %storemerge.2
  %i.in = sdiv i32 %i.im, %i.il
  %i.io = icmp slt i32 %i.in, %8
  %i.ip = icmp slt i32 %storemerge.2, %i.il
  %or.cond.2 = and i1 %i.ip, %i.io
  %i.iq = add nuw nsw i32 %storemerge.2, 1
  br i1 %or.cond.2, label %bb.az, label %.critedge2.2, !llvm.loop !274

.critedge2.2:                                     ; preds = %bb.az
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre95, i64 184
  store i32 %storemerge.2, ptr %i.ir, align 4, !tbaa !10
  %i.is = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not64.2 = icmp eq ptr %i.is, null
  br i1 %.not64.2, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.critedge2.2
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.is, ptr noundef nonnull @.str.5, i32 noundef 120, i32 noundef %storemerge.2) #7 ; 0 uses
  %.pre96 = load ptr, ptr %i.a, align 8, !tbaa !148 ; 2 uses
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %.pre96, i64 76
  %.pre98 = load i32, ptr %.phi.trans.insert97, align 4, !tbaa !10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.critedge2.2
  %i.iu = phi i32 [ %.pre98, %bb.ba ], [ %i.il, %.critedge2.2 ] ; 2 uses
  %i.iv = phi ptr [ %.pre96, %bb.ba ], [ %.pre95, %.critedge2.2 ]
  %i.iw = icmp sgt i32 %i.iu, 1
  br i1 %i.iw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 184
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !10
  %i.iz = icmp sgt i32 %i.iy, %i.iu
  br i1 %i.iz, label %bb.ai, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEE(ptr nofree noundef writeonly captures(none) initializes((0, 36), (40, 52)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, i32 noundef %11, ptr noundef nonnull %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_Z18set_grid_alignmentPii.exit:
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.93", align 1 ; 3 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  store i32 %1, ptr %0, align 8, !tbaa !10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %16, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.b, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %5, ptr %17, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %6, ptr %i.c, align 8, !tbaa !10
  %i.d = xor i32 %4, -1
  %i.e = add i32 %11, %i.d
  %i.f = add i32 %i.e, %7                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = xor i32 %5, -1
  %i.i = add i32 %11, %i.h
  %i.j = add i32 %i.i, %8                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !10
  %i.l = xor i32 %6, -1
  %i.m = add i32 %11, %i.l
  %i.n = add i32 %i.m, %9                         ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.f, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.j, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.n, ptr %i.r, align 8, !tbaa !10
  %i.s = icmp ne i32 %11, 5                       ; 2 uses
  %i.t = add nsw i32 %i.n, 3
  %i.u = and i32 %i.t, -4
  %.0 = select i1 %i.s, i32 %i.n, i32 %i.u        ; 3 uses
  br i1 %10, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_Z18set_grid_alignmentPii.exit
  store i32 %.0, ptr %i.r, align 8, !tbaa !10
  br label %bb.i

bb.b:                                             ; preds = %_Z18set_grid_alignmentPii.exit
  %.not = icmp eq i32 %.0, %i.n
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(63) @.str.6, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 598) #22
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  %i.x = load ptr, ptr %13, align 8, !tbaa !156   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !157
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.ac = phi i32 [ %i.n, %bb.b ], [ %.0, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %11, ptr %i.ad, align 4, !tbaa !278
  %i.ae = mul nsw i32 %i.j, %i.f
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = sext i32 %i.af to i64                   ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !158
  %i.aj = load ptr, ptr %12, align 8, !tbaa !119  ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ag
  br i1 %i.ao, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, label %bb.j

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %i.ag, %i.an
  tail call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.ap)
  %.pre.pre = load ptr, ptr %12, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, %bb.i
  %.pre = phi ptr [ %.pre.pre, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit ], [ %i.aj, %bb.i ]
  %i.aq = ptrtoint ptr %.pre to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 15
  %i.as = icmp eq i64 %i.ar, 0
  %or.cond = select i1 %i.s, i1 true, i1 %i.as
  br i1 %or.cond, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEEENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 622) #22
  unreachable

._crit_edge:                                      ; preds = %bb.j
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !158
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.aq
  %i.aw = ashr exact i64 %i.av, 2
  %.not.i = icmp ult i64 %i.aw, %i.ag
  br i1 %.not.i, label %bb.l, label %_ZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEm.exit

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEmENKUlvE_clEv, ptr noundef nonnull @.str.20, i32 noundef 305) #22
  unreachable

_ZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEm.exit: ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %12, ptr %i.ax, align 8, !tbaa !117
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ag, ptr %i.ay, align 8, !tbaa !279
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.h = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !10
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g)
  store i32 %i.j, ptr %i.b, align 4, !tbaa !10
  %i.k = load i32, ptr %i.a, align 4, !tbaa !10
  %i.l = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.l, %bb.b ] ; 4 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !10
  %i.n = sext i32 %i.m to i64
  %.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !148    ; 2 uses
  %i.p = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.q = load i64, ptr %4, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds [24 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 76 ; 2 uses
  %i.x = load <3 x i32>, ptr %i.w, align 4, !tbaa !10 ; 4 uses
  %i.y = shufflevector <3 x i32> %i.x, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.z = extractelement <3 x i32> %i.x, i64 2     ; 3 uses
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !10
  %i.ab = extractelement <3 x i32> %i.x, i64 1    ; 2 uses
  %i.ac = mul nsw i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.p, %i.ac                    ; 3 uses
  %i.ae = sdiv i32 %i.p, %i.z
  %i.af = srem i32 %i.p, %i.z
  %i.ag = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.p, i64 1
  %i.ai = shufflevector <3 x i32> %i.x, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.aj = srem <2 x i32> %i.ah, %i.ai             ; 3 uses
  %i.ak = load <3 x i32>, ptr %5, align 4, !tbaa !10 ; 3 uses
  %i.al = shufflevector <3 x i32> %i.ak, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
end_hunk_0
