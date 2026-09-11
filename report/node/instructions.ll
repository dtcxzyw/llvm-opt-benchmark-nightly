Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instructions?download=true
inline.NumInlined: 2653
inline.NumDeleted: 1092
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2v88internal6torque24CallIntrinsicInstruction28RecomputeDefinitionLocationsEPNS1_5StackINS1_18DefinitionLocationEEEPNS1_8WorklistIPNS1_5BlockEEE:bb.a
  %i.ae = sub i64 %i.ad, %i.z
  %i.af = ashr exact i64 %i.ae, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ag = icmp ult i64 %.0, %i.af
  br i1 %i.ag, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.i:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.s, align 8             ; 7 uses
  %i.ap = load ptr, ptr %i.t, align 8
  %.not.i.i.i11 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %i.ao, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aq = load ptr, ptr %i.s, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.s, align 8
  br label %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %1, align 8               ; 5 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.m, label %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.ax = sdiv exact i64 %i.av, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 384307168202282325)
  %i.bb = select i1 %i.az, i64 384307168202282325, i64 %i.ba ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bc = mul nuw nsw i64 %i.bb, 24
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
          to label %.noexc13 unwind label %.loopexit ; 5 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 3 uses
  store i32 3, ptr %i.be, align 8
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %0, ptr %.sroa.6.0..sroa_idx21, align 8
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.0, ptr %.sroa.7.0..sroa_idx23, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bd, %.noexc13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %.noexc13 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !108
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.ao
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.noexc13 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  %i.bi = load ptr, ptr %i.t, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bk) #29
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.bd, ptr %1, align 8
  store ptr %i.bh, ptr %i.s, align 8
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bl, ptr %i.t, align 8
  br label %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit

_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit: ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.k
  %i.bm = add nuw i64 %.0, 1
  br label %bb.d, !llvm.loop !107

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bn = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit15

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit15: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE7PopManyEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 384307168202282325
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #28
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not.a = icmp eq i64 %2, 0
  br i1 %.not.a, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIN2v88internal6torque18DefinitionLocationESaIS3_EE11_M_allocateEm.exit.i

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread: ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  br label %._crit_edge

_ZNSt12_Vector_baseIN2v88internal6torque18DefinitionLocationESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = mul nuw nsw i64 %2, 24
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27
          to label %.lr.ph unwind label %bb.g     ; 5 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN2v88internal6torque18DefinitionLocationESaIS3_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %2 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.idx = mul nsw i64 %2, -24
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread
  %i.m = phi ptr [ %i.c, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread ], [ %i.i, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ]
  %.lcssa25 = phi ptr [ null, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread ], [ %i.au, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.lcssa21 = phi ptr [ null, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread ], [ %i.av, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.lcssa18 = phi ptr [ %i.d, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE7reserveEm.exit.thread ], [ %i.aw, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  store ptr %.lcssa21, ptr %i.b, align 8
  store ptr %.lcssa25, ptr %0, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = ptrtoint ptr %.lcssa18 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24                  ; 2 uses
  %i.s = sub nuw nsw i64 %i.r, %2
  %i.t = icmp ugt i64 %2, %i.r
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.u = sub nsw i64 0, %2
  invoke void @_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u)
          to label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE6resizeEm.exit unwind label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa18, %i.v
  br i1 %.not.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2v88internal6torque18DefinitionLocationES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2v88internal6torque18DefinitionLocationES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.v, ptr %i.m, align 8
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.d, %_ZNSt12_Vector_baseIN2v88internal6torque18DefinitionLocationESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.w = phi ptr [ %.lcssa21, %bb.d ], [ null, %_ZNSt12_Vector_baseIN2v88internal6torque18DefinitionLocationESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.x = phi ptr [ %.lcssa25, %bb.d ], [ null, %_ZNSt12_Vector_baseIN2v88internal6torque18DefinitionLocationESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit
  %i.z = phi ptr [ %i.f, %.lr.ph ], [ %i.at, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.sroa.015.028 = phi ptr [ %i.k, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.aa = phi ptr [ %i.h, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.ab = phi ptr [ %i.f, %.lr.ph ], [ %i.au, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit ] ; 10 uses
  %.not.i.i10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.028, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.ac, ptr %i.l, align 8
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.k, label %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %i.b, align 8
  store ptr %i.ab, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ah = sdiv exact i64 %i.af, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 384307168202282325)
  %i.al = select i1 %i.aj, i64 384307168202282325, i64 %i.ak ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #27
          to label %.noexc13 unwind label %.loopexit ; 5 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.028, i64 24, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %.noexc13 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !113
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.an, %.noexc13 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #29
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ar, ptr %i.l, align 8
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i
  %i.at = phi ptr [ %i.ar, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ac, %bb.i ]
  %i.au = phi ptr [ %i.an, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %i.av = phi ptr [ %i.as, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.aa, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.028, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.i, align 8
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %._crit_edge, label %bb.h, !llvm.loop !112

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.b, align 8
  store ptr %i.ab, ptr %0, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2v88internal6torque18DefinitionLocationES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %i.az = phi ptr [ %i.w, %bb.g ], [ %i.z, %.loopexit ], [ %i.z, %.loopexit.split-lp ]
  %i.ba = phi ptr [ %i.x, %bb.g ], [ %i.ab, %.loopexit ], [ %i.ab, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EED2Ev.exit: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK2v88internal6torque24CallIntrinsicInstruction23GetValueDefinitionCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.13", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal6torque9LowerTypeEPKNS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret i64 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK2v88internal6torque24CallIntrinsicInstruction18GetValueDefinitionEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::torque::DefinitionLocation") align 8 captures(none) initializes((0, 4), (8, 24)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  store i32 3, ptr %0, align 8, !alias.scope !116
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !alias.scope !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !alias.scope !116
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6torquelsERSoRKNS1_24CallIntrinsicInstructionE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.v8::internal::torque::ListPrintAdaptor.317", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 14) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
end_hunk_0
begin_hunk_1_@_ZNK2v88internal6torque22CallBuiltinInstruction15TypeInstructionEPNS1_5StackIPKNS1_4TypeEEEPNS1_16ControlFlowGraphE:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
          to label %.noexc22 unwind label %bb.ac

.noexc22:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.v
  %i.bq = lshr exact i64 %i.am, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bq
  %i.bs = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975) ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #27
          to label %.noexc23 unwind label %bb.ac  ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.am ; 2 uses
  store ptr %i.be, ptr %i.bv, align 8
  %.not = icmp eq ptr %i.ai, %i.aj
  br i1 %.not, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.noexc23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.aq, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i: ; preds = %bb.x, %.noexc23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i
  store ptr %i.bu, ptr %6, align 8
  store ptr %i.bw, ptr %i.ar, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.bx, ptr %i.at, align 8
  br label %_ZN2v88internal6torque5StackIPKNS1_4TypeEE4PushES5_.exit

_ZN2v88internal6torque5StackIPKNS1_4TypeEE4PushES5_.exit: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.u
  %i.by = load ptr, ptr %i.ad, align 8
  invoke void @_ZN2v88internal6torque5Block13SetInputTypesERKNS1_5StackIPKNS1_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZN2v88internal6torque5StackIPKNS1_4TypeEE4PushES5_.exit
  %i.bz = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr %i.at, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #29
  br label %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit

_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit25

bb.ac:                                            ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.w, %_ZN2v88internal6torque5StackIPKNS1_4TypeEE4PushES5_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %.pre35 = load ptr, ptr %6, align 8
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.ac
  %i.cg = phi ptr [ %.pre35, %bb.ac ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 3 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %bb.ac ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i24, label %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit25, label %bb.ad

bb.ad:                                            ; preds = %.body
  %i.ch = load ptr, ptr %i.at, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #29
  br label %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit25

_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit25: ; preds = %bb.ad, %.body, %bb.ab
  %.pn11 = phi { ptr, i32 } [ %i.ce, %bb.ab ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.am

bb.ae:                                            ; preds = %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cl = load ptr, ptr %i.c, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 384
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void @_ZN2v88internal6torque9LowerTypeEPKNS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %7, ptr noundef %i.cn)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.co = invoke { i64, i64 } @_ZN2v88internal6torque5StackIPKNS1_4TypeEE8PushManyERKSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ag unwind label %bb.ak     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cp = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit27, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit27

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit27: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit29, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit27
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit29

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit29: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit27, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.aj:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit31

bb.ak:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit31, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit31

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit31: ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn13 = phi { ptr, i32 } [ %i.db, %bb.aj ], [ %i.dc, %bb.ak ], [ %i.dc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit31, %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit25, %bb.i, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %.pn13, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit31 ], [ %.pn11, %_ZN2v88internal6torque5StackIPKNS1_4TypeEED2Ev.exit25 ], [ %i.x, %bb.h ]
  %i.dj = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit33, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit33

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit33: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque5StackIPKNS1_4TypeEE7PopManyEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #28
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread: ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  br label %._crit_edge

_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %2, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27
          to label %.lr.ph unwind label %bb.g     ; 5 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %2 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.neg = mul nsw i64 %2, -8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.neg
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread
  %i.m = phi ptr [ %i.c, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread ], [ %i.i, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ]
  %.lcssa23 = phi ptr [ null, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread ], [ %i.av, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.lcssa19 = phi ptr [ null, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread ], [ %i.aw, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.d, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE7reserveEm.exit.thread ], [ %i.ax, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  store ptr %.lcssa19, ptr %i.b, align 8
  store ptr %.lcssa23, ptr %0, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = ptrtoint ptr %.lcssa to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = sub nuw nsw i64 %i.r, %2
  %i.t = icmp ugt i64 %2, %i.r
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.u = sub nsw i64 0, %2
  invoke void @_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u)
          to label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE6resizeEm.exit unwind label %bb.g

bb.e:                                             ; preds = %._crit_edge
  br i1 %.not, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa, %i.v
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN2v88internal6torque4TypeES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN2v88internal6torque4TypeES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.v, ptr %i.m, align 8
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.d, %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i, %bb.b
  %i.w = phi ptr [ %.lcssa19, %bb.d ], [ null, %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.x = phi ptr [ %.lcssa23, %bb.d ], [ null, %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit
  %i.z = phi ptr [ %i.f, %.lr.ph ], [ %i.au, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 6 uses
  %.sroa.014.026 = phi ptr [ %i.k, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.aa = phi ptr [ %i.h, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.ab = phi ptr [ %i.f, %.lr.ph ], [ %i.av, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit ] ; 9 uses
  %.not.i.i10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %.sroa.014.026, align 8
  store ptr %i.ac, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.l, align 8
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %i.b, align 8
  store ptr %i.ab, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #28
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #27
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  %i.aq = load ptr, ptr %.sroa.014.026, align 8
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = icmp sgt i64 %i.ag, 0
  br i1 %i.ar, label %bb.l, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.l, %.noexc12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  store ptr %i.as, ptr %i.l, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.i
  %i.au = phi ptr [ %i.as, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ad, %bb.i ]
  %i.av = phi ptr [ %i.ao, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %i.aw = phi ptr [ %i.at, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.026, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.i, align 8
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %._crit_edge, label %bb.h, !llvm.loop !195

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.b, align 8
  store ptr %i.ab, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPPKN2v88internal6torque4TypeES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  ret void

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %i.ba = phi ptr [ %i.w, %bb.g ], [ %i.z, %.loopexit ], [ %i.z, %.loopexit.split-lp ]
  %i.bb = phi ptr [ %i.x, %bb.g ], [ %i.ab, %.loopexit ], [ %i.ab, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #29
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque11ReportErrorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(21) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !200
  call void @_ZN2v88internal6torque8ToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(21) %0), !noalias !200
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !noalias !200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN2v88internal6torque5ErrorIJRA21_KcEEENS1_14MessageBuilderEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !noalias !200
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZN2v88internal6torque5ErrorIJRA21_KcEEENS1_14MessageBuilderEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !noalias !200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !noalias !200
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

common.resume:                                    ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !200
  br label %common.resume

_ZN2v88internal6torque5ErrorIJRA21_KcEEENS1_14MessageBuilderEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !200
  invoke void @_ZNK2v88internal6torque14MessageBuilder5ThrowEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal6torque5ErrorIJRA21_KcEEENS1_14MessageBuilderEDpOT_.exit
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6torque5ErrorIJRA21_KcEEENS1_14MessageBuilderEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2v88internal6torque22CallBuiltinInstruction28RecomputeDefinitionLocationsEPNS1_5StackINS1_18DefinitionLocationEEEPNS1_8WorklistIPNS1_5BlockEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.13", align 8    ; 6 uses
  %4 = alloca %"class.std::vector.13", align 8    ; 6 uses
  %5 = alloca %"class.std::vector.37", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  call void @_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE7PopManyEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.37") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.b)
  %i.c = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
end_hunk_1
