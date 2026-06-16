inline.NumInlined: 3133
inline.NumDeleted: 1272
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_115MapKeysFunction9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bb, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !44
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !279
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !279
  br label %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i22 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.r:                                             ; preds = %bb.p
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i24 = phi i32 [ %i.be, %bb.q ], [ %i.bo, %bb.r ]
  %i.bp = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.bp, label %bb.s, label %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23
  br label %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.s
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.br, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !44
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !280
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !280
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i26 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i26, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.x:                                             ; preds = %bb.v
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i28 = phi i32 [ %i.bu, %bb.w ], [ %i.ce, %bb.x ]
  %i.cf = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.cf, label %bb.y, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !37  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ch, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !44
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #23, !inline_history !196
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #23, !inline_history !196
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i30 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.ad:                                            ; preds = %bb.ab
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i32 = phi i32 [ %i.ck, %bb.ac ], [ %i.cu, %bb.ad ]
  %i.cv = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.cv, label %bb.ae, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.af:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.cx, %bb.ag ], [ %i.ax, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.af
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cw, %bb.af ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.ah ]
  resume { ptr, i32 } %.pn16
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_119MapKeyValueFunctionD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14LocalSingleRowC2ERNS1_7EvalCtxEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %class.anon.282, align 8            ; 6 uses
  %4 = alloca %class.anon.284, align 8            ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !261    ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !281
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = add nsw i32 %2, 1
  tail call void @_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.107") align 8 %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i32 noundef %i.d)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !193  ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !253  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !282  ; 6 uses
  %.not.i.i.i = icmp sgt i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.h, 2147483584                 ; 2 uses
  %.not3347.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -64
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 536870904
  %narrow.i = add nuw nsw i32 %i.l, 8
  %i.m = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, i8 0, i64 %i.m, i1 false), !tbaa !144
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.preheader.i, %bb.b
  %.not34.i.i.i = icmp eq i32 %i.h, %i.i
  br i1 %.not34.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = lshr i32 %i.h, 6
  %i.o = and i32 %i.h, 63
  %i.p = zext nneg i32 %i.o to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.p
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !144
  %i.t = and i64 %i.s, %notmask.i37.i.i.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge.i.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 0, ptr %i.u, align 4, !tbaa !283
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 0, ptr %i.v, align 8, !tbaa !197
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i16 256, ptr %i.w, align 4
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !253
  %i.z = sext i32 %2 to i64
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ad = trunc i32 %2 to i8
  %i.ae = and i8 %i.ad, 7
  %i.af = shl nuw i8 1, %i.ae
  %i.ag = or i8 %i.ac, %i.af
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 37
  store i8 0, ptr %i.ah, align 1, !tbaa !284
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !193 ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !253 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !282 ; 6 uses
  %.not.i.i.i5 = icmp sgt i32 %i.al, 0
  br i1 %.not.i.i.i5, label %bb.e, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.am = and i32 %i.al, 2147483584               ; 4 uses
  %i.an = zext nneg i32 %i.am to i64
  %.not37.i.i.not.i14.not = icmp eq i32 %i.am, 0
  br i1 %.not37.i.i.not.i14.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i15, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.an
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !285

.lr.ph:                                           ; preds = %bb.e, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ao = lshr exact i64 %indvars.iv.i15, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !144 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !285

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.al, %i.am
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i.i
  %i.ar = lshr i32 %i.al, 6
  %i.as = and i32 %i.al, 63
  %i.at = zext nneg i32 %i.as to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.at
  %i.au = xor i64 %notmask.i43.i.i.i, -1
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !144
  %i.ay = and i64 %i.ax, %i.au                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.f, %.critedge.i.i.i, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 0, ptr %i.az, align 4, !tbaa !283
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 0, ptr %i.ba, align 8, !tbaa !197
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  store i16 256, ptr %i.bb, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.bc = trunc nuw nsw i64 %indvars.iv.i15 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.f
  %.sink67.i.i.i = phi i64 [ %i.ay, %bb.f ], [ %i.aq, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.am, %bb.f ], [ %i.bc, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = or disjoint i32 %.sink65.i.i.i, %i.be   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.aj, ptr %3, align 8, !tbaa !286
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.bh, align 8, !tbaa !289
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bi, align 8, !tbaa !290
  store ptr %i.aj, ptr %4, align 8, !tbaa !291
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.bj, align 8, !tbaa !289
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.bk, align 8, !tbaa !293
  %i.bl = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.bf, i32 noundef %i.al, ptr noundef nonnull byval(%class.anon.282) align 8 %3, ptr noundef nonnull byval(%class.anon.284) align 8 %4)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !197
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 37
  store i8 0, ptr %i.bp, align 1, !tbaa !284
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i
  ret void

bb.g:                                             ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #23
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !93
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !93
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14wrapInConstantEiiSt10shared_ptrIS1_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.72") align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14LocalSingleRowD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !203, !nonnull !81, !align !212 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !213, !range !80, !noundef !81
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !235
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !193
  store i64 %i.j, ptr %i.g, align 8, !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !234
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit unwind label %bb.f

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit: ; preds = %bb.a, %bb.c
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !193  ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit
  %i.m = load ptr, ptr %.pr, align 8, !tbaa !253  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !254
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 40) #25
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i
  ret void

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEi:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !417
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !253, !noalias !417 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !254, !noalias !417
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25, !noalias !417
  br label %.body.i

common.resume:                                    ; preds = %bb.g, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %.body.i ], [ %i.z, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 40) #25, !noalias !417
  br label %common.resume

_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.critedge.thread, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !417
  store i32 %2, ptr %i.t, align 8, !tbaa !282, !noalias !417
  store i32 0, ptr %i.s, align 4, !tbaa !283, !noalias !417
  store i32 %2, ptr %i.r, align 8, !tbaa !197, !noalias !417
  store i16 257, ptr %i.u, align 4, !noalias !417
  store ptr %i.f, ptr %0, align 8, !tbaa !193, !alias.scope !417
  br label %bb.h

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit: ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds i8, ptr %.pre5, i64 -8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193  ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !193
  store ptr null, ptr %i.w, align 8, !tbaa !193
  store ptr %i.w, ptr %i.v, align 8, !tbaa !234
  %i.y = inttoptr i64 %i.x to ptr
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.y, i32 noundef %2, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  br label %common.resume

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit, %_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !193    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %class.anon.282, align 8            ; 6 uses
  %4 = alloca %class.anon.284, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !282
  %.fr8 = freeze i32 %i.g                         ; 2 uses
  %i.h = icmp sgt i32 %1, %.fr8
  br i1 %i.h, label %bb.b, label %._ZN8facebook5velox4bits8fillBitsEPmiib.exit_crit_edge

._ZN8facebook5velox4bits8fillBitsEPmiib.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !420
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !327  ; 6 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = srem i32 %.fr8, 64                       ; 3 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 4 uses
  %.cmp.inv = icmp sgt i32 %i.m, 0                ; 2 uses
  %i.o = select i1 %.cmp.inv, i32 64, i32 0
  %i.p = sub nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %notmask.i.i35.i.i = shl nsw i64 -1, %i.q
  %i.r = xor i64 %notmask.i.i35.i.i, -1
  %i.s = sub nuw nsw i32 64, %i.p
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t                       ; 2 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !144
  %i.w = or i64 %i.v, %i.u
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = xor i64 %i.u, -1
  %i.y = load i64, ptr %i.n, align 8, !tbaa !144
  %i.z = and i64 %i.y, %i.x
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i: ; preds = %bb.f, %bb.e
  %storemerge = phi i64 [ %i.z, %bb.f ], [ %i.w, %bb.e ]
  store i64 %storemerge, ptr %i.n, align 8, !tbaa !144
  br i1 %.cmp.inv, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i
  %.neg.i = sext i1 %2 to i64
  store i64 %.neg.i, ptr %i.n, align 8, !tbaa !144
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit, !llvm.loop !421

_ZN8facebook5velox4bits8fillBitsEPmiib.exit:      ; preds = %._ZN8facebook5velox4bits8fillBitsEPmiib.exit_crit_edge, %.lr.ph.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i, %bb.c, %bb.b
  %i.aa = phi ptr [ %.pre, %._ZN8facebook5velox4bits8fillBitsEPmiib.exit_crit_edge ], [ %i.k, %.lr.ph.i.i ], [ %i.k, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ab = sext i1 %2 to i64
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %0, align 8, !tbaa !253   ; 5 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 3 uses
  %i.ai = icmp ugt i64 %i.e, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit
  %i.aj = sub nuw nsw i64 %i.e, %i.ah
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !253
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.h:                                             ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit
  %i.ak = icmp ult i64 %i.e, %i.ah
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.al
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !420
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.am = phi ptr [ %.pre15, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store i32 %1, ptr %i.f, align 8, !tbaa !282
  %.not.i.i.i = icmp sgt i32 %1, 0
  br i1 %.not.i.i.i, label %bb.j, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.an = and i32 %1, 2147483584                  ; 4 uses
  %i.ao = zext nneg i32 %i.an to i64
  %.not37.i.i.not.i28.not = icmp eq i32 %i.an, 0
  br i1 %.not37.i.i.not.i28.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i29, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ao
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !285

.lr.ph:                                           ; preds = %bb.j, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.ap = lshr exact i64 %indvars.iv.i29, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !144 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !285

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.j
  %.not38.i.i.i = icmp eq i32 %1, %i.an
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %.critedge.i.i.i
  %i.as = lshr i32 %1, 6
  %i.at = and i32 %1, 63
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i43.i.i.i, -1
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !144
  %i.az = and i64 %i.ay, %i.av                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.k, %.critedge.i.i.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ba, align 4, !tbaa !283
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bb, align 8, !tbaa !197
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 256, ptr %i.bc, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.bd = trunc nuw nsw i64 %indvars.iv.i29 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.k
  %.sink67.i.i.i = phi i64 [ %i.az, %bb.k ], [ %i.ar, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.an, %bb.k ], [ %i.bd, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.be = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %.sink65.i.i.i, %i.bf   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.am, ptr %3, align 8, !tbaa !286
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !289
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bj, align 8, !tbaa !290
  store ptr %i.am, ptr %4, align 8, !tbaa !291
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.bk, align 8, !tbaa !289
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.bl, align 8, !tbaa !293
  %i.bm = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.bg, i32 noundef %1, ptr noundef nonnull byval(%class.anon.282) align 8 %3, ptr noundef nonnull byval(%class.anon.284) align 8 %4) ; 0 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.bq, align 1, !tbaa !284
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !420  ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !144    ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !76

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !420
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !144
  store i64 %i.s, ptr %i.d, align 8, !tbaa !144
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !420
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !76

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %iter.check168

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %iter.check168

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !144
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !144
  br label %iter.check168

iter.check168:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check168
  %min.iters.check155 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check155, label %vec.epilog.ph172, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %n.mod.vf157 = and i64 %i.ag, 12
  %n.vec158 = and i64 %i.ag, 4611686018427387888  ; 4 uses
  %i.ah = shl i64 %n.vec158, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert159 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i64> %broadcast.splatinsert159, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.aj = shl i64 %index162, 3
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep163, i64 32
  %i.al = getelementptr i8, ptr %next.gep163, i64 64
  %i.am = getelementptr i8, ptr %next.gep163, i64 96
  store <4 x i64> %broadcast.splat160, ptr %next.gep163, align 8, !tbaa !144
  store <4 x i64> %broadcast.splat160, ptr %i.ak, align 8, !tbaa !144
  store <4 x i64> %broadcast.splat160, ptr %i.al, align 8, !tbaa !144
  store <4 x i64> %broadcast.splat160, ptr %i.am, align 8, !tbaa !144
  %index.next164 = add nuw i64 %index162, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.an, label %middle.block165, label %vector.body161, !llvm.loop !422

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.ag, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  %min.epilog.iters.check171 = icmp eq i64 %n.mod.vf157, 0
  br i1 %min.epilog.iters.check171, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph172, !prof !250

vec.epilog.ph172:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check170
  %vec.epilog.resume.val167 = phi i64 [ %n.vec158, %vec.epilog.iter.check170 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec174 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec174, 3
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  %broadcast.splatinsert175 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i64> %broadcast.splatinsert175, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body177
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapValuesFunction9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bb, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !44
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !279
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !279
  br label %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i22 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.r:                                             ; preds = %bb.p
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i24 = phi i32 [ %i.be, %bb.q ], [ %i.bo, %bb.r ]
  %i.bp = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.bp, label %bb.s, label %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23
  br label %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.s
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.br, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !44
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !280
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !280
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i26 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i26, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.x:                                             ; preds = %bb.v
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i28 = phi i32 [ %i.bu, %bb.w ], [ %i.ce, %bb.x ]
  %i.cf = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.cf, label %bb.y, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !37  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ch, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !44
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #23, !inline_history !196
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #23, !inline_history !196
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i30 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.ad:                                            ; preds = %bb.ab
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i32 = phi i32 [ %i.ck, %bb.ac ], [ %i.cu, %bb.ad ]
  %i.cv = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.cv, label %bb.ae, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.af:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.cx, %bb.ag ], [ %i.ax, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZNSt12__shared_ptrIKN8facebook5velox9ArrayTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.af
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cw, %bb.af ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.ah ]
  resume { ptr, i32 } %.pn16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN8facebook5velox9functions12_GLOBAL__N_115MapKeysFunction10signaturesEv: argument 0"}
!9 = distinct !{!9, !"_ZN8facebook5velox9functions12_GLOBAL__N_115MapKeysFunction10signaturesEv"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !12, i64 0, !15, i64 8, !16, i64 16, !15, i64 24, !18, i64 32, !17, i64 48}
!12 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!17 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!18 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !19, i64 0, !15, i64 8}
!19 = !{!"float", !5, i64 0}
!20 = !{!11, !15, i64 8}
!21 = !{!18, !19, i64 0}
!22 = !{!23, !26, i64 32}
!23 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !24, i64 0, !24, i64 16, !26, i64 32}
!24 = !{!"_ZTSSt13_Bit_iterator", !25, i64 0}
!25 = !{!"_ZTSSt18_Bit_iterator_base", !26, i64 0, !4, i64 8}
!26 = !{!"p1 long", !14, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!5, !5, i64 0}
!31 = !{!32, !15, i64 8}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !15, i64 8, !5, i64 16}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !14, i64 0}
!36 = !{!34, !35, i64 16}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!40 = !{!14, !14, i64 0}
!41 = !{!34, !35, i64 8}
!42 = !{!43, !4, i64 8}
!43 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!44 = !{!43, !4, i64 12}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !6, i64 0}
!47 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!32, !29, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_115MapKeysFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!52 = distinct !{!52, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_115MapKeysFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !55, i64 0}
!55 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !14, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"bool", !5, i64 0}
!58 = !{!59, !15, i64 0}
!59 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !15, i64 0, !29, i64 8}
!60 = !{!59, !29, i64 8}
!61 = !{!55, !55, i64 0}
!62 = distinct !{null, null}
!63 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN8facebook5velox9functions12_GLOBAL__N_117MapValuesFunction10signaturesEv: argument 0"}
!69 = distinct !{!69, !"_ZN8facebook5velox9functions12_GLOBAL__N_117MapValuesFunction10signaturesEv"}
!70 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_117MapValuesFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_117MapValuesFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!74 = !{!75, !57, i64 32}
!75 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !57, i64 32}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!79 = distinct !{!79, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!83, !57, i64 104}
!83 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !57, i64 104}
!84 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!85 = !{!86, !87, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!87 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !14, i64 0}
!88 = !{!86, !87, i64 8}
!89 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!90 = distinct !{!90, !65}
!91 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!92 = !{!86, !87, i64 16}
!93 = distinct !{null, null}
!94 = !{!25, !26, i64 0}
!95 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!96 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!97 = !{!11, !15, i64 24}
!98 = !{!16, !17, i64 0}
!99 = distinct !{!99, !65}
!100 = !{!17, !17, i64 0}
!101 = !{!102, !15, i64 0}
!102 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !15, i64 0}
!103 = distinct !{!103, !65}
!104 = !{!105, !106, i64 0}
!105 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !106, i64 0, !107, i64 8}
!106 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !14, i64 0}
!107 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !14, i64 0}
!108 = !{!105, !107, i64 8}
!109 = distinct !{!109, !65}
!110 = !{!18, !15, i64 8}
!111 = !{!11, !17, i64 16}
!112 = !{!11, !17, i64 48}
!113 = distinct !{!113, !65}
!114 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!115 = !{!116, !57, i64 96}
!116 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !32, i64 0, !117, i64 32, !120, i64 56, !57, i64 96}
!117 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !118, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !86, i64 0}
!120 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !121, i64 0}
!121 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !122, i64 0}
!122 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !123, i64 0}
!123 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !75, i64 0}
!124 = !{!87, !87, i64 0}
!125 = distinct !{null, null, null, null}
!126 = distinct !{!126, !65}
!127 = distinct !{null, null, null}
!128 = distinct !{null, null, null, null}
!129 = distinct !{null}
!130 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!131 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!132 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!133 = !{!134, !57, i64 232}
!134 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !135, i64 0, !136, i64 56, !117, i64 168, !140, i64 192, !57, i64 232}
!135 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !11, i64 0}
!136 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !137, i64 0}
!137 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !138, i64 0}
!138 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !139, i64 0}
!139 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !83, i64 0}
!140 = !{!"_ZTSSt6vectorIbSaIbEE", !141, i64 0}
!141 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !142, i64 0}
!142 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !23, i64 0}
!143 = !{!25, !4, i64 8}
!144 = !{!15, !15, i64 0}
!145 = distinct !{null}
!146 = distinct !{!146, !65}
!147 = distinct !{null, null}
!148 = distinct !{!148, !65}
!149 = distinct !{!149, !65}
!150 = distinct !{!150, !65}
!151 = distinct !{null}
!152 = distinct !{!152, !65}
!153 = !{ptr @_ZN8facebook5velox9functions12_GLOBAL__N_119MapKeyValueFunctionD2Ev}
!154 = !{!155, !156, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!156 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !14, i64 0}
!157 = !{!158, !159, i64 0}
!158 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !159, i64 0, !38, i64 8}
!159 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !14, i64 0}
!160 = !{!161, !166, i64 28}
!161 = !{!"_ZTSN8facebook5velox10BaseVectorE", !162, i64 8, !165, i64 24, !57, i64 25, !166, i64 28, !167, i64 32, !26, i64 40, !169, i64 48, !4, i64 56, !170, i64 60, !170, i64 68, !170, i64 76, !170, i64 84, !174, i64 92, !57, i64 93}
!162 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !163, i64 0}
!163 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !164, i64 0, !38, i64 8}
!164 = !{!"p1 _ZTSN8facebook5velox4TypeE", !14, i64 0}
!165 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!166 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
end_hunk_2
