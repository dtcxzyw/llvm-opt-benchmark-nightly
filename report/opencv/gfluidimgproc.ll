Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidimgproc?download=true
inline.NumInlined: 3372
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN2cv4gapi5fluid15GFluidSepFilter3runERKNS1_4ViewEiRKNS_3MatES8_RKNS_6Point_IiEERKNS_7Scalar_IdEEiSG_RNS1_6BufferESI_:bb.a
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i180: ; preds = %bb.ca
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !41
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i178: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i180, %bb.bz
  %.pn114.i179 = phi { ptr, i32 } [ %i.hb, %bb.bz ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i180 ], [ %i.hc, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %common.resume

_ZN2cv4gapi5fluidL13run_sepfilterIfsEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf.exit: ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !106 ; 3 uses
  %invariant.op.i182 = add i32 %i.hj, -1
  %i.hk = load ptr, ptr %i.az, align 8, !tbaa !107 ; 3 uses
  %i.hl = sext i32 %invariant.op.i182 to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !108
  store ptr %i.hn, ptr %i.a, align 16, !tbaa !176
  %i.ho = sext i32 %i.hj to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !108
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !176
  %.reass.2.i183 = add i32 %i.hj, 1
  %i.hs = sext i32 %.reass.2.i183 to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !108
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.hu, ptr %i.hv, align 16, !tbaa !176
  %i.hw = load ptr, ptr %i.bp, align 8, !tbaa !109
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !108
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !105
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !92
  %i.ic = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.id = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 176
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKsiiPKfS7_iffPS2_ii(ptr noundef %i.hx, ptr noundef nonnull %i.a, i32 noundef %i.hz, i32 noundef %i.ib, ptr noundef %i.av, ptr noundef nonnull %i.ax, i32 noundef 1, float noundef 1.000000e+00, float noundef %i.bn, ptr noundef nonnull %i.e, i32 noundef %i.ic, i32 noundef %i.if)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bo
  call fastcc void @_ZN2cv4gapi5fluidL13run_sepfilterIffEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.az, ptr noundef %i.av, i32 noundef %i.ar, ptr noundef %i.ax, i32 noundef 3, float noundef %i.bn, ptr noundef %i.e)
  br label %bb.cg

.thread224:                                       ; preds = %bb.bo, %bb.v, %bb.ay, %bb.w, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %.thread224
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid12GFluidResize3runERKNS1_4ViewENS_5Size_IiEEddiRNS1_6BufferES9_, ptr noundef nonnull @.str.2, i32 noundef 733) #28
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %.thread224
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.cf:                                            ; preds = %bb.cc
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %32, align 8, !tbaa !40   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.cf
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !41
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.ce
  %.pn129 = phi { ptr, i32 } [ %i.ig, %bb.ce ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.ih, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %common.resume

bb.cg:                                            ; preds = %bb.cb, %_ZN2cv4gapi5fluidL13run_sepfilterIfsEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf.exit, %bb.bn, %_ZN2cv4gapi5fluidL13run_sepfilterIftEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf.exit, %bb.az, %_ZN2cv4gapi5fluidL13run_sepfilterIfhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf.exit, %_ZN2cv4gapi5fluidL13run_sepfilterIshEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree readonly captures(none) %.8.val, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = alloca [11 x ptr], align 16              ; 11 uses
  %i.b = alloca [11 x ptr], align 16              ; 18 uses
  %i.c = icmp slt i32 %2, 12
  %i.d = icmp slt i32 %4, 12
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 605) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %2, %4
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 606) #28
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %9, align 8, !tbaa !40     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !41
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.k
  %.pn114 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = add nsw i32 %2, -1                       ; 2 uses
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %bb.r

.lr.ph:                                           ; preds = %bb.m
  %.neg9798101 = lshr i32 %i.t, 1
  %.neg97.zext = and i32 %.neg9798101, 127
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !106
  %invariant.op = sub i32 %i.x, %.neg97.zext      ; 5 uses
  %i.y = load ptr, ptr %.8.val, align 8, !tbaa !107 ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %2, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.o

._crit_edge.unr-lcssa:                            ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.aa
  %i.ab = sext i32 %.reass.epil to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !108
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.n, !llvm.loop !384

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.unr-lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !108 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !92 ; 4 uses
  switch i32 %2, label %.lr.ph17 [
    i32 3, label %bb.p
    i32 5, label %bb.q
  ]

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.o ]
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.an
  %i.ao = sext i32 %.reass to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !108
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.as
  %i.at = sext i32 %.reass.1 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !108
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.ax
  %i.ay = sext i32 %.reass.2 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.ba, ptr %i.bb, align 16, !tbaa !108
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.bc
  %i.bd = sext i32 %.reass.3 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.o, !llvm.loop !385

bb.p:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPhPPKhiiPKfS7_iffPPfii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bh, i32 noundef %i.bk)
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge
  %i.bl = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPhPPKhiiPKfS7_iffPPfii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bl, i32 noundef %i.bo)
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !144    ; 3 uses
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !92
  %i.bp = mul i32 %18, %16
  br label %.preheader2

.lr.ph17:                                         ; preds = %._crit_edge
  %19 = mul i32 %i.am, %i.ak                      ; 4 uses
  %i.bq = icmp sgt i32 %19, 0
  %i.br = sext i32 %i.u to i64                    ; 10 uses
  %i.bs = sext i32 %i.am to i64                   ; 10 uses
  %wide.trip.count78 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %i.bq, label %.lr.ph17.split.us.split.us.preheader, label %.lr.ph8.us23.preheader

.lr.ph8.us23.preheader:                           ; preds = %.lr.ph17
  %xtraiter7 = and i64 %wide.trip.count, 3        ; 3 uses
  %i.bt = icmp ult i32 %2, 4
  %unroll_iter11 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod9.not = icmp eq i64 %xtraiter7, 0
  %lcmp.mod10 = icmp ne i64 %xtraiter7, 0
  br label %.lr.ph8.us23

.lr.ph17.split.us.split.us.preheader:             ; preds = %.lr.ph17
  %wide.trip.count73 = zext nneg i32 %19 to i64
  %xtraiter14 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bu = icmp ult i32 %2, 4
  %unroll_iter18 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod16.not = icmp eq i64 %xtraiter14, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter14, 0
  %xtraiter21 = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i32 %2, 1
  %unroll_iter26 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod23.not = icmp eq i64 %xtraiter21, 0
  %lcmp.mod25 = trunc i32 %2 to i1
  br label %.lr.ph8.us.us

.lr.ph8.us.us:                                    ; preds = %._crit_edge14.split.us.us.us, %.lr.ph17.split.us.split.us.preheader
  %indvars.iv75 = phi i64 [ 0, %.lr.ph17.split.us.split.us.preheader ], [ %indvars.iv.next76, %._crit_edge14.split.us.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv75
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !108 ; 5 uses
  br i1 %i.bu, label %.epil.preheader13, label %.lr.ph8.us.us.new

.lr.ph8.us.us.new:                                ; preds = %.lr.ph8.us.us, %.lr.ph8.us.us.new
  %indvars.iv60 = phi i64 [ %indvars.iv.next61.3, %.lr.ph8.us.us.new ], [ 0, %.lr.ph8.us.us ] ; 6 uses
  %niter19 = phi i64 [ %niter19.next.3, %.lr.ph8.us.us.new ], [ 0, %.lr.ph8.us.us ]
  %i.by = sub nsw i64 %indvars.iv60, %i.br
  %i.bz = mul nsw i64 %i.by, %i.bs
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv60
  store ptr %i.ca, ptr %i.cb, align 16, !tbaa !108
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.cc = sub nsw i64 %indvars.iv.next61, %i.br
  %i.cd = mul nsw i64 %i.cc, %i.bs
  %i.ce = getelementptr inbounds i8, ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !108
  %indvars.iv.next61.1 = or disjoint i64 %indvars.iv60, 2 ; 2 uses
  %i.cg = sub nsw i64 %indvars.iv.next61.1, %i.br
  %i.ch = mul nsw i64 %i.cg, %i.bs
  %i.ci = getelementptr inbounds i8, ptr %i.bx, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61.1
  store ptr %i.ci, ptr %i.cj, align 16, !tbaa !108
  %indvars.iv.next61.2 = or disjoint i64 %indvars.iv60, 3 ; 2 uses
  %i.ck = sub nsw i64 %indvars.iv.next61.2, %i.br
  %i.cl = mul nsw i64 %i.ck, %i.bs
  %i.cm = getelementptr inbounds i8, ptr %i.bx, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61.2
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !108
  %indvars.iv.next61.3 = add nuw nsw i64 %indvars.iv60, 4 ; 2 uses
  %niter19.next.3 = add i64 %niter19, 4           ; 2 uses
  %niter19.ncmp.3 = icmp eq i64 %niter19.next.3, %unroll_iter18
  br i1 %niter19.ncmp.3, label %.preheader4.us.us.unr-lcssa, label %.lr.ph8.us.us.new, !llvm.loop !386

.preheader4.us.us.unr-lcssa:                      ; preds = %.lr.ph8.us.us.new
  br i1 %lcmp.mod16.not, label %.preheader4.us.us, label %.epil.preheader13

.epil.preheader13:                                ; preds = %.preheader4.us.us.unr-lcssa, %.lr.ph8.us.us
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph8.us.us ], [ %indvars.iv.next61.3, %.preheader4.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader13
  %indvars.iv60.epil = phi i64 [ %indvars.iv.next61.epil, %bb.s ], [ %indvars.iv60.epil.init, %.epil.preheader13 ] ; 3 uses
  %epil.iter15 = phi i64 [ %epil.iter15.next, %bb.s ], [ 0, %.epil.preheader13 ]
  %i.co = sub nsw i64 %indvars.iv60.epil, %i.br
  %i.cp = mul nsw i64 %i.co, %i.bs
  %i.cq = getelementptr inbounds i8, ptr %i.bx, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv60.epil
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !108
  %indvars.iv.next61.epil = add nuw nsw i64 %indvars.iv60.epil, 1
  %epil.iter15.next = add i64 %epil.iter15, 1     ; 2 uses
  %epil.iter15.cmp.not = icmp eq i64 %epil.iter15.next, %xtraiter14
  br i1 %epil.iter15.cmp.not, label %.preheader4.us.us, label %bb.s, !llvm.loop !387

.preheader4.us.us:                                ; preds = %bb.s, %.preheader4.us.us.unr-lcssa
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv75
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !148
  br label %.preheader3.us.us.us

.preheader3.us.us.us:                             ; preds = %._crit_edge12.us.us.us, %.preheader4.us.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %._crit_edge12.us.us.us ], [ 0, %.preheader4.us.us ] ; 5 uses
  br i1 %i.bv, label %.epil.preheader20, label %.preheader3.us.us.us.new

.preheader3.us.us.us.new:                         ; preds = %.preheader3.us.us.us, %.preheader3.us.us.us.new
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.preheader3.us.us.us.new ], [ 0, %.preheader3.us.us.us ] ; 4 uses
  %.01029.us.us.us = phi float [ %i.dj, %.preheader3.us.us.us.new ], [ 0.000000e+00, %.preheader3.us.us.us ]
  %niter27 = phi i64 [ %niter27.next.1, %.preheader3.us.us.us.new ], [ 0, %.preheader3.us.us.us ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !108
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv70
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !41
  %i.cy = uitofp i8 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv65
  %i.da = load float, ptr %i.cz, align 4, !tbaa !149
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.da, float %.01029.us.us.us)
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next66
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !108
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv70
  %i.df = load i8, ptr %i.de, align 1, !tbaa !41
  %i.dg = uitofp i8 %i.df to float
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next66
  %i.di = load float, ptr %i.dh, align 4, !tbaa !149
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.db) ; 3 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %._crit_edge12.us.us.us.unr-lcssa, label %.preheader3.us.us.us.new, !llvm.loop !388

._crit_edge12.us.us.us.unr-lcssa:                 ; preds = %.preheader3.us.us.us.new
  br i1 %lcmp.mod23.not, label %._crit_edge12.us.us.us, label %.epil.preheader20

.epil.preheader20:                                ; preds = %._crit_edge12.us.us.us.unr-lcssa, %.preheader3.us.us.us
  %indvars.iv65.epil.init = phi i64 [ 0, %.preheader3.us.us.us ], [ %indvars.iv.next66.1, %._crit_edge12.us.us.us.unr-lcssa ] ; 2 uses
  %.01029.us.us.us.epil.init = phi float [ 0.000000e+00, %.preheader3.us.us.us ], [ %i.dj, %._crit_edge12.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.epil.init
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !108
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv70
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !41
  %i.do = uitofp i8 %i.dn to float
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv65.epil.init
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !149
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dq, float %.01029.us.us.us.epil.init)
  br label %._crit_edge12.us.us.us

._crit_edge12.us.us.us:                           ; preds = %._crit_edge12.us.us.us.unr-lcssa, %.epil.preheader20
  %.lcssa3 = phi float [ %i.dj, %._crit_edge12.us.us.us.unr-lcssa ], [ %i.dr, %.epil.preheader20 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv70
  store float %.lcssa3, ptr %i.ds, align 4, !tbaa !149
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge14.split.us.us.us, label %.preheader3.us.us.us, !llvm.loop !389

._crit_edge14.split.us.us.us:                     ; preds = %._crit_edge12.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader2, label %.lr.ph8.us.us, !llvm.loop !390

.lr.ph8.us23:                                     ; preds = %.lr.ph8.us23.preheader, %..preheader4_crit_edge.us25
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %..preheader4_crit_edge.us25 ], [ 0, %.lr.ph8.us23.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv47
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !108 ; 5 uses
  br i1 %i.bt, label %.epil.preheader6, label %.lr.ph8.us23.new

.lr.ph8.us23.new:                                 ; preds = %.lr.ph8.us23, %.lr.ph8.us23.new
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.lr.ph8.us23.new ], [ 0, %.lr.ph8.us23 ] ; 6 uses
  %niter12 = phi i64 [ %niter12.next.3, %.lr.ph8.us23.new ], [ 0, %.lr.ph8.us23 ]
  %i.dv = sub nsw i64 %indvars.iv42, %i.br
  %i.dw = mul nsw i64 %i.dv, %i.bs
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv42
  store ptr %i.dx, ptr %i.dy, align 16, !tbaa !108
  %indvars.iv.next43 = or disjoint i64 %indvars.iv42, 1 ; 2 uses
  %i.dz = sub nsw i64 %indvars.iv.next43, %i.br
  %i.ea = mul nsw i64 %i.dz, %i.bs
  %i.eb = getelementptr inbounds i8, ptr %i.du, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !108
  %indvars.iv.next43.1 = or disjoint i64 %indvars.iv42, 2 ; 2 uses
  %i.ed = sub nsw i64 %indvars.iv.next43.1, %i.br
  %i.ee = mul nsw i64 %i.ed, %i.bs
  %i.ef = getelementptr inbounds i8, ptr %i.du, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43.1
  store ptr %i.ef, ptr %i.eg, align 16, !tbaa !108
  %indvars.iv.next43.2 = or disjoint i64 %indvars.iv42, 3 ; 2 uses
  %i.eh = sub nsw i64 %indvars.iv.next43.2, %i.br
  %i.ei = mul nsw i64 %i.eh, %i.bs
  %i.ej = getelementptr inbounds i8, ptr %i.du, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43.2
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !108
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter12.next.3 = add i64 %niter12, 4           ; 2 uses
  %niter12.ncmp.3 = icmp eq i64 %niter12.next.3, %unroll_iter11
  br i1 %niter12.ncmp.3, label %..preheader4_crit_edge.us25.unr-lcssa, label %.lr.ph8.us23.new, !llvm.loop !386

..preheader4_crit_edge.us25.unr-lcssa:            ; preds = %.lr.ph8.us23.new
  br i1 %lcmp.mod9.not, label %..preheader4_crit_edge.us25, label %.epil.preheader6

.epil.preheader6:                                 ; preds = %..preheader4_crit_edge.us25.unr-lcssa, %.lr.ph8.us23
  %indvars.iv42.epil.init = phi i64 [ 0, %.lr.ph8.us23 ], [ %indvars.iv.next43.3, %..preheader4_crit_edge.us25.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader6
  %indvars.iv42.epil = phi i64 [ %indvars.iv.next43.epil, %bb.t ], [ %indvars.iv42.epil.init, %.epil.preheader6 ] ; 3 uses
  %epil.iter8 = phi i64 [ %epil.iter8.next, %bb.t ], [ 0, %.epil.preheader6 ]
  %i.el = sub nsw i64 %indvars.iv42.epil, %i.br
  %i.em = mul nsw i64 %i.el, %i.bs
  %i.en = getelementptr inbounds i8, ptr %i.du, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv42.epil
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !108
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter8.next = add i64 %epil.iter8, 1       ; 2 uses
  %epil.iter8.cmp.not = icmp eq i64 %epil.iter8.next, %xtraiter7
  br i1 %epil.iter8.cmp.not, label %..preheader4_crit_edge.us25, label %bb.t, !llvm.loop !391

..preheader4_crit_edge.us25:                      ; preds = %bb.t, %..preheader4_crit_edge.us25.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count78
  br i1 %exitcond51.not, label %.preheader2, label %.lr.ph8.us23, !llvm.loop !390

.preheader2:                                      ; preds = %..preheader4_crit_edge.us25, %._crit_edge14.split.us.us.us, %bb.r
  %20 = phi i32 [ %19, %._crit_edge14.split.us.us.us ], [ %i.bp, %bb.r ], [ %19, %..preheader4_crit_edge.us25 ] ; 2 uses
  %21 = phi ptr [ %i.ai, %._crit_edge14.split.us.us.us ], [ %14, %bb.r ], [ %i.ai, %..preheader4_crit_edge.us25 ]
  %i.ep = icmp sgt i32 %20, 0
  br i1 %i.ep, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader2
  %wide.trip.count88 = zext nneg i32 %20 to i64
  %wide.trip.count83 = zext i32 %2 to i64         ; 2 uses
  %xtraiter28 = and i64 %wide.trip.count83, 3     ; 3 uses
  %i.eq = icmp ult i32 %2, 4
  %unroll_iter33 = and i64 %wide.trip.count83, 2147483644
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter28, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit
  %indvars.iv85 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next86, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit ] ; 7 uses
  br i1 %i.v, label %.lr.ph34.preheader, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit

.lr.ph34.preheader:                               ; preds = %.preheader
  br i1 %i.eq, label %.lr.ph34.epil.preheader, label %.lr.ph34

_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph34
  br i1 %lcmp.mod30.not, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit, label %.lr.ph34.epil.preheader

.lr.ph34.epil.preheader:                          ; preds = %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa, %.lr.ph34.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next81.3, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa ]
  %.09932.epil.init = phi float [ 0.000000e+00, %.lr.ph34.preheader ], [ %i.gf, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph34.epil

.lr.ph34.epil:                                    ; preds = %.lr.ph34.epil, %.lr.ph34.epil.preheader
  %indvars.iv80.epil = phi i64 [ %indvars.iv.next81.epil, %.lr.ph34.epil ], [ %indvars.iv80.epil.init, %.lr.ph34.epil.preheader ] ; 3 uses
  %.09932.epil = phi float [ %i.ex, %.lr.ph34.epil ], [ %.09932.epil.init, %.lr.ph34.epil.preheader ]
  %epil.iter29 = phi i64 [ %epil.iter29.next, %.lr.ph34.epil ], [ 0, %.lr.ph34.epil.preheader ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv80.epil
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !148
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv85
  %i.eu = load float, ptr %i.et, align 4, !tbaa !149
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80.epil
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !149
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ew, float %.09932.epil) ; 2 uses
  %indvars.iv.next81.epil = add nuw nsw i64 %indvars.iv80.epil, 1
  %epil.iter29.next = add i64 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit, label %.lr.ph34.epil, !llvm.loop !392

_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit:        ; preds = %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa, %.lr.ph34.epil, %.preheader
  %.099.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gf, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph34.epil ]
  %i.ey = fadd float %5, %.099.lcssa
  %i.ez = tail call float @llvm.rint.f32(float %i.ey)
  %i.fa = fptosi float %i.ez to i32               ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  %spec.select1 = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 255)
  %spec.select = trunc nuw i32 %spec.select1 to i8
  %i.fc = select i1 %i.fb, i8 0, i8 %spec.select
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 %indvars.iv85
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !41
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %.preheader, !llvm.loop !393

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %.lr.ph34 ], [ 0, %.lr.ph34.preheader ] ; 6 uses
  %.09932 = phi float [ %i.gf, %.lr.ph34 ], [ 0.000000e+00, %.lr.ph34.preheader ]
  %niter34 = phi i64 [ %niter34.next.3, %.lr.ph34 ], [ 0, %.lr.ph34.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !148
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv85
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !149
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !149
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fj, float %.09932)
  %indvars.iv.next81 = or disjoint i64 %indvars.iv80, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !148
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv85
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !149
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !149
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fq, float %i.fk)
  %indvars.iv.next81.1 = or disjoint i64 %indvars.iv80, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81.1
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv85
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !149
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !149
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fx, float %i.fr)
  %indvars.iv.next81.2 = or disjoint i64 %indvars.iv80, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81.2
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !148
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv85
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !149
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81.2
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !149
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.ge, float %i.fy) ; 3 uses
  %indvars.iv.next81.3 = add nuw nsw i64 %indvars.iv80, 4 ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.loopexit.unr-lcssa, label %.lr.ph34, !llvm.loop !394

.loopexit:                                        ; preds = %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit, %.preheader2, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn114.pn = phi { ptr, i32 } [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn114.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4gapi5fluidL13run_sepfilterIttEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree readonly captures(none) %.8.val, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = alloca [11 x ptr], align 16              ; 11 uses
  %i.b = alloca [11 x ptr], align 16              ; 18 uses
  %i.c = icmp slt i32 %2, 12
  %i.d = icmp slt i32 %4, 12
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 605) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %2, %4
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 606) #28
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %9, align 8, !tbaa !40     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !41
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.k
  %.pn114 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = add nsw i32 %2, -1                       ; 2 uses
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %bb.r

.lr.ph:                                           ; preds = %bb.m
  %.neg9798101 = lshr i32 %i.t, 1
  %.neg97.zext = and i32 %.neg9798101, 127
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !106
  %invariant.op = sub i32 %i.x, %.neg97.zext      ; 5 uses
  %i.y = load ptr, ptr %.8.val, align 8, !tbaa !107 ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %2, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.o

._crit_edge.unr-lcssa:                            ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.aa
  %i.ab = sext i32 %.reass.epil to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !176
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.n, !llvm.loop !395

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.unr-lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !108 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !92 ; 4 uses
  switch i32 %2, label %.lr.ph17 [
    i32 3, label %bb.p
    i32 5, label %bb.q
  ]

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.o ]
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.an
  %i.ao = sext i32 %.reass to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !176
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.as
  %i.at = sext i32 %.reass.1 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !176
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.ax
  %i.ay = sext i32 %.reass.2 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.ba, ptr %i.bb, align 16, !tbaa !176
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.bc
  %i.bd = sext i32 %.reass.3 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !176
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.o, !llvm.loop !396

bb.p:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPtPPKtiiPKfS7_iffPPfii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bh, i32 noundef %i.bk)
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge
  %i.bl = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPtPPKtiiPKfS7_iffPPfii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bl, i32 noundef %i.bo)
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !144    ; 3 uses
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !92
  %i.bp = mul i32 %18, %16
  br label %.preheader2

.lr.ph17:                                         ; preds = %._crit_edge
  %19 = mul i32 %i.am, %i.ak                      ; 4 uses
  %i.bq = icmp sgt i32 %19, 0
  %i.br = sext i32 %i.u to i64                    ; 10 uses
  %i.bs = sext i32 %i.am to i64                   ; 10 uses
  %wide.trip.count78 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %i.bq, label %.lr.ph17.split.us.split.us.preheader, label %.lr.ph8.us23.preheader

.lr.ph8.us23.preheader:                           ; preds = %.lr.ph17
  %xtraiter7 = and i64 %wide.trip.count, 3        ; 3 uses
  %i.bt = icmp ult i32 %2, 4
  %unroll_iter11 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod9.not = icmp eq i64 %xtraiter7, 0
  %lcmp.mod10 = icmp ne i64 %xtraiter7, 0
  br label %.lr.ph8.us23

.lr.ph17.split.us.split.us.preheader:             ; preds = %.lr.ph17
  %wide.trip.count73 = zext nneg i32 %19 to i64
  %xtraiter14 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bu = icmp ult i32 %2, 4
  %unroll_iter18 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod16.not = icmp eq i64 %xtraiter14, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter14, 0
  %xtraiter21 = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i32 %2, 1
  %unroll_iter26 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod23.not = icmp eq i64 %xtraiter21, 0
  %lcmp.mod25 = trunc i32 %2 to i1
  br label %.lr.ph8.us.us

.lr.ph8.us.us:                                    ; preds = %._crit_edge14.split.us.us.us, %.lr.ph17.split.us.split.us.preheader
  %indvars.iv75 = phi i64 [ 0, %.lr.ph17.split.us.split.us.preheader ], [ %indvars.iv.next76, %._crit_edge14.split.us.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv75
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !176 ; 5 uses
  br i1 %i.bu, label %.epil.preheader13, label %.lr.ph8.us.us.new

.lr.ph8.us.us.new:                                ; preds = %.lr.ph8.us.us, %.lr.ph8.us.us.new
  %indvars.iv60 = phi i64 [ %indvars.iv.next61.3, %.lr.ph8.us.us.new ], [ 0, %.lr.ph8.us.us ] ; 6 uses
  %niter19 = phi i64 [ %niter19.next.3, %.lr.ph8.us.us.new ], [ 0, %.lr.ph8.us.us ]
  %i.by = sub nsw i64 %indvars.iv60, %i.br
  %i.bz = mul nsw i64 %i.by, %i.bs
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv60
  store ptr %i.ca, ptr %i.cb, align 16, !tbaa !176
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.cc = sub nsw i64 %indvars.iv.next61, %i.br
  %i.cd = mul nsw i64 %i.cc, %i.bs
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !176
  %indvars.iv.next61.1 = or disjoint i64 %indvars.iv60, 2 ; 2 uses
  %i.cg = sub nsw i64 %indvars.iv.next61.1, %i.br
  %i.ch = mul nsw i64 %i.cg, %i.bs
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61.1
  store ptr %i.ci, ptr %i.cj, align 16, !tbaa !176
  %indvars.iv.next61.2 = or disjoint i64 %indvars.iv60, 3 ; 2 uses
  %i.ck = sub nsw i64 %indvars.iv.next61.2, %i.br
  %i.cl = mul nsw i64 %i.ck, %i.bs
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61.2
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !176
  %indvars.iv.next61.3 = add nuw nsw i64 %indvars.iv60, 4 ; 2 uses
  %niter19.next.3 = add i64 %niter19, 4           ; 2 uses
  %niter19.ncmp.3 = icmp eq i64 %niter19.next.3, %unroll_iter18
  br i1 %niter19.ncmp.3, label %.preheader4.us.us.unr-lcssa, label %.lr.ph8.us.us.new, !llvm.loop !397

.preheader4.us.us.unr-lcssa:                      ; preds = %.lr.ph8.us.us.new
  br i1 %lcmp.mod16.not, label %.preheader4.us.us, label %.epil.preheader13

.epil.preheader13:                                ; preds = %.preheader4.us.us.unr-lcssa, %.lr.ph8.us.us
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph8.us.us ], [ %indvars.iv.next61.3, %.preheader4.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader13
  %indvars.iv60.epil = phi i64 [ %indvars.iv.next61.epil, %bb.s ], [ %indvars.iv60.epil.init, %.epil.preheader13 ] ; 3 uses
  %epil.iter15 = phi i64 [ %epil.iter15.next, %bb.s ], [ 0, %.epil.preheader13 ]
  %i.co = sub nsw i64 %indvars.iv60.epil, %i.br
  %i.cp = mul nsw i64 %i.co, %i.bs
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv60.epil
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !176
  %indvars.iv.next61.epil = add nuw nsw i64 %indvars.iv60.epil, 1
  %epil.iter15.next = add i64 %epil.iter15, 1     ; 2 uses
  %epil.iter15.cmp.not = icmp eq i64 %epil.iter15.next, %xtraiter14
  br i1 %epil.iter15.cmp.not, label %.preheader4.us.us, label %bb.s, !llvm.loop !398

.preheader4.us.us:                                ; preds = %bb.s, %.preheader4.us.us.unr-lcssa
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv75
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !148
  br label %.preheader3.us.us.us

.preheader3.us.us.us:                             ; preds = %._crit_edge12.us.us.us, %.preheader4.us.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %._crit_edge12.us.us.us ], [ 0, %.preheader4.us.us ] ; 5 uses
  br i1 %i.bv, label %.epil.preheader20, label %.preheader3.us.us.us.new

.preheader3.us.us.us.new:                         ; preds = %.preheader3.us.us.us, %.preheader3.us.us.us.new
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.preheader3.us.us.us.new ], [ 0, %.preheader3.us.us.us ] ; 4 uses
  %.01029.us.us.us = phi float [ %i.dj, %.preheader3.us.us.us.new ], [ 0.000000e+00, %.preheader3.us.us.us ]
  %niter27 = phi i64 [ %niter27.next.1, %.preheader3.us.us.us.new ], [ 0, %.preheader3.us.us.us ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !176
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv70
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !146
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv65
  %i.da = load float, ptr %i.cz, align 4, !tbaa !149
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.da, float %.01029.us.us.us)
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next66
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !176
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %indvars.iv70
  %i.df = load i16, ptr %i.de, align 2, !tbaa !146
  %i.dg = uitofp i16 %i.df to float
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next66
  %i.di = load float, ptr %i.dh, align 4, !tbaa !149
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.db) ; 3 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %._crit_edge12.us.us.us.unr-lcssa, label %.preheader3.us.us.us.new, !llvm.loop !399

._crit_edge12.us.us.us.unr-lcssa:                 ; preds = %.preheader3.us.us.us.new
  br i1 %lcmp.mod23.not, label %._crit_edge12.us.us.us, label %.epil.preheader20

.epil.preheader20:                                ; preds = %._crit_edge12.us.us.us.unr-lcssa, %.preheader3.us.us.us
  %indvars.iv65.epil.init = phi i64 [ 0, %.preheader3.us.us.us ], [ %indvars.iv.next66.1, %._crit_edge12.us.us.us.unr-lcssa ] ; 2 uses
  %.01029.us.us.us.epil.init = phi float [ 0.000000e+00, %.preheader3.us.us.us ], [ %i.dj, %._crit_edge12.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.epil.init
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %indvars.iv70
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !146
  %i.do = uitofp i16 %i.dn to float
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv65.epil.init
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !149
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dq, float %.01029.us.us.us.epil.init)
  br label %._crit_edge12.us.us.us

._crit_edge12.us.us.us:                           ; preds = %._crit_edge12.us.us.us.unr-lcssa, %.epil.preheader20
  %.lcssa3 = phi float [ %i.dj, %._crit_edge12.us.us.us.unr-lcssa ], [ %i.dr, %.epil.preheader20 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv70
  store float %.lcssa3, ptr %i.ds, align 4, !tbaa !149
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge14.split.us.us.us, label %.preheader3.us.us.us, !llvm.loop !400

._crit_edge14.split.us.us.us:                     ; preds = %._crit_edge12.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader2, label %.lr.ph8.us.us, !llvm.loop !401

.lr.ph8.us23:                                     ; preds = %.lr.ph8.us23.preheader, %..preheader4_crit_edge.us25
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %..preheader4_crit_edge.us25 ], [ 0, %.lr.ph8.us23.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv47
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !176 ; 5 uses
  br i1 %i.bt, label %.epil.preheader6, label %.lr.ph8.us23.new

.lr.ph8.us23.new:                                 ; preds = %.lr.ph8.us23, %.lr.ph8.us23.new
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.lr.ph8.us23.new ], [ 0, %.lr.ph8.us23 ] ; 6 uses
  %niter12 = phi i64 [ %niter12.next.3, %.lr.ph8.us23.new ], [ 0, %.lr.ph8.us23 ]
  %i.dv = sub nsw i64 %indvars.iv42, %i.br
  %i.dw = mul nsw i64 %i.dv, %i.bs
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv42
  store ptr %i.dx, ptr %i.dy, align 16, !tbaa !176
  %indvars.iv.next43 = or disjoint i64 %indvars.iv42, 1 ; 2 uses
  %i.dz = sub nsw i64 %indvars.iv.next43, %i.br
  %i.ea = mul nsw i64 %i.dz, %i.bs
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !176
  %indvars.iv.next43.1 = or disjoint i64 %indvars.iv42, 2 ; 2 uses
  %i.ed = sub nsw i64 %indvars.iv.next43.1, %i.br
  %i.ee = mul nsw i64 %i.ed, %i.bs
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43.1
  store ptr %i.ef, ptr %i.eg, align 16, !tbaa !176
  %indvars.iv.next43.2 = or disjoint i64 %indvars.iv42, 3 ; 2 uses
  %i.eh = sub nsw i64 %indvars.iv.next43.2, %i.br
  %i.ei = mul nsw i64 %i.eh, %i.bs
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43.2
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !176
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter12.next.3 = add i64 %niter12, 4           ; 2 uses
  %niter12.ncmp.3 = icmp eq i64 %niter12.next.3, %unroll_iter11
  br i1 %niter12.ncmp.3, label %..preheader4_crit_edge.us25.unr-lcssa, label %.lr.ph8.us23.new, !llvm.loop !397

..preheader4_crit_edge.us25.unr-lcssa:            ; preds = %.lr.ph8.us23.new
  br i1 %lcmp.mod9.not, label %..preheader4_crit_edge.us25, label %.epil.preheader6

.epil.preheader6:                                 ; preds = %..preheader4_crit_edge.us25.unr-lcssa, %.lr.ph8.us23
  %indvars.iv42.epil.init = phi i64 [ 0, %.lr.ph8.us23 ], [ %indvars.iv.next43.3, %..preheader4_crit_edge.us25.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader6
  %indvars.iv42.epil = phi i64 [ %indvars.iv.next43.epil, %bb.t ], [ %indvars.iv42.epil.init, %.epil.preheader6 ] ; 3 uses
  %epil.iter8 = phi i64 [ %epil.iter8.next, %bb.t ], [ 0, %.epil.preheader6 ]
  %i.el = sub nsw i64 %indvars.iv42.epil, %i.br
  %i.em = mul nsw i64 %i.el, %i.bs
  %i.en = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv42.epil
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !176
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter8.next = add i64 %epil.iter8, 1       ; 2 uses
  %epil.iter8.cmp.not = icmp eq i64 %epil.iter8.next, %xtraiter7
  br i1 %epil.iter8.cmp.not, label %..preheader4_crit_edge.us25, label %bb.t, !llvm.loop !402

..preheader4_crit_edge.us25:                      ; preds = %bb.t, %..preheader4_crit_edge.us25.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count78
  br i1 %exitcond51.not, label %.preheader2, label %.lr.ph8.us23, !llvm.loop !401

.preheader2:                                      ; preds = %..preheader4_crit_edge.us25, %._crit_edge14.split.us.us.us, %bb.r
  %20 = phi i32 [ %19, %._crit_edge14.split.us.us.us ], [ %i.bp, %bb.r ], [ %19, %..preheader4_crit_edge.us25 ] ; 2 uses
  %21 = phi ptr [ %i.ai, %._crit_edge14.split.us.us.us ], [ %14, %bb.r ], [ %i.ai, %..preheader4_crit_edge.us25 ]
  %i.ep = icmp sgt i32 %20, 0
  br i1 %i.ep, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader2
  %wide.trip.count88 = zext nneg i32 %20 to i64
  %wide.trip.count83 = zext i32 %2 to i64         ; 2 uses
  %xtraiter28 = and i64 %wide.trip.count83, 3     ; 3 uses
  %i.eq = icmp ult i32 %2, 4
  %unroll_iter33 = and i64 %wide.trip.count83, 2147483644
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter28, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit
  %indvars.iv85 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next86, %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit ] ; 7 uses
  br i1 %i.v, label %.lr.ph34.preheader, label %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit

.lr.ph34.preheader:                               ; preds = %.preheader
  br i1 %i.eq, label %.lr.ph34.epil.preheader, label %.lr.ph34

_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph34
  br i1 %lcmp.mod30.not, label %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit, label %.lr.ph34.epil.preheader

.lr.ph34.epil.preheader:                          ; preds = %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa, %.lr.ph34.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next81.3, %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa ]
  %.09932.epil.init = phi float [ 0.000000e+00, %.lr.ph34.preheader ], [ %i.gf, %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph34.epil

.lr.ph34.epil:                                    ; preds = %.lr.ph34.epil, %.lr.ph34.epil.preheader
  %indvars.iv80.epil = phi i64 [ %indvars.iv.next81.epil, %.lr.ph34.epil ], [ %indvars.iv80.epil.init, %.lr.ph34.epil.preheader ] ; 3 uses
  %.09932.epil = phi float [ %i.ex, %.lr.ph34.epil ], [ %.09932.epil.init, %.lr.ph34.epil.preheader ]
  %epil.iter29 = phi i64 [ %epil.iter29.next, %.lr.ph34.epil ], [ 0, %.lr.ph34.epil.preheader ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv80.epil
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !148
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv85
  %i.eu = load float, ptr %i.et, align 4, !tbaa !149
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80.epil
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !149
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ew, float %.09932.epil) ; 2 uses
  %indvars.iv.next81.epil = add nuw nsw i64 %indvars.iv80.epil, 1
  %epil.iter29.next = add i64 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit, label %.lr.ph34.epil, !llvm.loop !403

_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit:        ; preds = %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa, %.lr.ph34.epil, %.preheader
  %.099.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gf, %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph34.epil ]
  %i.ey = fadd float %5, %.099.lcssa
  %i.ez = tail call float @llvm.rint.f32(float %i.ey)
  %i.fa = fptosi float %i.ez to i32               ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  %spec.select1 = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 65535)
  %spec.select = trunc nuw i32 %spec.select1 to i16
  %i.fc = select i1 %i.fb, i16 0, i16 %spec.select
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %indvars.iv85
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !146
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %.preheader, !llvm.loop !404

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %.lr.ph34 ], [ 0, %.lr.ph34.preheader ] ; 6 uses
  %.09932 = phi float [ %i.gf, %.lr.ph34 ], [ 0.000000e+00, %.lr.ph34.preheader ]
  %niter34 = phi i64 [ %niter34.next.3, %.lr.ph34 ], [ 0, %.lr.ph34.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !148
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv85
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !149
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !149
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fj, float %.09932)
  %indvars.iv.next81 = or disjoint i64 %indvars.iv80, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !148
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv85
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !149
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !149
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fq, float %i.fk)
  %indvars.iv.next81.1 = or disjoint i64 %indvars.iv80, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81.1
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv85
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !149
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !149
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fx, float %i.fr)
  %indvars.iv.next81.2 = or disjoint i64 %indvars.iv80, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81.2
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !148
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv85
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !149
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81.2
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !149
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.ge, float %i.fy) ; 3 uses
  %indvars.iv.next81.3 = add nuw nsw i64 %indvars.iv80, 4 ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit.loopexit.unr-lcssa, label %.lr.ph34, !llvm.loop !405

.loopexit:                                        ; preds = %_ZN2cv4gapi3ownL8saturateItivEET_T0_.exit, %.preheader2, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn114.pn = phi { ptr, i32 } [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn114.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4gapi5fluidL13run_sepfilterIssEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree readonly captures(none) %.8.val, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = alloca [11 x ptr], align 16              ; 11 uses
  %i.b = alloca [11 x ptr], align 16              ; 18 uses
  %i.c = icmp slt i32 %2, 12
  %i.d = icmp slt i32 %4, 12
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 605) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %2, %4
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 606) #28
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %9, align 8, !tbaa !40     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !41
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.k
  %.pn114 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = add nsw i32 %2, -1                       ; 2 uses
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %bb.r

.lr.ph:                                           ; preds = %bb.m
  %.neg9798101 = lshr i32 %i.t, 1
  %.neg97.zext = and i32 %.neg9798101, 127
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !106
  %invariant.op = sub i32 %i.x, %.neg97.zext      ; 5 uses
  %i.y = load ptr, ptr %.8.val, align 8, !tbaa !107 ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %2, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.o

._crit_edge.unr-lcssa:                            ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.aa
  %i.ab = sext i32 %.reass.epil to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !176
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.n, !llvm.loop !406

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.unr-lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !108 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !92 ; 4 uses
  switch i32 %2, label %.lr.ph17 [
    i32 3, label %bb.p
    i32 5, label %bb.q
  ]

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.o ]
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.an
  %i.ao = sext i32 %.reass to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !176
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.as
  %i.at = sext i32 %.reass.1 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !176
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.ax
  %i.ay = sext i32 %.reass.2 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.ba, ptr %i.bb, align 16, !tbaa !176
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.bc
  %i.bd = sext i32 %.reass.3 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !176
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.o, !llvm.loop !407

bb.p:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPsPPKsiiPKfS7_iffPPfii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bh, i32 noundef %i.bk)
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge
  %i.bl = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPsPPKsiiPKfS7_iffPPfii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bl, i32 noundef %i.bo)
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !144    ; 3 uses
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !92
  %i.bp = mul i32 %18, %16
  br label %.preheader2

.lr.ph17:                                         ; preds = %._crit_edge
  %19 = mul i32 %i.am, %i.ak                      ; 4 uses
  %i.bq = icmp sgt i32 %19, 0
  %i.br = sext i32 %i.u to i64                    ; 10 uses
  %i.bs = sext i32 %i.am to i64                   ; 10 uses
  %wide.trip.count78 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %i.bq, label %.lr.ph17.split.us.split.us.preheader, label %.lr.ph8.us23.preheader

.lr.ph8.us23.preheader:                           ; preds = %.lr.ph17
  %xtraiter7 = and i64 %wide.trip.count, 3        ; 3 uses
  %i.bt = icmp ult i32 %2, 4
  %unroll_iter11 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod9.not = icmp eq i64 %xtraiter7, 0
  %lcmp.mod10 = icmp ne i64 %xtraiter7, 0
  br label %.lr.ph8.us23

.lr.ph17.split.us.split.us.preheader:             ; preds = %.lr.ph17
  %wide.trip.count73 = zext nneg i32 %19 to i64
  %xtraiter14 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bu = icmp ult i32 %2, 4
  %unroll_iter18 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod16.not = icmp eq i64 %xtraiter14, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter14, 0
  %xtraiter21 = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i32 %2, 1
  %unroll_iter26 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod23.not = icmp eq i64 %xtraiter21, 0
  %lcmp.mod25 = trunc i32 %2 to i1
  br label %.lr.ph8.us.us

.lr.ph8.us.us:                                    ; preds = %._crit_edge14.split.us.us.us, %.lr.ph17.split.us.split.us.preheader
  %indvars.iv75 = phi i64 [ 0, %.lr.ph17.split.us.split.us.preheader ], [ %indvars.iv.next76, %._crit_edge14.split.us.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv75
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !176 ; 5 uses
  br i1 %i.bu, label %.epil.preheader13, label %.lr.ph8.us.us.new

.lr.ph8.us.us.new:                                ; preds = %.lr.ph8.us.us, %.lr.ph8.us.us.new
  %indvars.iv60 = phi i64 [ %indvars.iv.next61.3, %.lr.ph8.us.us.new ], [ 0, %.lr.ph8.us.us ] ; 6 uses
  %niter19 = phi i64 [ %niter19.next.3, %.lr.ph8.us.us.new ], [ 0, %.lr.ph8.us.us ]
  %i.by = sub nsw i64 %indvars.iv60, %i.br
  %i.bz = mul nsw i64 %i.by, %i.bs
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv60
  store ptr %i.ca, ptr %i.cb, align 16, !tbaa !176
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.cc = sub nsw i64 %indvars.iv.next61, %i.br
  %i.cd = mul nsw i64 %i.cc, %i.bs
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !176
  %indvars.iv.next61.1 = or disjoint i64 %indvars.iv60, 2 ; 2 uses
  %i.cg = sub nsw i64 %indvars.iv.next61.1, %i.br
  %i.ch = mul nsw i64 %i.cg, %i.bs
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61.1
  store ptr %i.ci, ptr %i.cj, align 16, !tbaa !176
  %indvars.iv.next61.2 = or disjoint i64 %indvars.iv60, 3 ; 2 uses
  %i.ck = sub nsw i64 %indvars.iv.next61.2, %i.br
  %i.cl = mul nsw i64 %i.ck, %i.bs
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next61.2
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !176
  %indvars.iv.next61.3 = add nuw nsw i64 %indvars.iv60, 4 ; 2 uses
  %niter19.next.3 = add i64 %niter19, 4           ; 2 uses
  %niter19.ncmp.3 = icmp eq i64 %niter19.next.3, %unroll_iter18
  br i1 %niter19.ncmp.3, label %.preheader4.us.us.unr-lcssa, label %.lr.ph8.us.us.new, !llvm.loop !408

.preheader4.us.us.unr-lcssa:                      ; preds = %.lr.ph8.us.us.new
  br i1 %lcmp.mod16.not, label %.preheader4.us.us, label %.epil.preheader13

.epil.preheader13:                                ; preds = %.preheader4.us.us.unr-lcssa, %.lr.ph8.us.us
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph8.us.us ], [ %indvars.iv.next61.3, %.preheader4.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader13
  %indvars.iv60.epil = phi i64 [ %indvars.iv.next61.epil, %bb.s ], [ %indvars.iv60.epil.init, %.epil.preheader13 ] ; 3 uses
  %epil.iter15 = phi i64 [ %epil.iter15.next, %bb.s ], [ 0, %.epil.preheader13 ]
  %i.co = sub nsw i64 %indvars.iv60.epil, %i.br
  %i.cp = mul nsw i64 %i.co, %i.bs
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv60.epil
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !176
  %indvars.iv.next61.epil = add nuw nsw i64 %indvars.iv60.epil, 1
  %epil.iter15.next = add i64 %epil.iter15, 1     ; 2 uses
  %epil.iter15.cmp.not = icmp eq i64 %epil.iter15.next, %xtraiter14
  br i1 %epil.iter15.cmp.not, label %.preheader4.us.us, label %bb.s, !llvm.loop !409

.preheader4.us.us:                                ; preds = %bb.s, %.preheader4.us.us.unr-lcssa
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv75
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !148
  br label %.preheader3.us.us.us

.preheader3.us.us.us:                             ; preds = %._crit_edge12.us.us.us, %.preheader4.us.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %._crit_edge12.us.us.us ], [ 0, %.preheader4.us.us ] ; 5 uses
  br i1 %i.bv, label %.epil.preheader20, label %.preheader3.us.us.us.new

.preheader3.us.us.us.new:                         ; preds = %.preheader3.us.us.us, %.preheader3.us.us.us.new
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.preheader3.us.us.us.new ], [ 0, %.preheader3.us.us.us ] ; 4 uses
  %.01029.us.us.us = phi float [ %i.dj, %.preheader3.us.us.us.new ], [ 0.000000e+00, %.preheader3.us.us.us ]
  %niter27 = phi i64 [ %niter27.next.1, %.preheader3.us.us.us.new ], [ 0, %.preheader3.us.us.us ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !176
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv70
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !146
  %i.cy = sitofp i16 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv65
  %i.da = load float, ptr %i.cz, align 4, !tbaa !149
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.da, float %.01029.us.us.us)
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next66
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !176
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %indvars.iv70
  %i.df = load i16, ptr %i.de, align 2, !tbaa !146
  %i.dg = sitofp i16 %i.df to float
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next66
  %i.di = load float, ptr %i.dh, align 4, !tbaa !149
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.db) ; 3 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %._crit_edge12.us.us.us.unr-lcssa, label %.preheader3.us.us.us.new, !llvm.loop !410

._crit_edge12.us.us.us.unr-lcssa:                 ; preds = %.preheader3.us.us.us.new
  br i1 %lcmp.mod23.not, label %._crit_edge12.us.us.us, label %.epil.preheader20

.epil.preheader20:                                ; preds = %._crit_edge12.us.us.us.unr-lcssa, %.preheader3.us.us.us
  %indvars.iv65.epil.init = phi i64 [ 0, %.preheader3.us.us.us ], [ %indvars.iv.next66.1, %._crit_edge12.us.us.us.unr-lcssa ] ; 2 uses
  %.01029.us.us.us.epil.init = phi float [ 0.000000e+00, %.preheader3.us.us.us ], [ %i.dj, %._crit_edge12.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.epil.init
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %indvars.iv70
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !146
  %i.do = sitofp i16 %i.dn to float
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv65.epil.init
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !149
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dq, float %.01029.us.us.us.epil.init)
  br label %._crit_edge12.us.us.us

._crit_edge12.us.us.us:                           ; preds = %._crit_edge12.us.us.us.unr-lcssa, %.epil.preheader20
  %.lcssa3 = phi float [ %i.dj, %._crit_edge12.us.us.us.unr-lcssa ], [ %i.dr, %.epil.preheader20 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv70
  store float %.lcssa3, ptr %i.ds, align 4, !tbaa !149
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge14.split.us.us.us, label %.preheader3.us.us.us, !llvm.loop !411

._crit_edge14.split.us.us.us:                     ; preds = %._crit_edge12.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader2, label %.lr.ph8.us.us, !llvm.loop !412

.lr.ph8.us23:                                     ; preds = %.lr.ph8.us23.preheader, %..preheader4_crit_edge.us25
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %..preheader4_crit_edge.us25 ], [ 0, %.lr.ph8.us23.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv47
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !176 ; 5 uses
  br i1 %i.bt, label %.epil.preheader6, label %.lr.ph8.us23.new

.lr.ph8.us23.new:                                 ; preds = %.lr.ph8.us23, %.lr.ph8.us23.new
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.lr.ph8.us23.new ], [ 0, %.lr.ph8.us23 ] ; 6 uses
  %niter12 = phi i64 [ %niter12.next.3, %.lr.ph8.us23.new ], [ 0, %.lr.ph8.us23 ]
  %i.dv = sub nsw i64 %indvars.iv42, %i.br
  %i.dw = mul nsw i64 %i.dv, %i.bs
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv42
  store ptr %i.dx, ptr %i.dy, align 16, !tbaa !176
  %indvars.iv.next43 = or disjoint i64 %indvars.iv42, 1 ; 2 uses
  %i.dz = sub nsw i64 %indvars.iv.next43, %i.br
  %i.ea = mul nsw i64 %i.dz, %i.bs
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !176
  %indvars.iv.next43.1 = or disjoint i64 %indvars.iv42, 2 ; 2 uses
  %i.ed = sub nsw i64 %indvars.iv.next43.1, %i.br
  %i.ee = mul nsw i64 %i.ed, %i.bs
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43.1
  store ptr %i.ef, ptr %i.eg, align 16, !tbaa !176
  %indvars.iv.next43.2 = or disjoint i64 %indvars.iv42, 3 ; 2 uses
  %i.eh = sub nsw i64 %indvars.iv.next43.2, %i.br
  %i.ei = mul nsw i64 %i.eh, %i.bs
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next43.2
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !176
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter12.next.3 = add i64 %niter12, 4           ; 2 uses
  %niter12.ncmp.3 = icmp eq i64 %niter12.next.3, %unroll_iter11
  br i1 %niter12.ncmp.3, label %..preheader4_crit_edge.us25.unr-lcssa, label %.lr.ph8.us23.new, !llvm.loop !408

..preheader4_crit_edge.us25.unr-lcssa:            ; preds = %.lr.ph8.us23.new
  br i1 %lcmp.mod9.not, label %..preheader4_crit_edge.us25, label %.epil.preheader6

.epil.preheader6:                                 ; preds = %..preheader4_crit_edge.us25.unr-lcssa, %.lr.ph8.us23
  %indvars.iv42.epil.init = phi i64 [ 0, %.lr.ph8.us23 ], [ %indvars.iv.next43.3, %..preheader4_crit_edge.us25.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader6
  %indvars.iv42.epil = phi i64 [ %indvars.iv.next43.epil, %bb.t ], [ %indvars.iv42.epil.init, %.epil.preheader6 ] ; 3 uses
  %epil.iter8 = phi i64 [ %epil.iter8.next, %bb.t ], [ 0, %.epil.preheader6 ]
  %i.el = sub nsw i64 %indvars.iv42.epil, %i.br
  %i.em = mul nsw i64 %i.el, %i.bs
  %i.en = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv42.epil
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !176
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter8.next = add i64 %epil.iter8, 1       ; 2 uses
  %epil.iter8.cmp.not = icmp eq i64 %epil.iter8.next, %xtraiter7
  br i1 %epil.iter8.cmp.not, label %..preheader4_crit_edge.us25, label %bb.t, !llvm.loop !413

..preheader4_crit_edge.us25:                      ; preds = %bb.t, %..preheader4_crit_edge.us25.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count78
  br i1 %exitcond51.not, label %.preheader2, label %.lr.ph8.us23, !llvm.loop !412

.preheader2:                                      ; preds = %..preheader4_crit_edge.us25, %._crit_edge14.split.us.us.us, %bb.r
  %20 = phi i32 [ %19, %._crit_edge14.split.us.us.us ], [ %i.bp, %bb.r ], [ %19, %..preheader4_crit_edge.us25 ] ; 2 uses
  %21 = phi ptr [ %i.ai, %._crit_edge14.split.us.us.us ], [ %14, %bb.r ], [ %i.ai, %..preheader4_crit_edge.us25 ]
  %i.ep = icmp sgt i32 %20, 0
  br i1 %i.ep, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader2
  %wide.trip.count88 = zext nneg i32 %20 to i64
  %wide.trip.count83 = zext i32 %2 to i64         ; 2 uses
  %xtraiter28 = and i64 %wide.trip.count83, 3     ; 3 uses
  %i.eq = icmp ult i32 %2, 4
  %unroll_iter33 = and i64 %wide.trip.count83, 2147483644
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter28, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit
  %indvars.iv85 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next86, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit ] ; 7 uses
  br i1 %i.v, label %.lr.ph34.preheader, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit

.lr.ph34.preheader:                               ; preds = %.preheader
  br i1 %i.eq, label %.lr.ph34.epil.preheader, label %.lr.ph34

_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph34
  br i1 %lcmp.mod30.not, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit, label %.lr.ph34.epil.preheader

.lr.ph34.epil.preheader:                          ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa, %.lr.ph34.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next81.3, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa ]
  %.09932.epil.init = phi float [ 0.000000e+00, %.lr.ph34.preheader ], [ %i.gd, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph34.epil

.lr.ph34.epil:                                    ; preds = %.lr.ph34.epil, %.lr.ph34.epil.preheader
  %indvars.iv80.epil = phi i64 [ %indvars.iv.next81.epil, %.lr.ph34.epil ], [ %indvars.iv80.epil.init, %.lr.ph34.epil.preheader ] ; 3 uses
  %.09932.epil = phi float [ %i.ex, %.lr.ph34.epil ], [ %.09932.epil.init, %.lr.ph34.epil.preheader ]
  %epil.iter29 = phi i64 [ %epil.iter29.next, %.lr.ph34.epil ], [ 0, %.lr.ph34.epil.preheader ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv80.epil
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !148
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv85
  %i.eu = load float, ptr %i.et, align 4, !tbaa !149
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80.epil
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !149
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ew, float %.09932.epil) ; 2 uses
  %indvars.iv.next81.epil = add nuw nsw i64 %indvars.iv80.epil, 1
  %epil.iter29.next = add i64 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit, label %.lr.ph34.epil, !llvm.loop !414

_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit:        ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa, %.lr.ph34.epil, %.preheader
  %.099.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gd, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph34.epil ]
  %i.ey = fadd float %5, %.099.lcssa
  %i.ez = tail call float @llvm.rint.f32(float %i.ey)
  %i.fa = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.ez)
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %indvars.iv85
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !146
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %.preheader, !llvm.loop !415

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %.lr.ph34 ], [ 0, %.lr.ph34.preheader ] ; 6 uses
  %.09932 = phi float [ %i.gd, %.lr.ph34 ], [ 0.000000e+00, %.lr.ph34.preheader ]
  %niter34 = phi i64 [ %niter34.next.3, %.lr.ph34 ], [ 0, %.lr.ph34.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv80
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !148
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv85
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !149
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !149
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.fh, float %.09932)
  %indvars.iv.next81 = or disjoint i64 %indvars.iv80, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !148
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv85
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !149
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !149
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fo, float %i.fi)
  %indvars.iv.next81.1 = or disjoint i64 %indvars.iv80, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81.1
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !148
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv85
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !149
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81.1
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !149
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fv, float %i.fp)
  %indvars.iv.next81.2 = or disjoint i64 %indvars.iv80, 3 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next81.2
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv85
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !149
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81.2
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !149
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gc, float %i.fw) ; 3 uses
  %indvars.iv.next81.3 = add nuw nsw i64 %indvars.iv80, 4 ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit.loopexit.unr-lcssa, label %.lr.ph34, !llvm.loop !416

.loopexit:                                        ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit, %.preheader2, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn114.pn = phi { ptr, i32 } [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn114.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4gapi5fluidL13run_sepfilterIffEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree readonly captures(none) %.8.val, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = alloca [11 x ptr], align 16              ; 11 uses
  %i.b = alloca [11 x ptr], align 16              ; 20 uses
  %i.c = icmp slt i32 %2, 12
  %i.d = icmp slt i32 %4, 12
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 605) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %2, %4
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL13run_sepfilterIhhEEvRNS1_6BufferERKNS1_4ViewEPKfiS9_iRKNS_6Point_IiEEffPPf, ptr noundef nonnull @.str.2, i32 noundef 606) #28
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %9, align 8, !tbaa !40     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !41
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.k
  %.pn114 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.v

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = add nsw i32 %2, -1                       ; 2 uses
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = icmp sgt i32 %2, 0
  br i1 %i.v, label %.lr.ph, label %.preheader1.thread

.lr.ph:                                           ; preds = %bb.m
  %.neg103104108 = lshr i32 %i.t, 1
  %.neg103.zext = and i32 %.neg103104108, 127
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !106
  %invariant.op = sub i32 %i.x, %.neg103.zext     ; 5 uses
  %i.y = load ptr, ptr %.8.val, align 8, !tbaa !107 ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 10 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %2, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.o

._crit_edge.unr-lcssa:                            ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.aa
  %i.ab = sext i32 %.reass.epil to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !148
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.n, !llvm.loop !417

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.unr-lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !108 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !92 ; 4 uses
  switch i32 %2, label %.lr.ph16 [
    i32 3, label %bb.p
    i32 5, label %bb.q
  ]

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.o ]
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.an
  %i.ao = sext i32 %.reass to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !148
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.as
  %i.at = sext i32 %.reass.1 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !148
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.ax
  %i.ay = sext i32 %.reass.2 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.ba, ptr %i.bb, align 16, !tbaa !148
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.bc
  %i.bd = sext i32 %.reass.3 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !148
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.o, !llvm.loop !418

bb.p:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKfiiS4_S4_iffPS2_ii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bh, i32 noundef %i.bk)
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge
  %i.bl = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(188) ptr @_ZN2cv4gapi5fluid6Buffer4privEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !174
  call void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPfPPKfiiS4_S4_iffPS2_ii(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef %1, ptr noundef %3, i32 noundef %i.u, float noundef 1.000000e+00, float noundef %5, ptr noundef nonnull %6, i32 noundef %i.bl, i32 noundef %i.bo)
  br label %.loopexit

.lr.ph16:                                         ; preds = %._crit_edge
  %11 = mul i32 %i.am, %i.ak                      ; 4 uses
  %12 = icmp sgt i32 %11, 0
  %i.bp = sext i32 %i.u to i64                    ; 10 uses
  %i.bq = sext i32 %i.am to i64                   ; 10 uses
  %wide.trip.count79 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %12, label %.lr.ph16.split.us.split.us.preheader, label %.lr.ph7.us22.preheader

.lr.ph7.us22.preheader:                           ; preds = %.lr.ph16
  %xtraiter9 = and i64 %wide.trip.count, 3        ; 3 uses
  %i.br = icmp ult i32 %2, 4
  %unroll_iter13 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod11.not = icmp eq i64 %xtraiter9, 0
  %lcmp.mod12 = icmp ne i64 %xtraiter9, 0
  br label %.lr.ph7.us22

.lr.ph16.split.us.split.us.preheader:             ; preds = %.lr.ph16
  %wide.trip.count74 = zext nneg i32 %11 to i64
  %xtraiter16 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bs = icmp ult i32 %2, 4
  %unroll_iter20 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod18.not = icmp eq i64 %xtraiter16, 0
  %lcmp.mod19 = icmp ne i64 %xtraiter16, 0
  %xtraiter23 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bt = icmp ult i32 %2, 4
  %unroll_iter28 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod25.not = icmp eq i64 %xtraiter23, 0
  %lcmp.mod27 = icmp ne i64 %xtraiter23, 0
  br label %.lr.ph7.us.us

.lr.ph7.us.us:                                    ; preds = %._crit_edge13.split.us.us.us, %.lr.ph16.split.us.split.us.preheader
  %indvars.iv76 = phi i64 [ 0, %.lr.ph16.split.us.split.us.preheader ], [ %indvars.iv.next77, %._crit_edge13.split.us.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv76
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !148 ; 5 uses
  br i1 %i.bs, label %.epil.preheader15, label %.lr.ph7.us.us.new

.lr.ph7.us.us.new:                                ; preds = %.lr.ph7.us.us, %.lr.ph7.us.us.new
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.3, %.lr.ph7.us.us.new ], [ 0, %.lr.ph7.us.us ] ; 6 uses
  %niter21 = phi i64 [ %niter21.next.3, %.lr.ph7.us.us.new ], [ 0, %.lr.ph7.us.us ]
  %i.bw = sub nsw i64 %indvars.iv61, %i.bp
  %i.bx = mul nsw i64 %i.bw, %i.bq
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv61
  store ptr %i.by, ptr %i.bz, align 16, !tbaa !148
  %indvars.iv.next62 = or disjoint i64 %indvars.iv61, 1 ; 2 uses
  %i.ca = sub nsw i64 %indvars.iv.next62, %i.bp
  %i.cb = mul nsw i64 %i.ca, %i.bq
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next62
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !148
  %indvars.iv.next62.1 = or disjoint i64 %indvars.iv61, 2 ; 2 uses
  %i.ce = sub nsw i64 %indvars.iv.next62.1, %i.bp
  %i.cf = mul nsw i64 %i.ce, %i.bq
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next62.1
  store ptr %i.cg, ptr %i.ch, align 16, !tbaa !148
  %indvars.iv.next62.2 = or disjoint i64 %indvars.iv61, 3 ; 2 uses
  %i.ci = sub nsw i64 %indvars.iv.next62.2, %i.bp
  %i.cj = mul nsw i64 %i.ci, %i.bq
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next62.2
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !148
  %indvars.iv.next62.3 = add nuw nsw i64 %indvars.iv61, 4 ; 2 uses
  %niter21.next.3 = add i64 %niter21, 4           ; 2 uses
  %niter21.ncmp.3 = icmp eq i64 %niter21.next.3, %unroll_iter20
  br i1 %niter21.ncmp.3, label %.preheader3.us.us.unr-lcssa, label %.lr.ph7.us.us.new, !llvm.loop !419

.preheader3.us.us.unr-lcssa:                      ; preds = %.lr.ph7.us.us.new
  br i1 %lcmp.mod18.not, label %.preheader3.us.us, label %.epil.preheader15

.epil.preheader15:                                ; preds = %.preheader3.us.us.unr-lcssa, %.lr.ph7.us.us
  %indvars.iv61.epil.init = phi i64 [ 0, %.lr.ph7.us.us ], [ %indvars.iv.next62.3, %.preheader3.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader15
  %indvars.iv61.epil = phi i64 [ %indvars.iv.next62.epil, %bb.r ], [ %indvars.iv61.epil.init, %.epil.preheader15 ] ; 3 uses
  %epil.iter17 = phi i64 [ %epil.iter17.next, %bb.r ], [ 0, %.epil.preheader15 ]
  %i.cm = sub nsw i64 %indvars.iv61.epil, %i.bp
  %i.cn = mul nsw i64 %i.cm, %i.bq
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv61.epil
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !148
  %indvars.iv.next62.epil = add nuw nsw i64 %indvars.iv61.epil, 1
  %epil.iter17.next = add i64 %epil.iter17, 1     ; 2 uses
  %epil.iter17.cmp.not = icmp eq i64 %epil.iter17.next, %xtraiter16
  br i1 %epil.iter17.cmp.not, label %.preheader3.us.us, label %bb.r, !llvm.loop !420

.preheader3.us.us:                                ; preds = %bb.r, %.preheader3.us.us.unr-lcssa
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv76
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !148
  br label %.preheader2.us.us.us

.preheader2.us.us.us:                             ; preds = %._crit_edge11.us.us.us, %.preheader3.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %._crit_edge11.us.us.us ], [ 0, %.preheader3.us.us ] ; 7 uses
  br i1 %i.bt, label %.epil.preheader22, label %.preheader2.us.us.us.new

.preheader2.us.us.us.new:                         ; preds = %.preheader2.us.us.us, %.preheader2.us.us.us.new
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.3, %.preheader2.us.us.us.new ], [ 0, %.preheader2.us.us.us ] ; 6 uses
  %.01028.us.us.us = phi float [ %i.dt, %.preheader2.us.us.us.new ], [ 0.000000e+00, %.preheader2.us.us.us ]
  %niter29 = phi i64 [ %niter29.next.3, %.preheader2.us.us.us.new ], [ 0, %.preheader2.us.us.us ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv66
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !148
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv71
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !149
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv66
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !149
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cx, float %.01028.us.us.us)
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next67
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !148
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv71
  %i.dc = load float, ptr %i.db, align 4, !tbaa !149
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next67
  %i.de = load float, ptr %i.dd, align 4, !tbaa !149
  %i.df = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.de, float %i.cy)
  %indvars.iv.next67.1 = or disjoint i64 %indvars.iv66, 2 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next67.1
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !148
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv71
  %i.dj = load float, ptr %i.di, align 4, !tbaa !149
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next67.1
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !149
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dl, float %i.df)
  %indvars.iv.next67.2 = or disjoint i64 %indvars.iv66, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next67.2
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !148
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv71
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !149
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next67.2
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !149
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ds, float %i.dm) ; 3 uses
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %niter29.next.3 = add i64 %niter29, 4           ; 2 uses
  %niter29.ncmp.3 = icmp eq i64 %niter29.next.3, %unroll_iter28
  br i1 %niter29.ncmp.3, label %._crit_edge11.us.us.us.unr-lcssa, label %.preheader2.us.us.us.new, !llvm.loop !421

._crit_edge11.us.us.us.unr-lcssa:                 ; preds = %.preheader2.us.us.us.new
  br i1 %lcmp.mod25.not, label %._crit_edge11.us.us.us, label %.epil.preheader22

.epil.preheader22:                                ; preds = %._crit_edge11.us.us.us.unr-lcssa, %.preheader2.us.us.us
  %indvars.iv66.epil.init = phi i64 [ 0, %.preheader2.us.us.us ], [ %indvars.iv.next67.3, %._crit_edge11.us.us.us.unr-lcssa ]
  %.01028.us.us.us.epil.init = phi float [ 0.000000e+00, %.preheader2.us.us.us ], [ %i.dt, %._crit_edge11.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader22
  %indvars.iv66.epil = phi i64 [ %indvars.iv.next67.epil, %bb.s ], [ %indvars.iv66.epil.init, %.epil.preheader22 ] ; 3 uses
  %.01028.us.us.us.epil = phi float [ %i.ea, %bb.s ], [ %.01028.us.us.us.epil.init, %.epil.preheader22 ]
  %epil.iter24 = phi i64 [ %epil.iter24.next, %bb.s ], [ 0, %.epil.preheader22 ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv66.epil
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !148
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv71
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !149
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv66.epil
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !149
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dz, float %.01028.us.us.us.epil) ; 2 uses
  %indvars.iv.next67.epil = add nuw nsw i64 %indvars.iv66.epil, 1
  %epil.iter24.next = add i64 %epil.iter24, 1     ; 2 uses
  %epil.iter24.cmp.not = icmp eq i64 %epil.iter24.next, %xtraiter23
  br i1 %epil.iter24.cmp.not, label %._crit_edge11.us.us.us, label %bb.s, !llvm.loop !422

._crit_edge11.us.us.us:                           ; preds = %bb.s, %._crit_edge11.us.us.us.unr-lcssa
  %.lcssa4 = phi float [ %i.dt, %._crit_edge11.us.us.us.unr-lcssa ], [ %i.ea, %bb.s ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv71
  store float %.lcssa4, ptr %i.eb, align 4, !tbaa !149
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge13.split.us.us.us, label %.preheader2.us.us.us, !llvm.loop !423

._crit_edge13.split.us.us.us:                     ; preds = %._crit_edge11.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader1, label %.lr.ph7.us.us, !llvm.loop !424

.lr.ph7.us22:                                     ; preds = %.lr.ph7.us22.preheader, %..preheader3_crit_edge.us24
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %..preheader3_crit_edge.us24 ], [ 0, %.lr.ph7.us22.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !148 ; 5 uses
  br i1 %i.br, label %.epil.preheader8, label %.lr.ph7.us22.new

.lr.ph7.us22.new:                                 ; preds = %.lr.ph7.us22, %.lr.ph7.us22.new
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.3, %.lr.ph7.us22.new ], [ 0, %.lr.ph7.us22 ] ; 6 uses
  %niter14 = phi i64 [ %niter14.next.3, %.lr.ph7.us22.new ], [ 0, %.lr.ph7.us22 ]
  %i.ee = sub nsw i64 %indvars.iv43, %i.bp
  %i.ef = mul nsw i64 %i.ee, %i.bq
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43
  store ptr %i.eg, ptr %i.eh, align 16, !tbaa !148
  %indvars.iv.next44 = or disjoint i64 %indvars.iv43, 1 ; 2 uses
  %i.ei = sub nsw i64 %indvars.iv.next44, %i.bp
  %i.ej = mul nsw i64 %i.ei, %i.bq
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next44
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !148
  %indvars.iv.next44.1 = or disjoint i64 %indvars.iv43, 2 ; 2 uses
  %i.em = sub nsw i64 %indvars.iv.next44.1, %i.bp
  %i.en = mul nsw i64 %i.em, %i.bq
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next44.1
  store ptr %i.eo, ptr %i.ep, align 16, !tbaa !148
  %indvars.iv.next44.2 = or disjoint i64 %indvars.iv43, 3 ; 2 uses
  %i.eq = sub nsw i64 %indvars.iv.next44.2, %i.bp
  %i.er = mul nsw i64 %i.eq, %i.bq
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next44.2
  store ptr %i.es, ptr %i.et, align 8, !tbaa !148
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %niter14.next.3 = add i64 %niter14, 4           ; 2 uses
  %niter14.ncmp.3 = icmp eq i64 %niter14.next.3, %unroll_iter13
  br i1 %niter14.ncmp.3, label %..preheader3_crit_edge.us24.unr-lcssa, label %.lr.ph7.us22.new, !llvm.loop !419

..preheader3_crit_edge.us24.unr-lcssa:            ; preds = %.lr.ph7.us22.new
  br i1 %lcmp.mod11.not, label %..preheader3_crit_edge.us24, label %.epil.preheader8

.epil.preheader8:                                 ; preds = %..preheader3_crit_edge.us24.unr-lcssa, %.lr.ph7.us22
  %indvars.iv43.epil.init = phi i64 [ 0, %.lr.ph7.us22 ], [ %indvars.iv.next44.3, %..preheader3_crit_edge.us24.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader8
  %indvars.iv43.epil = phi i64 [ %indvars.iv.next44.epil, %bb.t ], [ %indvars.iv43.epil.init, %.epil.preheader8 ] ; 3 uses
  %epil.iter10 = phi i64 [ %epil.iter10.next, %bb.t ], [ 0, %.epil.preheader8 ]
  %i.eu = sub nsw i64 %indvars.iv43.epil, %i.bp
  %i.ev = mul nsw i64 %i.eu, %i.bq
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43.epil
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !148
  %indvars.iv.next44.epil = add nuw nsw i64 %indvars.iv43.epil, 1
  %epil.iter10.next = add i64 %epil.iter10, 1     ; 2 uses
  %epil.iter10.cmp.not = icmp eq i64 %epil.iter10.next, %xtraiter9
  br i1 %epil.iter10.cmp.not, label %..preheader3_crit_edge.us24, label %bb.t, !llvm.loop !425

..preheader3_crit_edge.us24:                      ; preds = %bb.t, %..preheader3_crit_edge.us24.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count79
  br i1 %exitcond52.not, label %.preheader1, label %.lr.ph7.us22, !llvm.loop !424

.preheader1:                                      ; preds = %..preheader3_crit_edge.us24, %._crit_edge13.split.us.us.us
  %i.ey = icmp sgt i32 %11, 0
  br i1 %i.ey, label %.preheader.us.preheader, label %.loopexit

.preheader1.thread:                               ; preds = %bb.m
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !144    ; 3 uses
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = load ptr, ptr %15, align 8, !tbaa !108    ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %18 = load i32, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 28
  %20 = load i32, ptr %19, align 4, !tbaa !92
  %21 = mul i32 %20, %18                          ; 3 uses
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %.preheader.lr.ph.split, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader1
  %wide.trip.count94 = zext nneg i32 %11 to i64
  %xtraiter31 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.ez = icmp ult i32 %2, 4
  %unroll_iter36 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod33.not = icmp eq i64 %xtraiter31, 0
  %lcmp.mod35 = icmp ne i64 %xtraiter31, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge34.us
  %indvars.iv91 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next92, %._crit_edge34.us ] ; 7 uses
  br i1 %i.ez, label %.epil.preheader30, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.09931.us = phi float [ %i.gb, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter37 = phi i64 [ %niter37.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv86
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !148
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv91
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !149
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv86
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !149
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ff, float %.09931.us)
  %indvars.iv.next87 = or disjoint i64 %indvars.iv86, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next87
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !148
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv91
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !149
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next87
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !149
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fm, float %i.fg)
  %indvars.iv.next87.1 = or disjoint i64 %indvars.iv86, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next87.1
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !148
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv91
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !149
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next87.1
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !149
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ft, float %i.fn)
  %indvars.iv.next87.2 = or disjoint i64 %indvars.iv86, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next87.2
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !148
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv91
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !149
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next87.2
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !149
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.ga, float %i.fu) ; 3 uses
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %niter37.next.3 = add i64 %niter37, 4           ; 2 uses
  %niter37.ncmp.3 = icmp eq i64 %niter37.next.3, %unroll_iter36
  br i1 %niter37.ncmp.3, label %._crit_edge34.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !426

._crit_edge34.us.unr-lcssa:                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod33.not, label %._crit_edge34.us, label %.epil.preheader30

.epil.preheader30:                                ; preds = %._crit_edge34.us.unr-lcssa, %.preheader.us
  %indvars.iv86.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next87.3, %._crit_edge34.us.unr-lcssa ]
  %.09931.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.gb, %._crit_edge34.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader30
  %indvars.iv86.epil = phi i64 [ %indvars.iv86.epil.init, %.epil.preheader30 ], [ %indvars.iv.next87.epil, %bb.u ] ; 3 uses
  %.09931.us.epil = phi float [ %.09931.us.epil.init, %.epil.preheader30 ], [ %i.gi, %bb.u ]
  %epil.iter32 = phi i64 [ 0, %.epil.preheader30 ], [ %epil.iter32.next, %bb.u ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv86.epil
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !148
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv91
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !149
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv86.epil
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !149
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gh, float %.09931.us.epil) ; 2 uses
  %indvars.iv.next87.epil = add nuw nsw i64 %indvars.iv86.epil, 1
  %epil.iter32.next = add i64 %epil.iter32, 1     ; 2 uses
  %epil.iter32.cmp.not = icmp eq i64 %epil.iter32.next, %xtraiter31
  br i1 %epil.iter32.cmp.not, label %._crit_edge34.us, label %bb.u, !llvm.loop !427

._crit_edge34.us:                                 ; preds = %bb.u, %._crit_edge34.us.unr-lcssa
  %.lcssa = phi float [ %i.gb, %._crit_edge34.us.unr-lcssa ], [ %i.gi, %bb.u ]
  %i.gj = fadd float %5, %.lcssa
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv91
  store float %i.gj, ptr %i.gk, align 4, !tbaa !149
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.loopexit, label %.preheader.us, !llvm.loop !428

.preheader.lr.ph.split:                           ; preds = %.preheader1.thread
  %i.gl = fadd float %5, 0.000000e+00             ; 2 uses
  %wide.trip.count84 = zext nneg i32 %21 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %21, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph.split
  %n.vec = and i64 %wide.trip.count84, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %index ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x float> %broadcast.splat, ptr %i.gm, align 4, !tbaa !149
  store <4 x float> %broadcast.splat, ptr %i.gn, align 4, !tbaa !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !429

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count84
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split, %middle.block
  %indvars.iv81.ph = phi i64 [ 0, %.preheader.lr.ph.split ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.preheader ], [ %indvars.iv81.ph, %.preheader.preheader ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv81
  store float %i.gl, ptr %i.gp, align 4, !tbaa !149
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.preheader, !llvm.loop !430

.loopexit:                                        ; preds = %.preheader, %._crit_edge34.us, %middle.block, %.preheader1.thread, %.preheader1, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn114.pn = phi { ptr, i32 } [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn114.pn
}

declare void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPhPPKhiiPKfS7_iffPPfii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPsPPKhiiPKfS7_iffPPfii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKhiiPKfS7_iffPS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPtPPKtiiPKfS7_iffPPfii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKtiiPKfS7_iffPS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPsPPKsiiPKfS7_iffPPfii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKsiiPKfS7_iffPS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4gapi5fluid21run_sepfilter5x5_implEPfPPKfiiS4_S4_iffPS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail14scratch_helperILb1ENS_4gapi5fluid15GFluidSepFilterEJNS_4GMatEiNS_3MatES6_NS_6Point_IiEENS_7Scalar_IdEEiSA_EE14help_init_implIJLi0ELi1ELi2ELi3ELi4ELi5ELi6ELi7EEEEvRKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EERNS3_6BufferENS0_3SeqIJXspT_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %5 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %6 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %7 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %8 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %9 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %10 = alloca %"struct.cv::GMatDesc", align 8    ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Point_", align 8       ; 5 uses
  %14 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %15 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.14, i64 noundef 1, i64 noundef %i.g) #28
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIiEE, i64 0) #24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.e

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %9, align 8, !tbaa !27
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %9) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.d:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body

bb.e:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %.not.i.i.i28.not = icmp eq i64 %i.f, 32
  br i1 %.not.i.i.i28.not, label %bb.f, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i29

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.14, i64 noundef 2, i64 noundef %i.g) #28
          to label %.noexc31 unwind label %bb.ac

.noexc31:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i29:   ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29, !noalias !439 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i29
  %i.r = call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_3MatEEE, i64 0) #24, !noalias !439 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i30, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i

_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !439
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %8, align 8, !tbaa !27, !noalias !439
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
          to label %bb.g unwind label %bb.h, !noalias !439

bb.g:                                             ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.h:                                             ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !439
  br label %.body32

_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i:          ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.t)
          to label %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit unwind label %bb.ac

_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit: ; preds = %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !150, !noalias !440
  %i.v = load ptr, ptr %1, align 8, !tbaa !63, !noalias !440 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %.not.i.i.i35 = icmp ugt i64 %i.z, 3
  br i1 %.not.i.i.i35, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i36, label %bb.i

bb.i:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.14, i64 noundef 3, i64 noundef %i.z) #28
          to label %.noexc41 unwind label %bb.ad

.noexc41:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i36:   ; preds = %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29, !noalias !440 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i40, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i37

_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i37: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i36
  %i.ad = call ptr @__dynamic_cast(ptr nonnull %i.ab, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_3MatEEE, i64 0) #24, !noalias !440 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i38, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i40, label %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i39

_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i40: ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i37, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !440
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %7, align 8, !tbaa !27, !noalias !440
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
          to label %bb.j unwind label %bb.k, !noalias !440

bb.j:                                             ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i40
  unreachable

bb.k:                                             ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i40
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24, !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !440
  br label %.body42

_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i39:        ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
          to label %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit45 unwind label %bb.ad

_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit45: ; preds = %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.ah = load ptr, ptr %1, align 8, !tbaa !63    ; 5 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = ashr exact i64 %i.ak, 4                 ; 5 uses
  %.not.i.i.i46 = icmp ugt i64 %i.al, 4
  br i1 %.not.i.i.i46, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i47, label %bb.l

bb.l:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit45
end_hunk_0
