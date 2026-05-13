inline.NumInlined: 716
inline.NumDeleted: 392
begin_hunk_0_@_ZN7libfsst11SymbolTable8finalizeEh:bb.a
bb.q:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.r:                                             ; preds = %.preheader, %bb.t
  %indvars.iv94 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next95, %bb.t ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv94 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !7  ; 2 uses
  %i.do = icmp ult i64 %i.dn, 4060020736
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = lshr i64 %i.dn, 16
  %i.dq = and i64 %i.dp, 255
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !10
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !81
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, 1024
  br i1 %exitcond97.not, label %bb.q, label %bb.r, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.c, %vector.body ]
  %vec.phi224 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.d, %vector.body ]
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <2 x i64>, ptr %i.a, align 8, !tbaa !31
  %wide.load225 = load <2 x i64>, ptr %i.b, align 8, !tbaa !31
  %i.c = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.d = add <2 x i64> %wide.load225, %vec.phi224 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.d, %i.c
  %i.f = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader249

.lr.ph.preheader249:                              ; preds = %.lr.ph.preheader, %middle.block
  %.094.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.04093.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa223 = phi i64 [ %i.f, %middle.block ], [ %i.l, %.lr.ph ]
  %i.g = icmp ult i64 %.lcssa223, 16384
  br i1 %i.g, label %.lr.ph120, label %bb.h

.lr.ph120:                                        ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader249, %.lr.ph
  %.094 = phi i64 [ %i.l, %.lr.ph ], [ %.094.ph, %.lr.ph.preheader249 ]
  %.04093 = phi i64 [ %i.m, %.lr.ph ], [ %.04093.ph, %.lr.ph.preheader249 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04093
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = add i64 %i.k, %.094                      ; 2 uses
  %i.m = add nuw i64 %.04093, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

bb.b:                                             ; preds = %.lr.ph120, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit
  %i.n = phi ptr [ null, %.lr.ph120 ], [ %i.aj, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.o = phi ptr [ null, %.lr.ph120 ], [ %i.ak, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.045119 = phi i64 [ 0, %.lr.ph120 ], [ %i.am, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.p = phi ptr [ null, %.lr.ph120 ], [ %i.al, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.045119 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  store ptr %i.r, ptr %i.o, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !40
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc51 unwind label %.loopexit86 ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !45
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp sgt i64 %i.v, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %.noexc51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.p, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %.noexc51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !89
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit:    ; preds = %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c
  %i.aj = phi ptr [ %i.ai, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.n, %bb.c ]
  %i.ak = phi ptr [ %i.ah, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.s, %bb.c ]
  %i.al = phi ptr [ %i.ad, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.am = add nuw i64 %.045119, 1                 ; 2 uses
  %exitcond147.not = icmp eq i64 %i.am, %4
  br i1 %exitcond147.not, label %.loopexit, label %bb.b, !llvm.loop !90

.loopexit86:                                      ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %0, align 8
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %._crit_edge
  %i.an = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !91    ; 3 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !91
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #23
  br label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #23
  br label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i, %bb.h
  %i.aq = tail call noundef ptr @_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 4 uses
  %i.ar = add i64 %4, 64                          ; 4 uses
  %i.as = icmp ugt i64 %i.ar, 1152921504606846975
  br i1 %i.as, label %.noexc54, label %bb.k

.noexc54:                                         ; preds = %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
  unreachable

bb.k:                                             ; preds = %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !93 ; 4 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = icmp ult i64 %i.az, %i.ar
  br i1 %i.ba, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ax                    ; 3 uses
  %i.bf = shl nuw nsw i64 %i.ar, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21 ; 4 uses
  %i.bh = icmp sgt i64 %i.be, 0
  br i1 %i.bh, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.av, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.bg, ptr %i.aq, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.bi, ptr %i.bb, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ar
  store ptr %i.bj, ptr %i.at, align 8, !tbaa !96
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.041113 = phi i64 [ 13780475904564809, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.085.idx112 = phi i64 [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.085.add, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.bm = phi ptr [ null, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.dd, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %i.bn = phi ptr [ null, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.dc, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.bo = phi ptr [ null, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.db, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %.085.ptr114 = getelementptr inbounds nuw i8, ptr %1, i64 %.085.idx112 ; 3 uses
  %i.bp = mul i64 %.041113, 2971215073            ; 2 uses
  %i.bq = lshr i64 %i.bp, 15
  %i.br = xor i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = urem i64 %i.br, %4                      ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !31 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %bb.n, %.lr.ph97
  %.03995 = phi i64 [ %spec.store.select, %.lr.ph97 ], [ %i.bs, %bb.n ]
  %i.bw = add i64 %.03995, 1                      ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %4
  %spec.store.select = select i1 %i.bx, i64 0, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %spec.store.select
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !31 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph97, label %._crit_edge98, !llvm.loop !98

._crit_edge98:                                    ; preds = %.lr.ph97, %bb.n
  %.039.lcssa = phi i64 [ %i.bs, %bb.n ], [ %spec.store.select, %.lr.ph97 ]
  %.lcssa = phi i64 [ %i.bu, %bb.n ], [ %i.bz, %.lr.ph97 ] ; 2 uses
  %i.cb = add i64 %.lcssa, -1
  %i.cc = lshr i64 %i.cb, 9
  %i.cd = add nuw nsw i64 %i.cc, 1
  %i.ce = mul i64 %i.br, 2971215073               ; 2 uses
  %i.cf = lshr i64 %i.ce, 15
  %i.cg = xor i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = urem i64 %i.cg, %i.cd
  %i.ci = shl nuw i64 %i.ch, 9                    ; 2 uses
  %i.cj = sub i64 %.lcssa, %i.ci
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 512) ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.039.lcssa
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.085.ptr114, ptr align 1 %i.cm, i64 %.sroa.speculated, i1 false)
  %.not.i56 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge98
  store ptr %.085.ptr114, ptr %i.bm, align 8, !tbaa !45
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65

bb.p:                                             ; preds = %._crit_edge98
  %i.cn = ptrtoint ptr %i.bm to i64
  %i.co = ptrtoint ptr %i.bo to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.q, label %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57

bb.q:                                             ; preds = %bb.p
  store ptr %i.bm, ptr %i.bk, align 8
  store ptr %i.bn, ptr %i.bl, align 8
  store ptr %i.bo, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc63 unwind label %.loopexit.split-lp89

.noexc63:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57: ; preds = %bb.p
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i58, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i59 = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i59)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #21
          to label %.noexc64 unwind label %.loopexit88 ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store ptr %.085.ptr114, ptr %i.cy, align 8, !tbaa !45
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.r, label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i60

bb.r:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.bo, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i60

_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i60: ; preds = %bb.r, %.noexc64
  %.not.i17.i.i61 = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i61, label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i60
  tail call void @_ZdlPv(ptr noundef nonnull %i.bo) #23
  br label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62

_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62: ; preds = %bb.s, %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i60
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65

_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65:  ; preds = %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62, %bb.o
  %i.db = phi ptr [ %i.cx, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62 ], [ %i.bo, %bb.o ] ; 6 uses
  %i.dc = phi ptr [ %i.da, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62 ], [ %i.bn, %bb.o ] ; 5 uses
  %.pn = phi ptr [ %i.cy, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i62 ], [ %i.bm, %bb.o ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 5 uses
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %.loopexit88 ; 4 uses

bb.t:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !97 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !96
  %.not.i66 = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i66, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %.sroa.speculated, ptr %i.dg, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !97
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.v:                                             ; preds = %bb.t
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !93 ; 4 uses
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 5 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.w, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.dd, ptr %i.bk, align 8
  store ptr %i.dc, ptr %i.bl, align 8
  store ptr %i.db, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc70 unwind label %.loopexit.split-lp89

.noexc70:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i67 = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i67, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #21
          to label %.noexc71 unwind label %.loopexit88 ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store i64 %.sroa.speculated, ptr %i.dw, align 8, !tbaa !31
  %i.dx = icmp sgt i64 %i.dn, 0
  br i1 %i.dx, label %bb.x, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc71
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr align 8 %i.dk, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc71
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.not.i17.i.i69 = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i69, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.dk) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.dv, ptr %i.de, align 8, !tbaa !93
  store ptr %i.dy, ptr %i.df, align 8, !tbaa !97
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.dz, ptr %i.dh, align 8, !tbaa !96
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.u
  %.085.add = add nuw nsw i64 %.sroa.speculated, %.085.idx112 ; 2 uses
  %i.ea = icmp samesign ult i64 %.085.add, 16384
  br i1 %i.ea, label %bb.n, label %.loopexit87, !llvm.loop !99
end_hunk_0
