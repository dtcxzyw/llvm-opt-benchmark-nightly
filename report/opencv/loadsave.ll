Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/loadsave?download=true
inline.NumInlined: 3168
inline.NumDeleted: 1271
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_:bb.a
  br i1 %.not.i.i355, label %_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.hy

bb.hy:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8 ; 4 uses
  %i.uf = load atomic i64, ptr %i.ue acquire, align 8 ; 2 uses
  %i.ug = icmp eq i64 %i.uf, 4294967297
  %i.uh = trunc i64 %i.uf to i32                  ; 2 uses
  br i1 %i.ug, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 0, ptr %i.ue, align 8, !tbaa !37
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  store i32 0, ptr %i.ui, align 4, !tbaa !38
  %i.uj = load ptr, ptr %i.ud, align 8, !tbaa !40
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8
  call void %i.ul(ptr noundef nonnull align 8 dereferenceable(16) %i.ud) #28, !inline_history !4
  %i.um = load ptr, ptr %i.ud, align 8, !tbaa !40
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(16) %i.ud) #28, !inline_history !4
  br label %_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ia:                                            ; preds = %bb.hy
  %i.up = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i356 = icmp eq i8 %i.up, 0
  br i1 %.not.i.i.i356, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.uq = add nsw i32 %i.uh, -1
  store i32 %i.uq, ptr %i.ue, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i357

bb.ic:                                            ; preds = %bb.ia
  %i.ur = atomicrmw volatile add ptr %i.ue, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i357

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i357: ; preds = %bb.ic, %bb.ib
  %.0.i.i.i.i358 = phi i32 [ %i.uh, %bb.ib ], [ %i.ur, %bb.ic ]
  %i.us = icmp eq i32 %.0.i.i.i.i358, 1
  br i1 %i.us, label %bb.id, label %_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.id:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i357
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ud) #28
  br label %_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354, %bb.hz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i357, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ut = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !27
  %.not.i359 = icmp eq i32 %i.uu, 0
  br i1 %.not.i359, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.uv = landingpad { ptr, i32 }
          catch ptr null
  %i.uw = extractvalue { ptr, i32 } %i.uv, 0
  call void @__clang_call_terminate(ptr %i.uw) #29
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i1 %.1366

bb.ig:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %bb.hv, %bb.hi, %bb.hf, %bb.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %bb.ff, %bb.fe
  %.pn176.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn, %bb.hf ], [ %i.oj, %bb.ff ], [ %i.oi, %bb.fe ], [ %.pn160.pn.pn.pn, %bb.gn ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %i.rr, %bb.hi ], [ %i.te, %bb.hv ], [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335 ]
  %i.ux = load ptr, ptr %34, align 8, !tbaa !53   ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.ik
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.ig
  %i.uz = load i64, ptr %i.ik, align 8, !tbaa !34
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.va) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.ih

bb.ih:                                            ; preds = %bb.df, %bb.ea, %bb.dj, %bb.et, %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %bb.cz, %bb.cw
  %.pn212.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn, %bb.cw ], [ %i.gy, %bb.cz ], [ %.pn176.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %i.iz, %bb.df ], [ %i.jc, %bb.dj ], [ %.pn190.pn.pn, %bb.ea ], [ %.pn182.pn.pn, %bb.et ], [ %i.la, %bb.ec ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.k
  %.pn219.pn = phi { ptr, i32 } [ %.pn219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %.pn212.pn.pn.pn, %bb.ih ], [ %i.l, %bb.k ], [ %.pn151, %bb.ac ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn219.pn.pn = phi { ptr, i32 } [ %.pn219.pn, %bb.ii ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN2cv16BaseImageEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.f
  %.pn219.pn.pn.pn = phi { ptr, i32 } [ %.pn219.pn.pn, %bb.ij ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn219.pn.pn.pn

bb.il:                                            ; preds = %bb.hf, %bb.gn
  %i.vb = landingpad { ptr, i32 }
          catch ptr null
  %i.vc = extractvalue { ptr, i32 } %i.vb, 0
  call void @__clang_call_terminate(ptr %i.vc) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL11findEncoderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = icmp ult i64 %.8.val, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.0.val, i32 noundef 46) #34 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isalnum(i32 noundef %i.f) #34
  %.not52 = icmp eq i32 %i.g, 0
  br i1 %.not52, label %.critedge.split.loop.exit67, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !348

.critedge.split.loop.exit67:                      ; preds = %bb.f
  %i.h = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.split.loop.exit67
  %.049.lcssa = phi i32 [ %i.h, %.critedge.split.loop.exit67 ], [ 128, %bb.g ] ; 4 uses
  %i.i = load atomic i8, ptr @_ZGVZN2cvL9getCodecsEvE8g_codecs acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.h, label %_ZN2cvL9getCodecsEv.exit, !prof !145

bb.h:                                             ; preds = %.critedge
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL9getCodecsEvE8g_codecs) #28
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN2cvL9getCodecsEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv21ImageCodecInitializerC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cvL9getCodecsEvE8g_codecs)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN2cv21ImageCodecInitializerD2Ev, ptr nonnull @_ZZN2cvL9getCodecsEvE8g_codecs, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL9getCodecsEvE8g_codecs) #28
  br label %_ZN2cvL9getCodecsEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL9getCodecsEvE8g_codecs) #28
  br label %common.resume

_ZN2cvL9getCodecsEv.exit:                         ; preds = %.critedge, %bb.h, %bb.j
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 32), align 8, !tbaa !148
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 24), align 8, !tbaa !149 ; 3 uses
  %.not5819.not = icmp eq ptr %i.n, %i.o
  br i1 %.not5819.not, label %.critedge62, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cvL9getCodecsEv.exit
  %.not34 = icmp eq i32 %.049.lcssa, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  br i1 %.not34, label %.lr.ph.split.split.us, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count.a = zext i32 %.049.lcssa to i64 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us
  %i.q = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us ], [ %i.o, %.lr.ph.split.us.preheader ]
  %.04820.us = phi i64 [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.04820.us
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
  %i.w = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %i.x = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.w, i32 noundef 40) #34 ; 2 uses
  %.not538.us = icmp eq ptr %i.x, null
  br i1 %.not538.us, label %._crit_edge11.split.us.us, label %.lr.ph10.us

.lr.ph10.us:                                      ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.y, i32 noundef 46) #34 ; 2 uses
  %.not54.us18.us = icmp eq ptr %i.z, null
  br i1 %.not54.us18.us, label %._crit_edge11.split.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph10.us, %bb.o
  %i.aa = phi ptr [ %i.at, %bb.o ], [ %i.z, %.lr.ph10.us ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.us.us
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %bb.n ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv41
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ae = sext i8 %i.ad to i32                    ; 2 uses
  %i.af = call i32 @isalnum(i32 noundef %i.ae) #34
  %.not55.us.us = icmp eq i32 %i.af, 0
  br i1 %.not55.us.us, label %.critedge4.us.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv41
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = sext i8 %i.ah to i32
  %i.aj = call i32 @tolower(i32 noundef %i.ai) #34
  %i.ak = call i32 @tolower(i32 noundef %i.ae) #34
  %.not56.us.us = icmp eq i32 %i.aj, %i.ak
  br i1 %.not56.us.us, label %bb.n, label %.critedge4.us.us

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count.a
  br i1 %exitcond44.not, label %.critedge4.us.us.thread, label %bb.l, !llvm.loop !349

.critedge4.us.us:                                 ; preds = %bb.l, %bb.m
  %2 = trunc nuw nsw i64 %indvars.iv41 to i32     ; 3 uses
  %i.al = icmp eq i32 %.049.lcssa, %2
  br i1 %i.al, label %.critedge4.us.us.thread, label %bb.o

.critedge4.us.us.thread:                          ; preds = %bb.n, %.critedge4.us.us
  %.045.lcssa.us.us61 = phi i32 [ %2, %.critedge4.us.us ], [ %.049.lcssa, %bb.n ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %wide.trip.count.a
  %i.an = load i8, ptr %i.am, align 1, !tbaa !34
  %i.ao = sext i8 %i.an to i32
  %i.ap = call i32 @isalnum(i32 noundef %i.ao) #34
  %.not57.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not57.us.us, label %.split.us, label %bb.o

bb.o:                                             ; preds = %.critedge4.us.us.thread, %.critedge4.us.us
  %.045.lcssa.us.us60 = phi i32 [ %.045.lcssa.us.us61, %.critedge4.us.us.thread ], [ %2, %.critedge4.us.us ]
  %i.aq = zext nneg i32 %.045.lcssa.us.us60 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 46) #34 ; 2 uses
  %.not54.us.us = icmp eq ptr %i.at, null
  br i1 %.not54.us.us, label %._crit_edge11.split.us.us, label %.lr.ph.us.us

._crit_edge11.split.us.us:                        ; preds = %bb.o, %.lr.ph10.us, %.lr.ph.split.us
  %i.au = icmp eq ptr %i.w, %i.p
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.us: ; preds = %._crit_edge11.split.us.us
  %i.av = load i64, ptr %i.p, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us: ; preds = %._crit_edge11.split.us.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.us
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ax = add nuw i64 %.04820.us, 1               ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 32), align 8, !tbaa !148
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 24), align 8, !tbaa !149 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  %.not58.us = icmp ult i64 %i.ax, %i.bd
  br i1 %.not58.us, label %.lr.ph.split.us, label %.critedge62, !llvm.loop !350

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30
  %i.be = phi ptr [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30 ], [ %i.o, %.lr.ph ]
  %.04820.us25 = phi i64 [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30 ], [ 0, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.04820.us25
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(208) %i.bg)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %i.bl = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bk, i32 noundef 40) #34 ; 2 uses
  %.not538.us26 = icmp eq ptr %i.bl, null
  br i1 %.not538.us26, label %._crit_edge11.split.us, label %.lr.ph10.us27

.lr.ph10.us27:                                    ; preds = %.lr.ph.split.split.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bm, i32 noundef 46) #34 ; 2 uses
  %.not5412.us = icmp eq ptr %i.bn, null
  br i1 %.not5412.us, label %._crit_edge11.split.us, label %.critedge4.us13.us

.critedge4.us13.us:                               ; preds = %.lr.ph10.us27, %bb.p
  %i.bo = phi ptr [ %i.bu, %bb.p ], [ %i.bn, %.lr.ph10.us27 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %i.br = sext i8 %i.bq to i32
  %i.bs = call i32 @isalnum(i32 noundef %i.br) #34
  %.not57.us14.us = icmp eq i32 %i.bs, 0
  br i1 %.not57.us14.us, label %.split.us, label %bb.p

bb.p:                                             ; preds = %.critedge4.us13.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bu = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bt, i32 noundef 46) #34 ; 2 uses
  %.not54.us15.us = icmp eq ptr %i.bu, null
  br i1 %.not54.us15.us, label %._crit_edge11.split.us, label %.critedge4.us13.us

._crit_edge11.split.us:                           ; preds = %bb.p, %.lr.ph10.us27, %.lr.ph.split.split.us
  %i.bv = icmp eq ptr %i.bk, %i.p
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.us28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.us28: ; preds = %._crit_edge11.split.us
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !34
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30: ; preds = %._crit_edge11.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.us28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.by = add nuw i64 %.04820.us25, 1             ; 2 uses
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 32), align 8, !tbaa !148
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 24), align 8, !tbaa !149 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 4
  %.not58.us31 = icmp ult i64 %i.by, %i.ce
  br i1 %.not58.us31, label %.lr.ph.split.split.us, label %.critedge62, !llvm.loop !350

.split.us:                                        ; preds = %.critedge4.us.us.thread, %.critedge4.us13.us
  %.us-phi = phi i64 [ %.04820.us25, %.critedge4.us13.us ], [ %.04820.us, %.critedge4.us.us.thread ]
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cvL9getCodecsEvE8g_codecs, i64 24), align 8, !tbaa !149
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.us-phi
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !138 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %i.ch)
          to label %.critedge60 unwind label %bb.q

bb.q:                                             ; preds = %.split.us
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.p
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.co = load i64, ptr %i.p, align 8, !tbaa !34
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %common.resume

.critedge60:                                      ; preds = %.split.us
  %i.cq = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.p
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %.critedge60
  %i.cs = load i64, ptr %i.p, align 8, !tbaa !34
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %.critedge60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.r

.critedge62:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.us30, %_ZN2cvL9getCodecsEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.d, %.critedge62, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !38
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

end_hunk_0
