Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/chunked_array?download=true
inline.NumInlined: 1037
inline.NumDeleted: 463
begin_hunk_0_@_ZNK5arrow12ChunkedArray5SliceEll:bb.a
  %7 = alloca %"class.std::shared_ptr.12", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not = icmp sgt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %.critedge36, !prof !50

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull @.str, i32 noundef 177, i32 noundef 3)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA38_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(38) @.str.7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA39_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(39) @.str.8)
          to label %.critedge35 unwind label %bb.e ; 0 uses

.critedge35:                                      ; preds = %bb.c
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre = load i64, ptr %i.a, align 8, !tbaa !94
  br label %.critedge36

.critedge36:                                      ; preds = %bb.a, %.critedge35
  %i.e = phi i64 [ %i.b, %bb.a ], [ %.pre, %.critedge35 ]
  %i.f = icmp eq i64 %2, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = load ptr, ptr %1, align 8, !tbaa !49     ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4                   ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.preheader

.lr.ph.preheader:                                 ; preds = %.critedge36
  %wide.trip.count = and i64 %i.m, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.02563 = phi i64 [ %2, %.lr.ph.preheader ], [ %i.v, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81   ; 2 uses
  %.not27 = icmp slt i64 %.02563, %i.u
  br i1 %.not27, label %.critedge.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = sub nsw i64 %.02563, %i.u                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !217

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.av

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit
  %storemerge.lcssa = phi i32 [ %i.x, %.critedge.split.loop.exit ], [ %i.n, %bb.d ] ; 2 uses
  %.025.lcssa = phi i64 [ %.02563, %.critedge.split.loop.exit ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.y = icmp eq i64 %3, 0
  %or.cond = or i1 %i.y, %i.f
  br i1 %or.cond, label %bb.o, label %.preheader

.preheader:                                       ; preds = %.critedge.thread, %.critedge
  %.025.lcssa112 = phi i64 [ %2, %.critedge.thread ], [ %.025.lcssa, %.critedge ] ; 2 uses
  %storemerge.lcssa111 = phi i32 [ 0, %.critedge.thread ], [ %storemerge.lcssa, %.critedge ] ; 2 uses
  %i.z = icmp slt i32 %storemerge.lcssa111, %i.n
  %i.aa = icmp sgt i64 %3, 0
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.af = zext i32 %storemerge.lcssa111 to i64    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %.025.lcssa112, i64 noundef %3)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph75
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 5 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !40
  %.not.i.i39.peel = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i39.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !43
  %i.al = load <2 x ptr>, ptr %7, align 16, !tbaa !44
  store ptr null, ptr %i.ae, align 8, !tbaa !43
  store <2 x ptr> %i.al, ptr %i.ai, align 8, !tbaa !44
  store ptr null, ptr %7, align 16, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !48
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41.peel

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41.peel unwind label %.loopexit.split-lp83

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41.peel: ; preds = %bb.h, %bb.g
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 8 uses
  %.not.i.i42.peel = icmp eq ptr %i.an, null
  br i1 %.not.i.i42.peel, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41.peel
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i43.peel = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i43.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.ao, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.peel

bb.l:                                             ; preds = %bb.j
  %i.au = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.peel: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i45.peel = phi i32 [ %i.ar, %bb.k ], [ %i.au, %bb.l ]
  %i.av = icmp eq i32 %.0.i.i.i.i45.peel, 1
  br i1 %i.av, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel

bb.n:                                             ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !60
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #20, !inline_history !7
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #20, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel: ; preds = %bb.n, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.peel, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bd = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.af
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !81
  %.neg.peel = add i64 %3, %.025.lcssa112
  %i.bk = sub i64 %.neg.peel, %i.bj               ; 2 uses
  %indvars.iv.next78.peel = add nuw nsw i64 %i.af, 1 ; 2 uses
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bd to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 4
  %i.bq = trunc i64 %i.bp to i32
  %i.br = trunc nuw i64 %indvars.iv.next78.peel to i32
  %i.bs = icmp slt i32 %i.br, %i.bq
  %i.bt = icmp sgt i64 %i.bk, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.peel.next, label %.loopexit

bb.o:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bv = add nsw i32 %i.n, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %storemerge.lcssa)
  %8 = sext i32 %.sroa.speculated to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !48 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.cc, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load <2 x ptr>, ptr %6, align 16, !tbaa !44
  store ptr null, ptr %i.cd, align 8, !tbaa !43
  store <2 x ptr> %i.ce, ptr %i.bz, align 8, !tbaa !44
  store ptr null, ptr %6, align 16, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !48
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.aa

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.q, %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ci, align 8, !tbaa !59
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !60
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #20, !inline_history !7
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #20, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.cv, %bb.w ]
  %i.cw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cw, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.loopexit

bb.y:                                             ; preds = %.loopexit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn29 = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.cy, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46 ], [ %indvars.iv.next78.peel, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel ] ; 3 uses
  %i.da = phi ptr [ %i.dy, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46 ], [ %i.bd, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel ]
  %.02474 = phi i64 [ %i.ef, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46 ], [ %i.bk, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.peel ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv77
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !53
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 noundef 0, i64 noundef %.02474)
          to label %bb.ac unwind label %.loopexit81

bb.ac:                                            ; preds = %.peel.next
  %i.dd = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 5 uses
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !40
  %.not.i.i39 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i39, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr null, ptr %i.df, align 8, !tbaa !43
  %i.dg = load <2 x ptr>, ptr %7, align 16, !tbaa !44
  store ptr null, ptr %i.ae, align 8, !tbaa !43
  store <2 x ptr> %i.dg, ptr %i.dd, align 8, !tbaa !44
  store ptr null, ptr %7, align 16, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.dh, ptr %i.ac, align 8, !tbaa !48
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41 unwind label %.loopexit82

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41: ; preds = %bb.ad, %bb.ae
  %i.di = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 8 uses
  %.not.i.i42 = icmp eq ptr %i.di, null
  br i1 %.not.i.i42, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.dj, align 8, !tbaa !59
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !60
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20, !inline_history !7
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46

bb.ah:                                            ; preds = %bb.af
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i43 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i43, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44

bb.aj:                                            ; preds = %bb.ah
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i45 = phi i32 [ %i.dm, %bb.ai ], [ %i.dw, %bb.aj ]
  %i.dx = icmp eq i32 %.0.i.i.i.i45, 1
  br i1 %i.dx, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, !prof !50

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit41, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dy = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv77
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !56
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !81
  %i.ef = sub i64 %.02474, %i.ee                  ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.dy to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = lshr exact i64 %i.ej, 4
end_hunk_0
