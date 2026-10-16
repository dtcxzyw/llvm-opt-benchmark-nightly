Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/map-updater?download=true
inline.NumInlined: 1722
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEE:bb.a

"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit.i.i": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"

_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i.i: ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = lshr i64 %i.ci, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = icmp slt i32 %i.ck, 3
  br i1 %i.cl, label %._crit_edge.i.i, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i: ; preds = %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8 ; 2 uses
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %i.cq = lshr i64 %i.cn, 32                      ; 2 uses
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %_ZN2v88internal19TransitionsAccessor9GetTargetEi.exit.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit28.i.i", %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i, %_ZN2v84base12MutexGuardIfC2EPNS0_5MutexEb.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.cu = load atomic volatile i64, ptr %i.ct acquire, align 8
  %.not21.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not21.i.i, label %.loopexit23.i.i, label %bb.r

_ZN2v88internal19TransitionsAccessor9GetTargetEi.exit.i.i: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit28.i.i"
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit28.i.i" ], [ 0, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i ] ; 2 uses
  %.idx.i.i = shl i64 %indvars.iv.i.i, 4
  %i.cv = getelementptr i8, ptr %i.br, i64 %.idx.i.i
  %i.cw = getelementptr i8, ptr %i.cv, i64 48
  %i.cx = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %.sroa.02.0.i.i.i = and i64 %i.cx, -3           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.02.0.i.i.i, ptr %8, align 8
  %i.cy = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.cz = load ptr, ptr %i.ak, align 8
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %.not.i.i.i27.i.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i.i27.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal19TransitionsAccessor9GetTargetEi.exit.i.i
  store i64 %.sroa.02.0.i.i.i, ptr %i.cy, align 8
  %i.db = load ptr, ptr %i.ah, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.ah, align 8
  br label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit28.i.i"

bb.q:                                             ; preds = %_ZN2v88internal19TransitionsAccessor9GetTargetEi.exit.i.i
  call void @_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit28.i.i"

"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit28.i.i": ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cq
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %_ZN2v88internal19TransitionsAccessor9GetTargetEi.exit.i.i, !llvm.loop !21

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.dd = load atomic volatile i64, ptr %i.ct acquire, align 8
  %i.de = add i64 %i.dd, -1
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp ult i64 %i.dh, 4294967296
  br i1 %i.di, label %.loopexit23.i.i, label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.i.i

_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.i.i: ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8 ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  %i.dn = lshr i64 %i.dk, 32                      ; 2 uses
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph26.i.i, label %.loopexit23.i.i

.lr.ph26.i.i:                                     ; preds = %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.i.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ 0, %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.i.i ]
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next30.i.i
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8 ; 3 uses
  %i.ds = and i64 %i.dr, 3
  %i.dt = icmp eq i64 %i.ds, 3
  %i.du = and i64 %i.dr, 4294967295
  %i.dv = icmp ne i64 %i.du, 3
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.s, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.s:                                             ; preds = %.lr.ph26.i.i
  %i.dx = and i64 %i.dr, -3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.dx, ptr %7, align 8
  %i.dy = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.dz = load ptr, ptr %i.ak, align 8
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %.not.i.i.i31.i.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not.i.i.i31.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.dx, ptr %i.dy, align 8
  %i.eb = load ptr, ptr %i.ah, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %i.ah, align 8
  br label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_1clENS0_6TaggedIS5_EE.exit.i.i"

bb.u:                                             ; preds = %bb.s
  call void @_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_1clENS0_6TaggedIS5_EE.exit.i.i"

"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_1clENS0_6TaggedIS5_EE.exit.i.i": ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_1clENS0_6TaggedIS5_EE.exit.i.i", %.lr.ph26.i.i
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %i.dn
  br i1 %exitcond33.not.i.i, label %.loopexit23.i.i, label %.lr.ph26.i.i, !llvm.loop !22

.loopexit23.i.i:                                  ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.i.i, %bb.r, %._crit_edge.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.ee = load atomic volatile i64, ptr %i.ed monotonic, align 8
  %.not22.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not22.i.i, label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit", label %bb.v

bb.v:                                             ; preds = %.loopexit23.i.i
  %i.ef = load atomic volatile i64, ptr %i.ed monotonic, align 8
  %i.eg = add i64 %i.ef, -1
  %i.eh = inttoptr i64 %i.eg to ptr               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load atomic volatile i64, ptr %i.ei monotonic, align 8 ; 6 uses
  %i.ek = and i64 %i.ej, 3
  %i.el = icmp eq i64 %i.ek, 3
  %i.em = and i64 %i.ej, 4294967295
  %i.en = icmp ne i64 %i.em, 3
  %i.eo = and i1 %i.el, %i.en
  %i.ep = icmp eq i64 %i.ej, 4294967296
  %or.cond.i.i72 = or i1 %i.ep, %i.eo
  br i1 %or.cond.i.i72, label %bb.w, label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i"

bb.w:                                             ; preds = %bb.v
  %i.eq = and i64 %i.ej, 1
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = and i64 %i.ej, -3
  %spec.select.i.i.i = select i1 %i.er, i64 %i.ej, i64 %i.es ; 4 uses
  %i.et = and i64 %spec.select.i.i.i, 1
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = add i64 %spec.select.i.i.i, 15
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load atomic volatile i32, ptr %i.ew acquire, align 4
  %i.ey = and i32 %i.ex, 16777216
  %.not.i.i.i73 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.i73, label %bb.y, label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i"

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i34.i.i = icmp eq ptr %.sroa.9.0228, %.sroa.18138.0229
  br i1 %.not.i.i.i34.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %spec.select.i.i.i, ptr %.sroa.9.0228, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.9.0228, i64 8
  br label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i"

bb.aa:                                            ; preds = %bb.y
  %i.fa = ptrtoint ptr %.sroa.18138.0229 to i64
  %i.fb = ptrtoint ptr %.sroa.0130.0227 to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 4 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775800
  br i1 %i.fd, label %bb.ab, label %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #19
  unreachable

_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.fe = ashr exact i64 %i.fc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fe ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 1152921504606846975)
  %i.fi = select i1 %i.fg, i64 1152921504606846975, i64 %i.fh ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #20 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fc
  store i64 %spec.select.i.i.i, ptr %i.fl, align 8
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0130.0227, %.sroa.18138.0229
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fk, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0130.0227, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.fm = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !33
  store i64 %i.fm, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !32
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fn, %.sroa.18138.0229
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !26

_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fk, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %.sroa.0130.0227, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0227, i64 noundef %i.fc) #21
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fi
  br label %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i"

"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i": ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.z, %bb.x, %bb.w, %bb.v
  %.sroa.0130.1 = phi ptr [ %.sroa.0130.0227, %bb.w ], [ %i.fk, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.0130.0227, %bb.z ], [ %.sroa.0130.0227, %bb.x ], [ %.sroa.0130.0227, %bb.v ] ; 9 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0228, %bb.w ], [ %i.fp, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %i.ez, %bb.z ], [ %.sroa.9.0228, %bb.x ], [ %.sroa.9.0228, %bb.v ] ; 9 uses
  %.sroa.18138.1 = phi ptr [ %.sroa.18138.0229, %bb.w ], [ %i.fq, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.18138.0229, %bb.z ], [ %.sroa.18138.0229, %bb.x ], [ %.sroa.18138.0229, %bb.v ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.fs = load atomic volatile i64, ptr %i.fr monotonic, align 8 ; 6 uses
  %i.ft = and i64 %i.fs, 3
  %i.fu = icmp eq i64 %i.ft, 3
  %i.fv = and i64 %i.fs, 4294967295
  %i.fw = icmp ne i64 %i.fv, 3
  %i.fx = and i1 %i.fu, %i.fw
  %i.fy = icmp eq i64 %i.fs, 4294967296
  %or.cond.1.i.i = or i1 %i.fy, %i.fx
  br i1 %or.cond.1.i.i, label %bb.ad, label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"

bb.ad:                                            ; preds = %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i"
  %i.fz = and i64 %i.fs, 1
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = and i64 %i.fs, -3
  %spec.select.i.1.i.i = select i1 %i.ga, i64 %i.fs, i64 %i.gb ; 4 uses
  %i.gc = and i64 %spec.select.i.1.i.i, 1
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = add i64 %spec.select.i.1.i.i, 15
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load atomic volatile i32, ptr %i.gf acquire, align 4
  %i.gh = and i32 %i.gg, 16777216
  %.not.i.1.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.1.i.i, label %bb.af, label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i34.1.i.i = icmp eq ptr %.sroa.9.1, %.sroa.18138.1
  br i1 %.not.i.i.i34.1.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %spec.select.i.1.i.i, ptr %.sroa.9.1, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.1, i64 8
  br label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"

bb.ah:                                            ; preds = %bb.af
  %i.gj = ptrtoint ptr %.sroa.9.1 to i64
  %i.gk = ptrtoint ptr %.sroa.0130.1 to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 4 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.ab, label %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i

_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i: ; preds = %bb.ah
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.1.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i.i.1.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i.i.1.i.i = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.1.i.i)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #20 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl
  store i64 %spec.select.i.1.i.i, ptr %i.gu, align 8
  %.not10.i.i.i.i.i.i.i.1.i.i = icmp eq ptr %.sroa.0130.1, %.sroa.9.1
  br i1 %.not10.i.i.i.i.i.i.i.1.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.1.i.i, label %.lr.ph.i.i.i.i.i.i.i.1.i.i

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i, %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %.012.i.i.i.i.i.i.i.1.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.1.i.i ], [ %i.gt, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.1.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.1.i.i ], [ %.sroa.0130.1, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.gv = load i64, ptr %.0911.i.i.i.i.i.i.i.1.i.i, align 8, !alias.scope !35
  store i64 %i.gv, ptr %.012.i.i.i.i.i.i.i.1.i.i, align 8, !alias.scope !34
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.1.i.i, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.1.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq ptr %i.gw, %.sroa.9.1
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.1.i.i, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, !llvm.loop !26

_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.1.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i
  %.0.lcssa.i.i.i.i.i.i.i.1.i.i = phi ptr [ %i.gt, %_ZNKSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i.i ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.1.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.1.i.i, i64 8
  %.not.i23.i.i.i.i.1.i.i = icmp eq ptr %.sroa.0130.1, null
  br i1 %.not.i23.i.i.i.i.1.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.1.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.1, i64 noundef %i.gl) #21
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i

_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.1.i.i
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  br label %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"

"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit": ; preds = %.loopexit23.i.i, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i", %bb.ad, %bb.ae, %bb.ag, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i, %bb.l, %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEE3popEv.exit, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit.i.i"
  %.sroa.0130.3 = phi ptr [ %.sroa.0130.0227, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit.i.i" ], [ %.sroa.0130.0227, %bb.l ], [ %.sroa.0130.0227, %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEE3popEv.exit ], [ %.sroa.0130.0227, %.loopexit23.i.i ], [ %.sroa.0130.1, %bb.ad ], [ %i.gt, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i ], [ %.sroa.0130.1, %bb.ag ], [ %.sroa.0130.1, %bb.ae ], [ %.sroa.0130.1, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i" ] ; 6 uses
  %.sroa.9.3 = phi ptr [ %.sroa.9.0228, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit.i.i" ], [ %.sroa.9.0228, %bb.l ], [ %.sroa.9.0228, %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEE3popEv.exit ], [ %.sroa.9.0228, %.loopexit23.i.i ], [ %.sroa.9.1, %bb.ad ], [ %i.gy, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i ], [ %i.gi, %bb.ag ], [ %.sroa.9.1, %bb.ae ], [ %.sroa.9.1, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i" ] ; 3 uses
  %.sroa.18138.3 = phi ptr [ %.sroa.18138.0229, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_0clENS0_6TaggedIS5_EE.exit.i.i" ], [ %.sroa.18138.0229, %bb.l ], [ %.sroa.18138.0229, %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEE3popEv.exit ], [ %.sroa.18138.0229, %.loopexit23.i.i ], [ %.sroa.18138.1, %bb.ad ], [ %i.gz, %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.1.i.i ], [ %.sroa.18138.1, %bb.ag ], [ %.sroa.18138.1, %bb.ae ], [ %.sroa.18138.1, %"_ZZN2v88internal10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS4_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEEENK3$_2clENS0_6TaggedINS0_6ObjectEEE.exit.i.i" ] ; 2 uses
  %i.ha = add i64 %i.az, 39
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load i64, ptr %i.hb, align 8            ; 3 uses
  %i.hd = add i64 %i.hc, %i.h
  %i.he = inttoptr i64 %i.hd to ptr               ; 2 uses
  %i.hf = load atomic volatile i64, ptr %i.he monotonic, align 8 ; 2 uses
  %i.hg = lshr i64 %i.hf, 32
  %i.hh = trunc nuw i64 %i.hg to i32              ; 2 uses
  %i.hi = lshr i64 %i.hf, 38
  %i.hj = trunc i64 %i.hi to i8
  %i.hk = and i8 %i.hj, 7                         ; 3 uses
  %i.hl = icmp eq i8 %i.hk, %5
  br i1 %i.hl, label %.critedge67, label %bb.aj

bb.aj:                                            ; preds = %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"
  %i.hm = icmp eq i8 %i.hk, 5
  %or.cond.i = or i1 %i.an, %i.hm
  %i.hn = icmp eq i8 %i.hk, 0
  %.0.i = select i1 %i.hn, i1 %i.ap, i1 %i.ao
  %or.cond = or i1 %or.cond.i, %.0.i
  br i1 %or.cond, label %_ZNK2v88internal14Representation21CanBeInPlaceChangedToERKS1_.exit.thread, label %.critedge2, !prof !36

_ZNK2v88internal14Representation21CanBeInPlaceChangedToERKS1_.exit.thread: ; preds = %bb.aj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #19
  unreachable

.critedge67:                                      ; preds = %"_ZN2v88internal19TransitionsAccessor17ForEachTransitionIZNS0_10MapUpdater15UpdateFieldTypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS6_INS0_4NameEEENS0_17PropertyConstnessENS0_14RepresentationENS6_INS0_9FieldTypeEEEE3$_0ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_1ZNS3_15UpdateFieldTypeES5_S8_S9_SB_SC_SD_SF_E3$_2EEvPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSK_2EEEET_T0_T1_.exit"
  %i.ho = lshr i32 %i.hh, 1
  %i.hp = and i32 %i.ho, 1
  %i.hq = icmp eq i32 %4, %i.hp
  br i1 %i.hq, label %bb.ak, label %.critedge2

bb.ak:                                            ; preds = %.critedge67
  %i.hr = add i64 %i.aq, %i.hc
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load atomic volatile i64, ptr %i.hs monotonic, align 8
  %i.hu = call i64 @_ZN2v88internal3Map15UnwrapFieldTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.ht) #18
  %i.hv = load i64, ptr %i.a, align 8
  %i.hw = call noundef zeroext i1 @_ZN2v88internal9FieldType6EqualsENS0_6TaggedIS1_EES3_(i64 %i.hu, i64 %i.hv) #18
  br i1 %i.hw, label %bb.al, label %.critedge2, !llvm.loop !30

.critedge2:                                       ; preds = %bb.aj, %.critedge67, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.hx = call { i32, ptr } @_ZN2v88internal3Map13WrapFieldTypeENS0_12DirectHandleINS0_9FieldTypeEEE(ptr %i.a) #18 ; 2 uses
  %i.hy = extractvalue { i32, ptr } %i.hx, 0
  store i32 %i.hy, ptr %11, align 8
  %i.hz = extractvalue { i32, ptr } %i.hx, 1
  store ptr %i.hz, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ia = load atomic volatile i64, ptr %i.he monotonic, align 8
  %sum.shift.i = lshr i64 %i.ia, 51
  %i.ib = trunc nuw nsw i64 %sum.shift.i to i32
  %i.ic = and i32 %i.ib, 1023
  %i.id = lshr i32 %i.hh, 2
  %i.ie = and i32 %i.id, 7
  call void @_ZN2v88internal10Descriptor9DataFieldENS0_12DirectHandleINS0_4NameEEEiNS0_18PropertyAttributesENS0_17PropertyConstnessENS0_14RepresentationERKNS0_23MaybeObjectDirectHandleE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %12, ptr %3, i32 noundef %i.ic, i32 noundef %i.ie, i32 noundef %4, i8 %5, ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i64 %i.hc, ptr %13, align 8
  call void @_ZN2v88internal15DescriptorArray7ReplaceENS0_13InternalIndexEPNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 %2, ptr noundef nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge2
  %i.if = load ptr, ptr %i.ah, align 8
  %i.ig = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %.preheader, label %bb.g

._crit_edge:                                      ; preds = %bb.aw, %.preheader
  %.not.i.i.i78 = icmp eq ptr %.sroa.0130.3, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge
  %i.ii = ptrtoint ptr %.sroa.18138.3 to i64
  %i.ij = ptrtoint ptr %.sroa.0130.3 to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.3, i64 noundef %i.ik) #21
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.am
  %i.il = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i79, label %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EED2Ev.exit
  %i.im = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.in = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = icmp ult ptr %i.im, %i.io
  br i1 %i.ip, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i ], [ %i.im, %bb.an ] ; 3 uses
  %i.iq = load ptr, ptr %.06.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef 512) #21
  %i.ir = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.is = icmp ult ptr %.06.i.i.i.i, %i.in
  br i1 %i.is, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !31

_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %10, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.an
  %i.it = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.il, %bb.an ]
  %i.iu = load i64, ptr %i.y, align 8
  %i.iv = shl i64 %i.iu, 3
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iv) #21
  br label %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_3MapEEESaIS4_EED2Ev.exit, %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ax

bb.ao:                                            ; preds = %.lr.ph233, %bb.aw
  %.sroa.0105.0232 = phi ptr [ %.sroa.0130.3, %.lr.ph233 ], [ %i.km, %bb.aw ] ; 2 uses
  %i.iw = load i64, ptr %.sroa.0105.0232, align 8 ; 2 uses
  %i.ix = add i64 %i.iw, 39
  %i.iy = inttoptr i64 %i.ix to ptr
  %i.iz = load i64, ptr %i.iy, align 8            ; 2 uses
  %i.ja = add i64 %i.iz, %i.h
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = load atomic volatile i64, ptr %i.jb monotonic, align 8 ; 2 uses
  %sum.shift = lshr i64 %i.jc, 33
  %i.jd = trunc nuw nsw i64 %sum.shift to i32
  %i.je = and i32 %i.jd, 1                        ; 2 uses
  %i.jf = select i1 %i.at, i32 0, i32 %i.je       ; 2 uses
  %i.jg = lshr i64 %i.jc, 38
  %i.jh = trunc i64 %i.jg to i8
  %i.ji = and i8 %i.jh, 7                         ; 7 uses
  switch i8 %5, label %.split.i.i [
    i8 5, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.i
    i8 3, label %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i.i
  ]

.split.i.i:                                       ; preds = %bb.ao
  %or.cond.not.i = icmp slt i8 %5, %i.ji
  br i1 %or.cond.not.i, label %bb.ap, label %_ZN2v88internal14Representation10generalizeES1_.exit

_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i.i: ; preds = %bb.ao
  %i.jj = icmp eq i8 %i.ji, 0
  br i1 %i.jj, label %_ZN2v88internal14Representation10generalizeES1_.exit, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.i

_ZNK2v88internal14Representation9fits_intoERKS1_.exit.i: ; preds = %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i.i, %bb.ao
  %.old.i = icmp eq i8 %5, %i.ji
  br i1 %.old.i, label %_ZN2v88internal14Representation10generalizeES1_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.i, %.split.i.i
  switch i8 %i.ji, label %.split.i [
    i8 5, label %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.thread.i
    i8 3, label %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i
  ]

.split.i:                                         ; preds = %bb.ap
  %i.jk = icmp sgt i8 %i.ji, %5
  br i1 %i.jk, label %_ZN2v88internal14Representation10generalizeES1_.exit, label %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.thread.i

_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i: ; preds = %bb.ap
  br i1 %i.au, label %_ZN2v88internal14Representation10generalizeES1_.exit, label %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.thread.i

_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.thread.i: ; preds = %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i, %.split.i, %bb.ap
  br label %_ZN2v88internal14Representation10generalizeES1_.exit

_ZN2v88internal14Representation10generalizeES1_.exit: ; preds = %.split.i.i, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i.i, %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.i, %.split.i, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.thread.i
  %.sroa.0.0.i = phi i8 [ 4, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.thread.i ], [ %5, %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.i ], [ 3, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i ], [ %i.ji, %.split.i ], [ 3, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i.i ], [ %5, %.split.i.i ] ; 4 uses
  %i.jl = add i64 %i.av, %i.iz
  %i.jm = inttoptr i64 %i.jl to ptr               ; 2 uses
  %i.jn = load atomic volatile i64, ptr %i.jm monotonic, align 8
  %i.jo = call i64 @_ZN2v88internal3Map15UnwrapFieldTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.jn) #18 ; 2 uses
  %i.jp = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.jq = load ptr, ptr %i.ax, align 8
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.aq, label %_ZN2v88internal6HandleINS0_9FieldTypeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.aq:                                            ; preds = %_ZN2v88internal14Representation10generalizeES1_.exit
  %i.js = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal6HandleINS0_9FieldTypeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9FieldTypeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal14Representation10generalizeES1_.exit, %bb.aq
  %.0.i.i69 = phi ptr [ %i.js, %bb.aq ], [ %i.jp, %_ZN2v88internal14Representation10generalizeES1_.exit ] ; 4 uses
  %i.jt = ptrtoint ptr %.0.i.i69 to i64
  %i.ju = add i64 %i.jt, 8
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %i.aw, align 8
  store i64 %i.jo, ptr %.0.i.i69, align 8
  %i.jw = call noundef zeroext i1 @_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EENS0_12DirectHandleIS1_EE(i64 %i.jo, ptr %i.a) #18
  br i1 %i.jw, label %_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal6HandleINS0_9FieldTypeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.jx = load i64, ptr %i.a, align 8
  %i.jy = call noundef zeroext i1 @_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EENS0_12DirectHandleIS1_EE(i64 %i.jx, ptr nonnull %.0.i.i69) #18
  br i1 %i.jy, label %_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jz = call ptr @_ZN2v88internal9FieldType3AnyEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_9FieldTypeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.ar, %bb.as
  %.sroa.06.0.i = phi ptr [ %i.jz, %bb.as ], [ %i.a, %_ZN2v88internal6HandleINS0_9FieldTypeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i69, %bb.ar ] ; 2 uses
  switch i8 %.sroa.0.0.i, label %.split.i87 [
    i8 5, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit
    i8 3, label %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i85
  ]

.split.i87:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit
  %or.cond.not = icmp slt i8 %.sroa.0.0.i, %5
  br i1 %or.cond.not, label %bb.at, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread, !prof !37

_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i85: ; preds = %_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit
  switch i8 %5, label %bb.at [
    i8 3, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread
    i8 0, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread
  ], !prof !38

_ZNK2v88internal14Representation9fits_intoERKS1_.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_119GeneralizeFieldTypeENS0_14RepresentationENS0_12DirectHandleINS0_9FieldTypeEEES2_S5_PNS0_7IsolateE.exit
  br i1 %.old.old, label %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread, label %bb.at, !prof !39

bb.at:                                            ; preds = %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i85, %.split.i87, %_ZNK2v88internal14Representation9fits_intoERKS1_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #19
  unreachable

_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread: ; preds = %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i85, %_ZNK2v88internal14Representation20is_more_general_thanERKS1_.exit.i85, %.split.i87, %_ZNK2v88internal14Representation9fits_intoERKS1_.exit
  %.not65 = icmp eq i32 %i.jf, %i.je
  %i.ka = icmp eq i8 %.sroa.0.0.i, %i.ji
  %or.cond215 = select i1 %.not65, i1 %i.ka, i1 false
  br i1 %or.cond215, label %bb.au, label %.critedge4

bb.au:                                            ; preds = %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread
  %i.kb = load atomic volatile i64, ptr %i.jm monotonic, align 8
  %i.kc = call i64 @_ZN2v88internal3Map15UnwrapFieldTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.kb) #18
  %i.kd = load i64, ptr %.sroa.06.0.i, align 8
  %i.ke = call noundef zeroext i1 @_ZN2v88internal9FieldType6EqualsENS0_6TaggedIS1_EES3_(i64 %i.kc, i64 %i.kd) #18
  br i1 %i.ke, label %bb.aw, label %.critedge4

.critedge4:                                       ; preds = %_ZNK2v88internal14Representation9fits_intoERKS1_.exit.thread, %bb.au
  %i.kf = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.kg = load ptr, ptr %i.ax, align 8
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %bb.av, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.av:                                            ; preds = %.critedge4
  %i.ki = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge4, %bb.av
  %.0.i.i = phi ptr [ %i.ki, %bb.av ], [ %i.kf, %.critedge4 ] ; 3 uses
  %i.kj = ptrtoint ptr %.0.i.i to i64
  %i.kk = add i64 %i.kj, 8
  %i.kl = inttoptr i64 %i.kk to ptr
  store ptr %i.kl, ptr %i.aw, align 8
  store i64 %i.iw, ptr %.0.i.i, align 8
  call void @_ZN2v88internal10MapUpdater15GeneralizeFieldEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_13InternalIndexENS0_17PropertyConstnessENS0_14RepresentationENS4_INS0_9FieldTypeEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, i64 %2, i32 noundef %i.jf, i8 %.sroa.0.0.i, ptr %.sroa.06.0.i)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.au
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0105.0232, i64 8 ; 2 uses
  %i.kn = icmp eq ptr %i.km, %.sroa.9.3
  br i1 %i.kn, label %._crit_edge, label %bb.ao

bb.ax:                                            ; preds = %bb.a, %_ZNSt5queueIN2v88internal6TaggedINS1_3MapEEESt5dequeIS4_SaIS4_EEED2Ev.exit
  ret void
}

declare i64 @_ZN2v88internal8JSObject25InvalidatePrototypeChainsENS0_6TaggedINS0_3MapEEE(i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal9FieldType6EqualsENS0_6TaggedIS1_EES3_(i64, i64) local_unnamed_addr #3

declare void @_ZN2v88internal15DescriptorArray7ReplaceENS0_13InternalIndexEPNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(8), i64, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE(i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EENS0_12DirectHandleIS1_EE(i64, ptr) local_unnamed_addr #3

declare i64 @_ZNK2v88internal3Map14FindFieldOwnerENS0_16PtrComprCageBaseENS0_13InternalIndexE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v84base5Mutex7TryLockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  %i.h = cmpxchg weak ptr %i.g, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.b) #18
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #18
  %i.k = load i32, ptr %i.d, align 4
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.d, align 4
  %i.m = cmpxchg weak ptr %i.g, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  tail call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.b) #18
  br label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit

_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit: ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, %bb.c
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

declare void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #3

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.i, %i.g                  ; 2 uses
  %.19.i.i.i = select i1 %i.j, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.b, !llvm.loop !1

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.b
  %i.k = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.k, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.g, %i.m
  br i1 %i.n, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %.sroa.023.0.copyload = load ptr, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit, %bb.c
  %.sroa.5.0 = phi ptr [ null, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ], [ %.sroa.5.0.copyload, %bb.c ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ] ; 2 uses
  %.sroa.023.0 = phi ptr [ null, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ], [ %.sroa.023.0.copyload, %bb.c ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ]
  %i.p = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #18
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 9 ; 2 uses
  %i.z = cmpxchg weak ptr %i.y, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.aa = extractvalue { i8, i1 } %i.z, 1
  br i1 %i.aa, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.t) #18
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.d, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #18
  %i.ac = load i32, ptr %i.v, align 4
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.v, align 4
  %i.ae = cmpxchg weak ptr %i.y, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.af = extractvalue { i8, i1 } %i.ae, 1
  br i1 %i.af, label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.t) #18
  br label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit

_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit: ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, %bb.e
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18
  %.not = icmp eq ptr %.sroa.5.0, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %.sroa.023.0, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx25, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

bb.g:                                             ; preds = %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_18ParkedMutexGuardIfC1EPS1_PNS_4base5MutexEbEUlvE_EEvT_ENKUlvE_clEv.exit
  %i.ah = call noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16:    ; preds = %bb.g, %bb.f
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !1

_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4
  store i32 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8
  %i.v = load i32, ptr %i.t, align 4
  %i.w = icmp slt i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #21
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #22 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !40

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #22 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !40

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.041.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.m, %i.c                  ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 2 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.044.i, %bb.d ], [ %.19.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not10.i24.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i, %.lr.ph.i25.i
  %.012.i26.i = phi ptr [ %.1.i31.i, %.lr.ph.i25.i ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ] ; 3 uses
  %.0811.i27.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 32
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %i.c, %i.p                  ; 2 uses
  %.19.i28.i = select i1 %i.q, ptr %.012.i26.i, ptr %.0811.i27.i ; 2 uses
  %.1.in.v.i29.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %.lr.ph.i25.i, !llvm.loop !41

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %bb.b, !llvm.loop !42

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
  store ptr null, ptr %i.a, align 8
  store ptr %i.b, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.y, align 8
  store i64 0, ptr %i.s, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit
  %i.z = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %i.z, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.08.i = phi ptr [ %i.aa, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i) #22 ; 2 uses
  %i.ab = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #21
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.s, align 8
  %i.ae = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %i.ae, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit, label %.lr.ph.i2, !llvm.loop !43

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit: ; preds = %.lr.ph.i2, %bb.f, %.critedge.i
  %i.af = phi i64 [ %i.t, %.critedge.i ], [ 0, %bb.f ], [ %i.ad, %.lr.ph.i2 ]
  %i.ag = sub i64 %i.t, %i.af
  ret i64 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() local_unnamed_addr #3

declare ptr @_ZN2v88internal6Object11OptimalTypeENS0_6TaggedIS1_EEPNS0_7IsolateENS0_14RepresentationE(i64, ptr noundef, i8) local_unnamed_addr #3

declare ptr @_ZN2v88internal9FieldType3AnyEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN2v88internal3Map9NormalizeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_25PropertyNormalizationModeEbPKc(ptr noundef, ptr, i8 noundef zeroext, ptr, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal19TransitionsAccessor30TraverseTransitionTreeInternalERKSt8functionIFvNS0_6TaggedINS0_3MapEEEEEPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSB_2EEEE(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8OFStreamC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #3

declare void @_ZN2v88internal6String7PrintOnEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal9FieldType7PrintToENS0_6TaggedIS1_EERSo(i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_17PropertyConstnessE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal15JavaScriptFrame8PrintTopEPNS0_7IsolateEP8_IO_FILEbb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #18
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #18, !inline_history !13
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #18, !inline_history !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #18, !inline_history !13
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #18, !inline_history !13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #21
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #18, !inline_history !45
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #18, !inline_history !45
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #21, !inline_history !46
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare i64 @_ZN2v88internal3Map15UnwrapFieldTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare i64 @_ZN2v88internal9FieldType3AnyEv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_18PropertyAttributesE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8 ; 2 uses
  %i.a = load i32, ptr %0, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i8, ptr %i.c monotonic, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = sub nsw i32 %i.e, %i.a                   ; 2 uses
  %i.g = icmp ult i32 %i.f, 256
  br i1 %i.g, label %"_ZSt10__invoke_rIvRZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateENS1_6TaggedINS1_3MapEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.56) #19
  unreachable

"_ZSt10__invoke_rIvRZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateENS1_6TaggedINS1_3MapEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.a
  %i.h = trunc nuw i32 %i.f to i8
  store atomic volatile i8 %i.h, ptr %i.c monotonic, align 1
  %i.i = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 536870911
  store atomic volatile i32 %i.l, ptr %i.j monotonic, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_1E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #13 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.d = and i32 %i.c, 536870911
  store atomic volatile i32 %i.d, ptr %i.b monotonic, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS2_7IsolateENS2_6TaggedINS2_3MapEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8
  store ptr %i.aa, ptr %i.t, align 8
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE15_M_allocate_mapEm.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !12

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6TaggedINS1_3MapEEESaIS4_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8
  store ptr %i.be, ptr %i.av, align 8
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = load i64, ptr %i.k, align 8
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #21
  store ptr %i.aq, ptr %0, align 8
  store i64 %i.am, ptr %i.k, align 8
  br label %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN2v88internal6TaggedINS1_3MapEEES6_ET0_T_S8_S7_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8
  %i.bi = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal6TaggedINS1_3MapEEESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = load i64, ptr %1, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.c, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.o, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.au, ptr %i.av, align 8
  store ptr %i.at, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

declare void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!14 = distinct !{!14, i1 true, !"_ZN2v88internal12_GLOBAL__N_131DetectIntegrityLevelTransitionsENS0_6TaggedINS0_3MapEEEPNS0_7IsolateEPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEENS0_15ConcurrencyModeE"}
!15 = distinct !{!15, !14, !"_ZN2v88internal12_GLOBAL__N_131DetectIntegrityLevelTransitionsENS0_6TaggedINS0_3MapEEEPNS0_7IsolateEPNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEENS0_15ConcurrencyModeE: argument 0"}
!16 = distinct !{!16, !11}
!17 = !{!15}
!18 = !{!"branch_weights", i32 1, i32 4001}
!19 = distinct !{null}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_"}
!24 = distinct !{!24, !23, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !23, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, i1 true, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0:It1"}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1:It1"}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{!24}
!33 = !{!25}
!34 = !{!28}
!35 = !{!29}
!36 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!37 = !{!"branch_weights", i32 1515112, i32 -1515112}
!38 = !{!"branch_weights", i32 1515112, i32 2146726092, i32 2146726092}
!39 = !{!"branch_weights", !"expected", i32 2145968536, i32 1515112}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!46 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
end_hunk_0
