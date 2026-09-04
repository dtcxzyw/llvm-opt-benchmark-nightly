Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/train_share_states?download=true
inline.NumInlined: 659
inline.NumDeleted: 262
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM18MultiValBinWrapper21CopyMultiValBinSubsetERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  %i.aba = load ptr, ptr %9, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i370 = icmp eq ptr %i.aba, null
  br i1 %.not.i.i.i370, label %_ZNSt6vectorIjSaIjEED2Ev.exit371, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.abb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !73
  %i.abd = ptrtoint ptr %i.abc to i64
  %i.abe = ptrtoint ptr %i.aba to i64
  %i.abf = sub i64 %i.abd, %i.abe
  call void @_ZdlPvm(ptr noundef nonnull %i.aba, i64 noundef %i.abf) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit371

_ZNSt6vectorIjSaIjEED2Ev.exit371:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.abg = load ptr, ptr %8, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i372 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i372, label %_ZNSt6vectorIjSaIjEED2Ev.exit373, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit371
  %i.abh = load ptr, ptr %i.ys, align 8, !tbaa !73
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = ptrtoint ptr %i.abg to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.abk) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit373

_ZNSt6vectorIjSaIjEED2Ev.exit373:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit371, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  %i.abl = load ptr, ptr %7, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i374 = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i374, label %_ZNSt6vectorIjSaIjEED2Ev.exit375, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit373
  %i.abm = load ptr, ptr %i.yx, align 8, !tbaa !73
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.abl to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %i.abl, i64 noundef %i.abp) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit375

_ZNSt6vectorIjSaIjEED2Ev.exit375:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit373, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  %.pre703 = load ptr, ptr %6, align 8, !tbaa !67
  br label %bb.en

bb.ei:                                            ; preds = %.loopexit501, %.loopexit.split-lp502, %.loopexit496, %.loopexit.split-lp497, %.loopexit491, %.loopexit.split-lp492, %.loopexit486, %.loopexit.split-lp487, %.loopexit481, %.loopexit.split-lp482, %.loopexit476, %.loopexit.split-lp477, %.loopexit471, %.loopexit.split-lp472, %.loopexit465, %.loopexit.split-lp466, %.loopexit460, %.loopexit.split-lp461, %.loopexit455, %.loopexit.split-lp456, %.loopexit450, %.loopexit.split-lp451, %.loopexit445, %.loopexit.split-lp446, %.loopexit440, %.loopexit.split-lp441, %.loopexit, %.loopexit.split-lp, %bb.ap, %bb.dw, %bb.dx, %bb.dy, %bb.ao
  %.pn169.pn.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ], [ %i.aah, %bb.dy ], [ %i.aag, %bb.dx ], [ %i.aaf, %bb.dw ], [ %lpad.loopexit.split-lp468, %.loopexit.split-lp466 ], [ %lpad.loopexit.split-lp463, %.loopexit.split-lp461 ], [ %lpad.loopexit.split-lp458, %.loopexit.split-lp456 ], [ %lpad.loopexit.split-lp453, %.loopexit.split-lp451 ], [ %lpad.loopexit.split-lp448, %.loopexit.split-lp446 ], [ %lpad.loopexit.split-lp443, %.loopexit.split-lp441 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp499, %.loopexit.split-lp497 ], [ %lpad.loopexit.split-lp494, %.loopexit.split-lp492 ], [ %lpad.loopexit.split-lp489, %.loopexit.split-lp487 ], [ %lpad.loopexit.split-lp484, %.loopexit.split-lp482 ], [ %lpad.loopexit.split-lp479, %.loopexit.split-lp477 ], [ %lpad.loopexit.split-lp474, %.loopexit.split-lp472 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit442, %.loopexit440 ], [ %lpad.loopexit447, %.loopexit445 ], [ %lpad.loopexit452, %.loopexit450 ], [ %lpad.loopexit457, %.loopexit455 ], [ %lpad.loopexit462, %.loopexit460 ], [ %lpad.loopexit467, %.loopexit465 ], [ %lpad.loopexit473, %.loopexit471 ], [ %lpad.loopexit478, %.loopexit476 ], [ %lpad.loopexit483, %.loopexit481 ], [ %lpad.loopexit488, %.loopexit486 ], [ %lpad.loopexit493, %.loopexit491 ], [ %lpad.loopexit498, %.loopexit496 ], [ %lpad.loopexit503, %.loopexit501 ], [ %lpad.loopexit.split-lp504, %.loopexit.split-lp502 ]
  %i.abq = load ptr, ptr %10, align 8, !tbaa !41  ; 3 uses
  %.not.i.i.i376 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorIjSaIjEED2Ev.exit377, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.abr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !73
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = ptrtoint ptr %i.abq to i64
  %i.abv = sub i64 %i.abt, %i.abu
  call void @_ZdlPvm(ptr noundef nonnull %i.abq, i64 noundef %i.abv) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit377

_ZNSt6vectorIjSaIjEED2Ev.exit377:                 ; preds = %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  %i.abw = load ptr, ptr %9, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i378 = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIjSaIjEED2Ev.exit379, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit377
  %i.abx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !73
  %i.abz = ptrtoint ptr %i.aby to i64
  %i.aca = ptrtoint ptr %i.abw to i64
  %i.acb = sub i64 %i.abz, %i.aca
  call void @_ZdlPvm(ptr noundef nonnull %i.abw, i64 noundef %i.acb) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

_ZNSt6vectorIjSaIjEED2Ev.exit379:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit377, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.acc = load ptr, ptr %8, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.acc, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorIjSaIjEED2Ev.exit381, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit379
  %i.acd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !73
  %i.acf = ptrtoint ptr %i.ace to i64
  %i.acg = ptrtoint ptr %i.acc to i64
  %i.ach = sub i64 %i.acf, %i.acg
  call void @_ZdlPvm(ptr noundef nonnull %i.acc, i64 noundef %i.ach) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit381

_ZNSt6vectorIjSaIjEED2Ev.exit381:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit379, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  %i.aci = load ptr, ptr %7, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i382 = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i382, label %_ZNSt6vectorIjSaIjEED2Ev.exit383, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit381
  %i.acj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !73
  %i.acl = ptrtoint ptr %i.ack to i64
  %i.acm = ptrtoint ptr %i.aci to i64
  %i.acn = sub i64 %i.acl, %i.acm
  call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.acn) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit383

_ZNSt6vectorIjSaIjEED2Ev.exit383:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit381, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %bb.ep

bb.en:                                            ; preds = %._crit_edge651.thread, %bb.q, %bb.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit375
  %i.aco = phi ptr [ %i.eg, %._crit_edge651.thread ], [ %i.eg, %bb.q ], [ %i.eg, %bb.ac ], [ %.pre703, %_ZNSt6vectorIjSaIjEED2Ev.exit375 ] ; 3 uses
  %.not.i.i.i384 = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i384, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.acp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !68
  %i.acr = ptrtoint ptr %i.acq to i64
  %i.acs = ptrtoint ptr %i.aco to i64
  %i.act = sub i64 %i.acr, %i.acs
  call void @_ZdlPvm(ptr noundef nonnull %i.aco, i64 noundef %i.act) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret void

bb.ep:                                            ; preds = %.loopexit514, %.loopexit.split-lp515, %.loopexit508, %.loopexit.split-lp509, %bb.x, %_ZNSt6vectorIjSaIjEED2Ev.exit383
  %.pn178.pn = phi { ptr, i32 } [ %.pn169.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit383 ], [ %i.fn, %bb.x ], [ %lpad.loopexit.split-lp511, %.loopexit.split-lp509 ], [ %lpad.loopexit510, %.loopexit508 ], [ %lpad.loopexit516, %.loopexit514 ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp515 ]
  %i.acu = load ptr, ptr %6, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i385 = icmp eq ptr %i.acu, null
  br i1 %.not.i.i.i385, label %_ZNSt6vectorIiSaIiEED2Ev.exit386, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.acv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !68
  %i.acx = ptrtoint ptr %i.acw to i64
  %i.acy = ptrtoint ptr %i.acu to i64
  %i.acz = sub i64 %i.acx, %i.acy
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef %i.acz) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit386

_ZNSt6vectorIiSaIiEED2Ev.exit386:                 ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  resume { ptr, i32 } %.pn178.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM18MultiValBinWrapper13ResizeHistBufEPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPNS_11MultiValBinEPd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((124, 132), (152, 160)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.d, ptr %i.e, align 4, !tbaa !50
  %i.f = add nsw i32 %i.d, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = shl nsw i32 %i.g, 5                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.h, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %3, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !58
  %i.m = sext i32 %i.l to i64
  %i.n = sext i32 %i.h to i64
  %i.o = shl nsw i64 %i.n, 1
  %i.p = mul nsw i64 %i.o, %i.m                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.s = load ptr, ptr %1, align 8, !tbaa !35
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.p
  br i1 %i.x, label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE6resizeEm.exit, label %bb.b

_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE6resizeEm.exit: ; preds = %bb.a
  %i.y = sub nuw i64 %i.p, %i.w
  tail call void @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.y)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE6resizeEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 1152921504606846975        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not37 = icmp ult i64 %i.m, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !46
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !36
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975) ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.u) #3
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.w, ptr null ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.g ; 2 uses
  %i.y = shl nuw nsw i64 %1, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !46
  %.not13.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit
  %.0.i.i.i.i49 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %2 = add i64 %i.e, -8
  %3 = sub i64 %2, %i.f                           ; 2 uses
  %4 = lshr i64 %3, 3
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %6 = sub i64 %i.f, %.0.i.i.i.i49
  %diff.check = icmp ugt i64 %6, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %5, 4611686018427387900        ; 3 uses
  %7 = shl i64 %n.vec, 3                          ; 2 uses
  %8 = getelementptr i8, ptr %.0.i.i.i.i, i64 %7
  %9 = getelementptr i8, ptr %i.d, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %10 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i, i64 %10 ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.d, i64 %10 ; 2 uses
  %11 = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x double>, ptr %next.gep50, align 8, !tbaa !46
  %wide.load51 = load <2 x double>, ptr %11, align 8, !tbaa !46
  %12 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !46
  store <2 x double> %wide.load51, ptr %12, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.preheader53

.lr.ph.i.i.preheader53:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.preheader ], [ %8, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.preheader ], [ %9, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader53, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader53 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader53 ] ; 2 uses
  %i.z = load double, ptr %.sroa.010.014.i.i, align 8, !tbaa !46
  store double %i.z, ptr %.015.i.i, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !201

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit
  %.not.i45 = icmp eq ptr %i.d, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit
  call void @free(ptr noundef nonnull %i.d) #3
  br label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46

_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, %bb.e
  store ptr %.0.i.i.i.i, ptr %0, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.t
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 32 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 21 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 32 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i156, label %_ZNSt6vectorIjSaIjEE5clearEv.exit158, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.e, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit158

_ZNSt6vectorIjSaIjEE5clearEv.exit158:             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157
  %i.h = phi ptr [ %i.g, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %i.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.k = load ptr, ptr %1, align 8, !tbaa !76     ; 5 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0                     ; 2 uses
  br i1 %3, label %.preheader379, label %.preheader385

.preheader385:                                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit158
  br i1 %i.q, label %.lr.ph436.preheader, label %._crit_edge472

.lr.ph436.preheader:                              ; preds = %.preheader385
  %wide.trip.count517 = and i64 %i.o, 2147483647
  br label %.lr.ph436

.preheader379:                                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit158
  br i1 %i.q, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %.preheader379
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  br label %bb.g

._crit_edge499.loopexit:                          ; preds = %bb.az
  %.pre569 = load ptr, ptr %i.f, align 8, !tbaa !40
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %.preheader379
  %i.t = phi ptr [ %i.h, %.preheader379 ], [ %.pre569, %._crit_edge499.loopexit ] ; 5 uses
  %.0369.lcssa = phi i32 [ 0, %.preheader379 ], [ %.4, %._crit_edge499.loopexit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge499
  store i32 %.0369.lcssa, ptr %i.t, align 4, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.w, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %._crit_edge499
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !41   ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %i.ag = select i1 %i.ae, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 3 uses
  store i32 %.0369.lcssa, ptr %i.aj, align 4, !tbaa !42
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ao) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !41
  store ptr %i.al, ptr %i.f, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %.lr.ph498, %bb.az
  %indvars.iv546 = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next547, %bb.az ] ; 3 uses
  %i.aq = phi ptr [ %i.k, %.lr.ph498 ], [ %i.jy, %bb.az ]
  %.0369495 = phi i32 [ 0, %.lr.ph498 ], [ %.4, %bb.az ] ; 5 uses
  %.0373494 = phi i32 [ 0, %.lr.ph498 ], [ %.4377, %bb.az ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv546 ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load i8, ptr %i.at, align 8, !tbaa !97, !range !32, !noundef !33
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %.preheader378

.preheader378:                                    ; preds = %bb.g
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !98
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph476.preheader, label %._crit_edge477

.lr.ph476.preheader:                              ; preds = %.preheader378
  %.pre564 = load ptr, ptr %i.f, align 8, !tbaa !40
  %.pre565 = load ptr, ptr %i.r, align 8, !tbaa !73
  br label %.lr.ph476

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 89
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !216, !range !32, !noundef !33
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.h
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !98
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph490, label %._crit_edge491

._crit_edge491:                                   ; preds = %bb.ab, %.preheader
  %i.bd = phi ptr [ %i.as, %.preheader ], [ %i.es, %bb.ab ]
  %.1374.lcssa = phi i32 [ %.0373494, %.preheader ], [ %i.er, %bb.ab ] ; 5 uses
  %.1370.lcssa = phi i32 [ %.0369495, %.preheader ], [ %i.el, %bb.ab ] ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i159 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i159, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge491
  store i32 %.1374.lcssa, ptr %i.be, align 4, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166

bb.j:                                             ; preds = %._crit_edge491
  %i.bh = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160: ; preds = %bb.j
  %i.bm = ashr exact i64 %i.bk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i161, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951)
  %i.bq = select i1 %i.bo, i64 2305843009213693951, i64 %i.bp ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i162)
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #22 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  store i32 %.1374.lcssa, ptr %i.bt, align 4, !tbaa !42
  %i.bu = icmp sgt i64 %i.bk, 0
  br i1 %i.bu, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163

bb.l:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163: ; preds = %bb.l, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.not.i17.i.i164 = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.by) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163
  store ptr %i.bs, ptr %2, align 8, !tbaa !41
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !73
  %.pre568 = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166

_ZNSt6vectorIjSaIjEE9push_backERKj.exit166:       ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165
  %i.ca = phi ptr [ %i.bd, %bb.i ], [ %.pre568, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !42
  %i.cf = icmp eq i32 %.1374.lcssa, %i.ce
  br i1 %i.cf, label %bb.az, label %bb.ac

.lr.ph490:                                        ; preds = %.preheader, %bb.ab
  %indvars.iv543 = phi i64 [ %indvars.iv.next544, %bb.ab ], [ 0, %.preheader ] ; 3 uses
  %i.cg = phi ptr [ %i.es, %bb.ab ], [ %i.as, %.preheader ]
  %.1370488 = phi i32 [ %i.el, %bb.ab ], [ %.0369495, %.preheader ] ; 3 uses
  %.1374487 = phi i32 [ %i.er, %bb.ab ], [ %.0373494, %.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv543 ; 2 uses
  %i.ck = or i64 %indvars.iv543, %indvars.iv546
  %or.cond = icmp eq i64 %i.ck, 0
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph490
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !101
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 156
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !118
  %.not154 = icmp eq i32 %i.cn, 0
  br i1 %.not154, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = add i32 %.1374487, 1
  %i.cp = add i32 %.1370488, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph490
  %.2375 = phi i32 [ %.1374487, %bb.n ], [ %i.co, %bb.o ], [ %.1374487, %.lr.ph490 ] ; 3 uses
  %.2371 = phi i32 [ %.1370488, %bb.n ], [ %i.cp, %bb.o ], [ %.1370488, %.lr.ph490 ] ; 3 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i167 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i167, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.2375, ptr %i.cq, align 4, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174

bb.r:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775804
  br i1 %i.cx, label %bb.s, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.r
  %i.cy = ashr exact i64 %i.cw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i169 = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i169, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 2305843009213693951)
  %i.dc = select i1 %i.da, i64 2305843009213693951, i64 %i.db ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i170)
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #22 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i32 %.2375, ptr %i.df, align 4, !tbaa !42
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.t, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171

bb.t:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171: ; preds = %bb.t, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.not.i17.i.i172 = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i172, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dk) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173: ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171
  store ptr %i.de, ptr %2, align 8, !tbaa !41
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dl, ptr %i.s, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174

_ZNSt6vectorIjSaIjEE9push_backERKj.exit174:       ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !40  ; 5 uses
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !73
  %.not.i175 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174
  store i32 %.2371, ptr %i.dm, align 4, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store ptr %i.do, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 5 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %bb.x, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176: ; preds = %bb.w
  %i.du = ashr exact i64 %i.ds, 2                 ; 3 uses
  %.sroa.speculated.i.i.i177 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i177, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i.i.i178 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i178)
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #22 ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 3 uses
  store i32 %.2371, ptr %i.eb, align 4, !tbaa !42
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.y, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179

bb.y:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179: ; preds = %bb.y, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.not.i17.i.i180 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i180, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.eg) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181: ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !41
  store ptr %i.ed, ptr %i.f, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.eh, ptr %i.r, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182

_ZNSt6vectorIjSaIjEE9push_backERKj.exit182:       ; preds = %bb.v, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181
  %i.ei = phi ptr [ %i.dm, %bb.v ], [ %i.eb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181 ] ; 2 uses
  %i.ej = load ptr, ptr %i.cj, align 8, !tbaa !101 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !119 ; 2 uses
  %i.el = add i32 %i.ek, %.2371                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 156
  %i.en = load i32, ptr %i.em, align 4, !tbaa !118
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182
  %i.ep = load i32, ptr %i.ei, align 4, !tbaa !42
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182
  %i.er = add i32 %i.ek, %.2375                   ; 2 uses
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !98
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next544, %i.eu
  br i1 %i.ev, label %.lr.ph490, label %._crit_edge491, !llvm.loop !203

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 404)
  br label %bb.az

bb.ad:                                            ; preds = %bb.h
  %i.ew = add i32 %.0373494, 1                    ; 2 uses
  %i.ex = add i32 %.0369495, 1                    ; 2 uses
  %i.ey = load i32, ptr %i.as, align 8, !tbaa !98
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph483, label %._crit_edge484

._crit_edge484:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206, %bb.ad
  %i.fa = phi ptr [ %i.as, %bb.ad ], [ %i.hv, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ]
  %.3376.lcssa = phi i32 [ %i.ew, %bb.ad ], [ %i.ig, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ] ; 5 uses
  %.3372.lcssa = phi i32 [ %i.ex, %bb.ad ], [ %i.if, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ] ; 2 uses
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.fc = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i183 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i183, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge484
  store i32 %.3376.lcssa, ptr %i.fb, align 4, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190

bb.af:                                            ; preds = %._crit_edge484
  %i.fe = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 5 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775804
  br i1 %i.fi, label %bb.ag, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184: ; preds = %bb.af
  %i.fj = ashr exact i64 %i.fh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i185 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i185, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 2305843009213693951)
  %i.fn = select i1 %i.fl, i64 2305843009213693951, i64 %i.fm ; 3 uses
  %.not.i.i.i186 = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i186)
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #22 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store i32 %.3376.lcssa, ptr %i.fq, align 4, !tbaa !42
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.ah, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187

bb.ah:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %i.fe, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187: ; preds = %bb.ah, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %.not.i17.i.i188 = icmp eq ptr %i.fe, null
  br i1 %.not.i17.i.i188, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187
  %i.ft = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fv) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189: ; preds = %bb.ai, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187
  store ptr %i.fp, ptr %2, align 8, !tbaa !41
  store ptr %i.fs, ptr %i.b, align 8, !tbaa !40
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.fw, ptr %i.s, align 8, !tbaa !73
  %.pre567 = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190

_ZNSt6vectorIjSaIjEE9push_backERKj.exit190:       ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189
  %i.fx = phi ptr [ %i.fa, %bb.ae ], [ %.pre567, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !42
  %i.gc = icmp eq i32 %.3376.lcssa, %i.gb
  br i1 %i.gc, label %bb.az, label %bb.at

.lr.ph483:                                        ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206
  %indvars.iv540 = phi i64 [ %indvars.iv.next541, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ], [ 0, %bb.ad ] ; 2 uses
  %.3372480 = phi i32 [ %i.if, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ], [ %i.ex, %bb.ad ] ; 3 uses
  %.3376479 = phi i32 [ %i.ig, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ], [ %i.ew, %bb.ad ] ; 3 uses
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.ge = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i191 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i191, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph483
  store i32 %.3376479, ptr %i.gd, align 4, !tbaa !42
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store ptr %i.gf, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198

bb.ak:                                            ; preds = %.lr.ph483
  %i.gg = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 5 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775804
  br i1 %i.gk, label %bb.al, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192: ; preds = %bb.ak
  %i.gl = ashr exact i64 %i.gj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i193 = tail call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i193, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 2305843009213693951)
  %i.gp = select i1 %i.gn, i64 2305843009213693951, i64 %i.go ; 3 uses
  %.not.i.i.i194 = icmp ne i64 %i.gp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i194)
  %i.gq = shl nuw nsw i64 %i.gp, 2
  %i.gr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #22 ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store i32 %.3376479, ptr %i.gs, align 4, !tbaa !42
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.am, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195

bb.am:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 4 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195: ; preds = %bb.am, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %.not.i17.i.i196 = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i196, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195
  %i.gv = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gx) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197: ; preds = %bb.an, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195
  store ptr %i.gr, ptr %2, align 8, !tbaa !41
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !40
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gy, ptr %i.s, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198

_ZNSt6vectorIjSaIjEE9push_backERKj.exit198:       ; preds = %bb.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197
  %i.gz = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.ha = load ptr, ptr %i.r, align 8, !tbaa !73
  %.not.i199 = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i199, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198
  store i32 %.3372480, ptr %i.gz, align 4, !tbaa !42
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store ptr %i.hb, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206

bb.ap:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.hf = sub i64 %i.hd, %i.he                    ; 5 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775804
  br i1 %i.hg, label %bb.aq, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200: ; preds = %bb.ap
  %i.hh = ashr exact i64 %i.hf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i201 = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i201, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = tail call i64 @llvm.umin.i64(i64 %i.hi, i64 2305843009213693951)
  %i.hl = select i1 %i.hj, i64 2305843009213693951, i64 %i.hk ; 3 uses
  %.not.i.i.i202 = icmp ne i64 %i.hl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i202)
  %i.hm = shl nuw nsw i64 %i.hl, 2
  %i.hn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #22 ; 4 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %i.hf ; 2 uses
  store i32 %.3372480, ptr %i.ho, align 4, !tbaa !42
  %i.hp = icmp sgt i64 %i.hf, 0
  br i1 %i.hp, label %bb.ar, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203

bb.ar:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hn, ptr align 4 %i.hc, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203: ; preds = %bb.ar, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %.not.i17.i.i204 = icmp eq ptr %i.hc, null
  br i1 %.not.i17.i.i204, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203
  %i.hr = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.hs, %i.he
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.ht) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205: ; preds = %bb.as, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203
  store ptr %i.hn, ptr %i.d, align 8, !tbaa !41
  store ptr %i.hq, ptr %i.f, align 8, !tbaa !40
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hl
  store ptr %i.hu, ptr %i.r, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206

_ZNSt6vectorIjSaIjEE9push_backERKj.exit206:       ; preds = %bb.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205
  %i.hv = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !99
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv540
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !101 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !119
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 156
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !118
  %i.id = icmp eq i32 %i.ic, 0
  %i.ie = sext i1 %i.id to i32
  %spec.select = add nsw i32 %i.ia, %i.ie         ; 2 uses
  %i.if = add i32 %spec.select, %.3372480         ; 2 uses
  %i.ig = add i32 %spec.select, %.3376479         ; 2 uses
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %i.ih = load i32, ptr %i.hv, align 8, !tbaa !98
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next541, %i.ii
  br i1 %i.ij, label %.lr.ph483, label %._crit_edge484, !llvm.loop !204

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 420)
  br label %bb.az

._crit_edge477:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %.preheader378
  %.lcssa = phi ptr [ %i.as, %.preheader378 ], [ %i.jr, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !49
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !42
  %i.io = add i32 %i.in, %.0369495
  br label %bb.az

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ip = phi ptr [ %i.as, %.lr.ph476.preheader ], [ %i.jr, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.iq = phi ptr [ %.pre565, %.lr.ph476.preheader ], [ %i.js, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.ir = phi ptr [ %.pre564, %.lr.ph476.preheader ], [ %i.jt, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %indvars.iv537 = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next538, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !41
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv537
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !42
  %i.iw = add i32 %i.iv, %.0369495                ; 2 uses
  %.not.i.i207 = icmp eq ptr %i.ir, %i.iq
  br i1 %.not.i.i207, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph476
  store i32 %i.iw, ptr %i.ir, align 4, !tbaa !42
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  store ptr %i.ix, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.av:                                            ; preds = %.lr.ph476
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.iz = ptrtoint ptr %i.iq to i64
  %i.ja = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.jb = sub i64 %i.iz, %i.ja                    ; 5 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775804
  br i1 %i.jc, label %bb.aw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.jd = ashr exact i64 %i.jb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 2305843009213693951)
  %i.jh = select i1 %i.jf, i64 2305843009213693951, i64 %i.jg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #22 ; 4 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store i32 %i.iw, ptr %i.jk, align 4, !tbaa !42
  %i.jl = icmp sgt i64 %i.jb, 0
  br i1 %i.jl, label %bb.ax, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.ax:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jj, ptr align 4 %i.iy, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ax, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.jn = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.ja
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jp) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.jj, ptr %i.d, align 8, !tbaa !41
  store ptr %i.jm, ptr %i.f, align 8, !tbaa !40
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jh ; 2 uses
  store ptr %i.jq, ptr %i.r, align 8, !tbaa !73
  %.pre566 = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.jr = phi ptr [ %i.ip, %bb.au ], [ %.pre566, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.js = phi ptr [ %i.iq, %bb.au ], [ %i.jq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.jt = phi ptr [ %i.ix, %bb.au ], [ %i.jm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !98
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next538, %i.jv
  br i1 %i.jw, label %.lr.ph476, label %._crit_edge477, !llvm.loop !205

bb.az:                                            ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166, %bb.at, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190, %._crit_edge477
  %.4377 = phi i32 [ %.1374.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166 ], [ %.1374.lcssa, %bb.ac ], [ %.3376.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190 ], [ %.3376.lcssa, %bb.at ], [ %.0373494, %._crit_edge477 ]
  %.4 = phi i32 [ %.1370.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166 ], [ %.1370.lcssa, %bb.ac ], [ %.3372.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190 ], [ %.3372.lcssa, %bb.at ], [ %i.io, %._crit_edge477 ] ; 2 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %i.jx = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.jy = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %sext657 = shl i64 %i.kb, 29
  %i.kc = ashr i64 %sext657, 32
  %i.kd = icmp slt i64 %indvars.iv.next547, %i.kc
  br i1 %i.kd, label %bb.g, label %._crit_edge499.loopexit, !llvm.loop !206

._crit_edge437:                                   ; preds = %._crit_edge
  %i.ke = sitofp i32 %.1147 to double
  %i.kf = fdiv double %.1149.lcssa, %i.ke
  %i.kg = fsub double 1.000000e+00, %i.kf
  %i.kh = fcmp ult double %i.kg, 2.500000e-01
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  br i1 %i.kh, label %.lr.ph471, label %.lr.ph453

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %._crit_edge
  %indvars.iv514 = phi i64 [ 0, %.lr.ph436.preheader ], [ %indvars.iv.next515, %._crit_edge ] ; 2 uses
  %.0146434 = phi i32 [ 0, %.lr.ph436.preheader ], [ %.1147, %._crit_edge ]
  %.0148433 = phi double [ 0.000000e+00, %.lr.ph436.preheader ], [ %.1149.lcssa, %._crit_edge ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv514
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !78 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 88
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !97, !range !32, !noundef !33
  %i.ko = trunc nuw i8 %i.kn to i1
  %.pre = load i32, ptr %i.kl, align 8, !tbaa !98 ; 4 uses
  %spec.select672 = select i1 %i.ko, i32 %.pre, i32 1
  %.1147 = add nsw i32 %spec.select672, %.0146434 ; 2 uses
  %i.kp = icmp sgt i32 %.pre, 0
  br i1 %i.kp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph436
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !99 ; 5 uses
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ks = icmp ult i32 %.pre, 4
  br i1 %i.ks, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.bb

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.1149431.epil.init = phi double [ %.0148433, %.lr.ph ], [ %i.lz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod703 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod703)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ba ] ; 2 uses
  %.1149431.epil = phi double [ %.1149431.epil.init, %.epil.preheader ], [ %i.ky, %bb.ba ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ba ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.epil
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !101
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !117
  %i.kx = fsub double 1.000000e+00, %i.kw
  %i.ky = fadd double %.1149431.epil, %i.kx       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ba, !llvm.loop !207

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ba, %.lr.ph436
  %.1149.lcssa = phi double [ %.0148433, %.lr.ph436 ], [ %i.lz, %._crit_edge.loopexit.unr-lcssa ], [ %i.ky, %bb.ba ] ; 2 uses
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge437, label %.lr.ph436, !llvm.loop !208

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.bb ] ; 5 uses
  %.1149431 = phi double [ %.0148433, %.lr.ph.new ], [ %i.lz, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.bb ]
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !101
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !117
  %i.ld = fsub double 1.000000e+00, %i.lc
  %i.le = fadd double %.1149431, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !101
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lj = load double, ptr %i.li, align 8, !tbaa !117
  %i.lk = fsub double 1.000000e+00, %i.lj
  %i.ll = fadd double %i.le, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !101
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !117
  %i.lr = fsub double 1.000000e+00, %i.lq
  %i.ls = fadd double %i.ll, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !101
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !117
  %i.ly = fsub double 1.000000e+00, %i.lx
  %i.lz = fadd double %i.ls, %i.ly                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !209

._crit_edge454:                                   ; preds = %.loopexit383
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !73
  %.not.i.i208 = icmp eq ptr %i.ma, %i.mc
  br i1 %.not.i.i208, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge454
  store i32 %.2142, ptr %i.ma, align 4, !tbaa !42
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  store ptr %i.md, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215

bb.bd:                                            ; preds = %._crit_edge454
  %i.me = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.mf = ptrtoint ptr %i.ma to i64
  %i.mg = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 5 uses
  %i.mi = icmp eq i64 %i.mh, 9223372036854775804
  br i1 %i.mi, label %bb.be, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209: ; preds = %bb.bd
  %i.mj = ashr exact i64 %i.mh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i210 = tail call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.mk = add nsw i64 %.sroa.speculated.i.i.i.i210, %i.mj ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %i.mj
  %i.mm = tail call i64 @llvm.umin.i64(i64 %i.mk, i64 2305843009213693951)
  %i.mn = select i1 %i.ml, i64 2305843009213693951, i64 %i.mm ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.mn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.mo = shl nuw nsw i64 %i.mn, 2
  %i.mp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mo) #22 ; 4 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 %i.mh ; 2 uses
  store i32 %.2142, ptr %i.mq, align 4, !tbaa !42
  %i.mr = icmp sgt i64 %i.mh, 0
  br i1 %i.mr, label %bb.bf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212

bb.bf:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mp, ptr align 4 %i.me, i64 %i.mh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212: ; preds = %bb.bf, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %.not.i17.i.i.i213 = icmp eq ptr %i.me, null
  br i1 %.not.i17.i.i.i213, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212
  %i.mt = load ptr, ptr %i.mb, align 8, !tbaa !73
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = sub i64 %i.mu, %i.mg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mv) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214: ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212
  store ptr %i.mp, ptr %2, align 8, !tbaa !41
  store ptr %i.ms, ptr %i.b, align 8, !tbaa !40
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mn
  store ptr %i.mw, ptr %i.mb, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215

_ZNSt6vectorIjSaIjEE9push_backEOj.exit215:        ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214
  %i.mx = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !73
  %.not.i216 = icmp eq ptr %i.mx, %i.mz
  br i1 %.not.i216, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215
  store i32 %.2368, ptr %i.mx, align 4, !tbaa !42
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 4 ; 2 uses
  store ptr %i.na, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

bb.bi:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215
  %i.nb = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.nc = ptrtoint ptr %i.mx to i64
  %i.nd = ptrtoint ptr %i.nb to i64               ; 2 uses
  %i.ne = sub i64 %i.nc, %i.nd                    ; 5 uses
  %i.nf = icmp eq i64 %i.ne, 9223372036854775804
  br i1 %i.nf, label %bb.bj, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217: ; preds = %bb.bi
  %i.ng = ashr exact i64 %i.ne, 2                 ; 3 uses
  %.sroa.speculated.i.i.i218 = tail call i64 @llvm.umax.i64(i64 %i.ng, i64 1)
  %i.nh = add nsw i64 %.sroa.speculated.i.i.i218, %i.ng ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.ng
  %i.nj = tail call i64 @llvm.umin.i64(i64 %i.nh, i64 2305843009213693951)
  %i.nk = select i1 %i.ni, i64 2305843009213693951, i64 %i.nj ; 3 uses
  %.not.i.i.i219 = icmp ne i64 %i.nk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i219)
  %i.nl = shl nuw nsw i64 %i.nk, 2
  %i.nm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nl) #22 ; 4 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 %i.ne ; 2 uses
  store i32 %.2368, ptr %i.nn, align 4, !tbaa !42
  %i.no = icmp sgt i64 %i.ne, 0
  br i1 %i.no, label %bb.bk, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220

bb.bk:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nm, ptr align 4 %i.nb, i64 %i.ne, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220: ; preds = %bb.bk, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 2 uses
  %.not.i17.i.i221 = icmp eq ptr %i.nb, null
  br i1 %.not.i17.i.i221, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220
  %i.nq = load ptr, ptr %i.my, align 8, !tbaa !73
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = sub i64 %i.nr, %i.nd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ns) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222: ; preds = %bb.bl, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220
  store ptr %i.nm, ptr %i.d, align 8, !tbaa !41
  store ptr %i.np, ptr %i.f, align 8, !tbaa !40
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.nk
  store ptr %i.nt, ptr %i.my, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

.lr.ph453:                                        ; preds = %._crit_edge437, %.loopexit383
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %.loopexit383 ], [ 0, %._crit_edge437 ] ; 2 uses
  %i.nu = phi ptr [ %i.ta, %.loopexit383 ], [ %i.k, %._crit_edge437 ]
  %.0140451 = phi i32 [ %.2142, %.loopexit383 ], [ 1, %._crit_edge437 ] ; 5 uses
  %.0366450 = phi i32 [ %.2368, %.loopexit383 ], [ 1, %._crit_edge437 ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv525 ; 4 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !78 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 88
  %i.ny = load i8, ptr %i.nx, align 8, !tbaa !97, !range !32, !noundef !33
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %.preheader382, label %bb.bw

.preheader382:                                    ; preds = %.lr.ph453
  %i.oa = load i32, ptr %i.nw, align 8, !tbaa !98
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph447, label %.loopexit383

.lr.ph447:                                        ; preds = %.preheader382, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ], [ 0, %.preheader382 ] ; 2 uses
  %.1141445 = phi i32 [ %i.qe, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ], [ %.0140451, %.preheader382 ] ; 3 uses
  %.1367444 = phi i32 [ %i.qf, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ], [ %.0366450, %.preheader382 ] ; 3 uses
  %i.oc = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.od = load ptr, ptr %i.ki, align 8, !tbaa !73
  %.not.i.i224 = icmp eq ptr %i.oc, %i.od
  br i1 %.not.i.i224, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph447
  store i32 %.1141445, ptr %i.oc, align 4, !tbaa !42
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store ptr %i.oe, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231

bb.bn:                                            ; preds = %.lr.ph447
  %i.of = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.og = ptrtoint ptr %i.oc to i64
  %i.oh = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oi = sub i64 %i.og, %i.oh                    ; 5 uses
  %i.oj = icmp eq i64 %i.oi, 9223372036854775804
  br i1 %i.oj, label %bb.bo, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225: ; preds = %bb.bn
  %i.ok = ashr exact i64 %i.oi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i226 = tail call i64 @llvm.umax.i64(i64 %i.ok, i64 1)
  %i.ol = add nsw i64 %.sroa.speculated.i.i.i.i226, %i.ok ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.ok
  %i.on = tail call i64 @llvm.umin.i64(i64 %i.ol, i64 2305843009213693951)
  %i.oo = select i1 %i.om, i64 2305843009213693951, i64 %i.on ; 3 uses
  %.not.i.i.i.i227 = icmp ne i64 %i.oo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i227)
  %i.op = shl nuw nsw i64 %i.oo, 2
  %i.oq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.op) #22 ; 4 uses
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 %i.oi ; 2 uses
  store i32 %.1141445, ptr %i.or, align 4, !tbaa !42
  %i.os = icmp sgt i64 %i.oi, 0
  br i1 %i.os, label %bb.bp, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228

bb.bp:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oq, ptr align 4 %i.of, i64 %i.oi, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228: ; preds = %bb.bp, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %.not.i17.i.i.i229 = icmp eq ptr %i.of, null
  br i1 %.not.i17.i.i.i229, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228
  %i.ou = load ptr, ptr %i.ki, align 8, !tbaa !73
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = sub i64 %i.ov, %i.oh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.ow) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230: ; preds = %bb.bq, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228
  store ptr %i.oq, ptr %2, align 8, !tbaa !41
  store ptr %i.ot, ptr %i.b, align 8, !tbaa !40
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.oo
  store ptr %i.ox, ptr %i.ki, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231

_ZNSt6vectorIjSaIjEE9push_backEOj.exit231:        ; preds = %bb.bm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230
  %i.oy = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.oz = load ptr, ptr %i.kj, align 8, !tbaa !73
  %.not.i232 = icmp eq ptr %i.oy, %i.oz
  br i1 %.not.i232, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231
  store i32 %.1367444, ptr %i.oy, align 4, !tbaa !42
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  store ptr %i.pa, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239

bb.bs:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231
  %i.pb = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pe = sub i64 %i.pc, %i.pd                    ; 5 uses
  %i.pf = icmp eq i64 %i.pe, 9223372036854775804
  br i1 %i.pf, label %bb.bt, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233

bb.bt:                                            ; preds = %bb.bs
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233: ; preds = %bb.bs
  %i.pg = ashr exact i64 %i.pe, 2                 ; 3 uses
  %.sroa.speculated.i.i.i234 = tail call i64 @llvm.umax.i64(i64 %i.pg, i64 1)
  %i.ph = add nsw i64 %.sroa.speculated.i.i.i234, %i.pg ; 2 uses
  %i.pi = icmp ult i64 %i.ph, %i.pg
  %i.pj = tail call i64 @llvm.umin.i64(i64 %i.ph, i64 2305843009213693951)
  %i.pk = select i1 %i.pi, i64 2305843009213693951, i64 %i.pj ; 3 uses
  %.not.i.i.i235 = icmp ne i64 %i.pk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i235)
  %i.pl = shl nuw nsw i64 %i.pk, 2
  %i.pm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pl) #22 ; 4 uses
  %i.pn = getelementptr inbounds i8, ptr %i.pm, i64 %i.pe ; 2 uses
  store i32 %.1367444, ptr %i.pn, align 4, !tbaa !42
  %i.po = icmp sgt i64 %i.pe, 0
  br i1 %i.po, label %bb.bu, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236

bb.bu:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pm, ptr align 4 %i.pb, i64 %i.pe, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236: ; preds = %bb.bu, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %.not.i17.i.i237 = icmp eq ptr %i.pb, null
  br i1 %.not.i17.i.i237, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236
  %i.pq = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = sub i64 %i.pr, %i.pd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.ps) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238: ; preds = %bb.bv, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236
  store ptr %i.pm, ptr %i.d, align 8, !tbaa !41
  store ptr %i.pp, ptr %i.f, align 8, !tbaa !40
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.pk
  store ptr %i.pt, ptr %i.kj, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239

_ZNSt6vectorIjSaIjEE9push_backERKj.exit239:       ; preds = %bb.br, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238
  %i.pu = load ptr, ptr %i.nv, align 8, !tbaa !78 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !99
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv522
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !101 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !119
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 156
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !118
  %i.qc = icmp eq i32 %i.qb, 0
  %i.qd = sext i1 %i.qc to i32
  %spec.select155 = add nsw i32 %i.pz, %i.qd      ; 2 uses
  %i.qe = add nsw i32 %spec.select155, %.1141445  ; 2 uses
  %i.qf = add i32 %spec.select155, %.1367444      ; 2 uses
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %i.qg = load i32, ptr %i.pu, align 8, !tbaa !98
  %i.qh = sext i32 %i.qg to i64
  %i.qi = icmp slt i64 %indvars.iv.next523, %i.qh
  br i1 %i.qi, label %.lr.ph447, label %.loopexit383, !llvm.loop !210

bb.bw:                                            ; preds = %.lr.ph453
  %i.qj = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.qk = load ptr, ptr %i.ki, align 8, !tbaa !73
  %.not.i.i240 = icmp eq ptr %i.qj, %i.qk
  br i1 %.not.i.i240, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 %.0140451, ptr %i.qj, align 4, !tbaa !42
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  store ptr %i.ql, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247

bb.by:                                            ; preds = %bb.bw
  %i.qm = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = ptrtoint ptr %i.qm to i64               ; 2 uses
  %i.qp = sub i64 %i.qn, %i.qo                    ; 5 uses
  %i.qq = icmp eq i64 %i.qp, 9223372036854775804
  br i1 %i.qq, label %bb.bz, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241: ; preds = %bb.by
  %i.qr = ashr exact i64 %i.qp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i242 = tail call i64 @llvm.umax.i64(i64 %i.qr, i64 1)
  %i.qs = add nsw i64 %.sroa.speculated.i.i.i.i242, %i.qr ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %i.qr
  %i.qu = tail call i64 @llvm.umin.i64(i64 %i.qs, i64 2305843009213693951)
  %i.qv = select i1 %i.qt, i64 2305843009213693951, i64 %i.qu ; 3 uses
  %.not.i.i.i.i243 = icmp ne i64 %i.qv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i243)
  %i.qw = shl nuw nsw i64 %i.qv, 2
  %i.qx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qw) #22 ; 4 uses
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 %i.qp ; 2 uses
  store i32 %.0140451, ptr %i.qy, align 4, !tbaa !42
  %i.qz = icmp sgt i64 %i.qp, 0
  br i1 %i.qz, label %bb.ca, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244

bb.ca:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qx, ptr align 4 %i.qm, i64 %i.qp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244: ; preds = %bb.ca, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %.not.i17.i.i.i245 = icmp eq ptr %i.qm, null
  br i1 %.not.i17.i.i.i245, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244
  %i.rb = load ptr, ptr %i.ki, align 8, !tbaa !73
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = sub i64 %i.rc, %i.qo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.rd) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246: ; preds = %bb.cb, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244
  store ptr %i.qx, ptr %2, align 8, !tbaa !41
  store ptr %i.ra, ptr %i.b, align 8, !tbaa !40
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.qv
  store ptr %i.re, ptr %i.ki, align 8, !tbaa !73
  %.pre549 = load ptr, ptr %i.nv, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247

_ZNSt6vectorIjSaIjEE9push_backEOj.exit247:        ; preds = %bb.bx, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246
  %i.rf = phi ptr [ %i.nw, %bb.bx ], [ %.pre549, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246 ] ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 40
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !49
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !42 ; 2 uses
  %i.rk = add i32 %.0140451, -1
  %i.rl = add i32 %i.rk, %i.rj
  %i.rm = load i32, ptr %i.rf, align 8, !tbaa !98
  %i.rn = icmp sgt i32 %i.rm, 0
  %i.ro = add i32 %.0366450, -1                   ; 2 uses
  br i1 %i.rn, label %.lr.ph441, label %._crit_edge442

.lr.ph441:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247
  %.pre550 = load ptr, ptr %i.f, align 8, !tbaa !40
  %.pre551 = load ptr, ptr %i.kj, align 8, !tbaa !73
  br label %bb.cc

._crit_edge442.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  %.pre553 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.phi.trans.insert554 = getelementptr inbounds i8, ptr %.pre553, i64 -4
  %.pre555 = load i32, ptr %.phi.trans.insert554, align 4, !tbaa !42
  br label %._crit_edge442

._crit_edge442:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247, %._crit_edge442.loopexit
  %i.rp = phi i32 [ %.pre555, %._crit_edge442.loopexit ], [ %i.rj, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247 ]
  %i.rq = add i32 %i.ro, %i.rp
  br label %.loopexit383

bb.cc:                                            ; preds = %.lr.ph441, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255
  %i.rr = phi ptr [ %i.rf, %.lr.ph441 ], [ %i.st, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 2 uses
  %i.rs = phi ptr [ %.pre551, %.lr.ph441 ], [ %i.su, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 3 uses
  %i.rt = phi ptr [ %.pre550, %.lr.ph441 ], [ %i.sv, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 3 uses
  %indvars.iv519 = phi i64 [ 0, %.lr.ph441 ], [ %indvars.iv.next520, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !41
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv519
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !42
  %i.ry = add i32 %i.ro, %i.rx                    ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.rt, %i.rs
  br i1 %.not.i.i248, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i32 %i.ry, ptr %i.rt, align 4, !tbaa !42
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 4 ; 2 uses
  store ptr %i.rz, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255

bb.ce:                                            ; preds = %bb.cc
  %i.sa = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.sb = ptrtoint ptr %i.rs to i64
  %i.sc = ptrtoint ptr %i.sa to i64               ; 2 uses
  %i.sd = sub i64 %i.sb, %i.sc                    ; 5 uses
  %i.se = icmp eq i64 %i.sd, 9223372036854775804
  br i1 %i.se, label %bb.cf, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249

bb.cf:                                            ; preds = %bb.ce
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249: ; preds = %bb.ce
  %i.sf = ashr exact i64 %i.sd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i250 = tail call i64 @llvm.umax.i64(i64 %i.sf, i64 1)
  %i.sg = add nsw i64 %.sroa.speculated.i.i.i.i250, %i.sf ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.sf
  %i.si = tail call i64 @llvm.umin.i64(i64 %i.sg, i64 2305843009213693951)
  %i.sj = select i1 %i.sh, i64 2305843009213693951, i64 %i.si ; 3 uses
  %.not.i.i.i.i251 = icmp ne i64 %i.sj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i251)
  %i.sk = shl nuw nsw i64 %i.sj, 2
  %i.sl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #22 ; 4 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 %i.sd ; 2 uses
  store i32 %i.ry, ptr %i.sm, align 4, !tbaa !42
  %i.sn = icmp sgt i64 %i.sd, 0
  br i1 %i.sn, label %bb.cg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252

bb.cg:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sl, ptr align 4 %i.sa, i64 %i.sd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252: ; preds = %bb.cg, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 4 ; 2 uses
  %.not.i17.i.i.i253 = icmp eq ptr %i.sa, null
  br i1 %.not.i17.i.i.i253, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252
  %i.sp = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = sub i64 %i.sq, %i.sc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sr) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254: ; preds = %bb.ch, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252
  store ptr %i.sl, ptr %i.d, align 8, !tbaa !41
  store ptr %i.so, ptr %i.f, align 8, !tbaa !40
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sj ; 2 uses
  store ptr %i.ss, ptr %i.kj, align 8, !tbaa !73
  %.pre552 = load ptr, ptr %i.nv, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255

_ZNSt6vectorIjSaIjEE9push_backEOj.exit255:        ; preds = %bb.cd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254
  %i.st = phi ptr [ %i.rr, %bb.cd ], [ %.pre552, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254 ] ; 3 uses
  %i.su = phi ptr [ %i.rs, %bb.cd ], [ %i.ss, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254 ]
  %i.sv = phi ptr [ %i.rz, %bb.cd ], [ %i.so, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254 ]
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.sw = load i32, ptr %i.st, align 8, !tbaa !98
  %i.sx = sext i32 %i.sw to i64
  %i.sy = icmp slt i64 %indvars.iv.next520, %i.sx
  br i1 %i.sy, label %bb.cc, label %._crit_edge442.loopexit, !llvm.loop !211

.loopexit383:                                     ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239, %.preheader382, %._crit_edge442
  %.2368 = phi i32 [ %i.rq, %._crit_edge442 ], [ %.0366450, %.preheader382 ], [ %i.qf, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ] ; 3 uses
  %.2142 = phi i32 [ %i.rl, %._crit_edge442 ], [ %.0140451, %.preheader382 ], [ %i.qe, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ] ; 3 uses
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %i.sz = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.ta = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = sub i64 %i.tb, %i.tc
  %sext = shl i64 %i.td, 29
  %i.te = ashr i64 %sext, 32
  %i.tf = icmp slt i64 %indvars.iv.next526, %i.te
  br i1 %i.tf, label %.lr.ph453, label %._crit_edge454, !llvm.loop !212

._crit_edge472:                                   ; preds = %.loopexit, %.preheader385
  %.0362.lcssa = phi i32 [ 0, %.preheader385 ], [ %.3365, %.loopexit ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.preheader385 ], [ %.3, %.loopexit ] ; 2 uses
  %i.tg = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !73
  %.not.i.i256 = icmp eq ptr %i.tg, %i.ti
  br i1 %.not.i.i256, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge472
  store i32 %.0135.lcssa, ptr %i.tg, align 4, !tbaa !42
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  store ptr %i.tj, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263

bb.cj:                                            ; preds = %._crit_edge472
  %i.tk = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.tl = ptrtoint ptr %i.tg to i64
  %i.tm = ptrtoint ptr %i.tk to i64               ; 2 uses
  %i.tn = sub i64 %i.tl, %i.tm                    ; 5 uses
  %i.to = icmp eq i64 %i.tn, 9223372036854775804
  br i1 %i.to, label %bb.ck, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257

bb.ck:                                            ; preds = %bb.cj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257: ; preds = %bb.cj
  %i.tp = ashr exact i64 %i.tn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i258 = tail call i64 @llvm.umax.i64(i64 %i.tp, i64 1)
  %i.tq = add nsw i64 %.sroa.speculated.i.i.i.i258, %i.tp ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.tp
  %i.ts = tail call i64 @llvm.umin.i64(i64 %i.tq, i64 2305843009213693951)
  %i.tt = select i1 %i.tr, i64 2305843009213693951, i64 %i.ts ; 3 uses
  %.not.i.i.i.i259 = icmp ne i64 %i.tt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i259)
  %i.tu = shl nuw nsw i64 %i.tt, 2
  %i.tv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tu) #22 ; 4 uses
  %i.tw = getelementptr inbounds i8, ptr %i.tv, i64 %i.tn ; 2 uses
  store i32 %.0135.lcssa, ptr %i.tw, align 4, !tbaa !42
  %i.tx = icmp sgt i64 %i.tn, 0
  br i1 %i.tx, label %bb.cl, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260

bb.cl:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.tv, ptr align 4 %i.tk, i64 %i.tn, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260: ; preds = %bb.cl, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %.not.i17.i.i.i261 = icmp eq ptr %i.tk, null
  br i1 %.not.i17.i.i.i261, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260
  %i.tz = load ptr, ptr %i.th, align 8, !tbaa !73
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = sub i64 %i.ua, %i.tm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.ub) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262: ; preds = %bb.cm, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260
  store ptr %i.tv, ptr %2, align 8, !tbaa !41
  store ptr %i.ty, ptr %i.b, align 8, !tbaa !40
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.tt
  store ptr %i.uc, ptr %i.th, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263

_ZNSt6vectorIjSaIjEE9push_backEOj.exit263:        ; preds = %bb.ci, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262
  %i.ud = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !73
  %.not.i264 = icmp eq ptr %i.ud, %i.uf
  br i1 %.not.i264, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263
  store i32 %.0362.lcssa, ptr %i.ud, align 4, !tbaa !42
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 4 ; 2 uses
  store ptr %i.ug, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

bb.co:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263
  %i.uh = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.ui = ptrtoint ptr %i.ud to i64
  %i.uj = ptrtoint ptr %i.uh to i64               ; 2 uses
  %i.uk = sub i64 %i.ui, %i.uj                    ; 5 uses
  %i.ul = icmp eq i64 %i.uk, 9223372036854775804
  br i1 %i.ul, label %bb.cp, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265

bb.cp:                                            ; preds = %bb.co
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265: ; preds = %bb.co
  %i.um = ashr exact i64 %i.uk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i266 = tail call i64 @llvm.umax.i64(i64 %i.um, i64 1)
  %i.un = add nsw i64 %.sroa.speculated.i.i.i266, %i.um ; 2 uses
  %i.uo = icmp ult i64 %i.un, %i.um
  %i.up = tail call i64 @llvm.umin.i64(i64 %i.un, i64 2305843009213693951)
  %i.uq = select i1 %i.uo, i64 2305843009213693951, i64 %i.up ; 3 uses
  %.not.i.i.i267 = icmp ne i64 %i.uq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i267)
  %i.ur = shl nuw nsw i64 %i.uq, 2
  %i.us = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ur) #22 ; 4 uses
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 %i.uk ; 2 uses
  store i32 %.0362.lcssa, ptr %i.ut, align 4, !tbaa !42
  %i.uu = icmp sgt i64 %i.uk, 0
  br i1 %i.uu, label %bb.cq, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268

bb.cq:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.us, ptr align 4 %i.uh, i64 %i.uk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268: ; preds = %bb.cq, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 4 ; 2 uses
  %.not.i17.i.i269 = icmp eq ptr %i.uh, null
  br i1 %.not.i17.i.i269, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268
  %i.uw = load ptr, ptr %i.ue, align 8, !tbaa !73
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = sub i64 %i.ux, %i.uj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef %i.uy) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270: ; preds = %bb.cr, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268
  store ptr %i.us, ptr %i.d, align 8, !tbaa !41
  store ptr %i.uv, ptr %i.f, align 8, !tbaa !40
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.uq
  store ptr %i.uz, ptr %i.ue, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

.lr.ph471:                                        ; preds = %._crit_edge437, %.loopexit
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %.loopexit ], [ 0, %._crit_edge437 ] ; 3 uses
  %i.va = phi ptr [ %i.aan, %.loopexit ], [ %i.k, %._crit_edge437 ]
  %.0135468 = phi i32 [ %.3, %.loopexit ], [ 0, %._crit_edge437 ] ; 5 uses
  %.0362467 = phi i32 [ %.3365, %.loopexit ], [ 0, %._crit_edge437 ] ; 4 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv534 ; 4 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !78 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 88
  %i.ve = load i8, ptr %i.vd, align 8, !tbaa !97, !range !32, !noundef !33
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %.preheader380, label %bb.dh

.preheader380:                                    ; preds = %.lr.ph471
  %i.vg = load i32, ptr %i.vc, align 8, !tbaa !98
  %i.vh = icmp sgt i32 %i.vg, 0
  br i1 %i.vh, label %.lr.ph464, label %.loopexit

.lr.ph464:                                        ; preds = %.preheader380, %bb.dg
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %bb.dg ], [ 0, %.preheader380 ] ; 3 uses
  %i.vi = phi ptr [ %i.xu, %bb.dg ], [ %i.vc, %.preheader380 ]
  %.1462 = phi i32 [ %i.xn, %bb.dg ], [ %.0135468, %.preheader380 ] ; 3 uses
  %.1363461 = phi i32 [ %i.xo, %bb.dg ], [ %.0362467, %.preheader380 ] ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !99
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv531 ; 2 uses
  %i.vm = or i64 %indvars.iv531, %indvars.iv534
  %or.cond3 = icmp eq i64 %i.vm, 0
  br i1 %or.cond3, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %.lr.ph464
  %i.vn = load ptr, ptr %i.vl, align 8, !tbaa !101
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 156
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !118
  %.not = icmp eq i32 %i.vp, 0
  br i1 %.not, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vq = add nsw i32 %.1462, 1
  %i.vr = add i32 %.1363461, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.lr.ph464
  %.2364 = phi i32 [ %.1363461, %bb.cs ], [ %i.vr, %bb.ct ], [ %.1363461, %.lr.ph464 ] ; 3 uses
  %.2 = phi i32 [ %.1462, %bb.cs ], [ %i.vq, %bb.ct ], [ %.1462, %.lr.ph464 ] ; 3 uses
  %i.vs = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.vt = load ptr, ptr %i.ki, align 8, !tbaa !73
  %.not.i.i272 = icmp eq ptr %i.vs, %i.vt
  br i1 %.not.i.i272, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 %.2, ptr %i.vs, align 4, !tbaa !42
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  store ptr %i.vu, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279

bb.cw:                                            ; preds = %bb.cu
  %i.vv = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.vw = ptrtoint ptr %i.vs to i64
  %i.vx = ptrtoint ptr %i.vv to i64               ; 2 uses
  %i.vy = sub i64 %i.vw, %i.vx                    ; 5 uses
  %i.vz = icmp eq i64 %i.vy, 9223372036854775804
  br i1 %i.vz, label %bb.cx, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273

bb.cx:                                            ; preds = %bb.cw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273: ; preds = %bb.cw
  %i.wa = ashr exact i64 %i.vy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i274 = tail call i64 @llvm.umax.i64(i64 %i.wa, i64 1)
  %i.wb = add nsw i64 %.sroa.speculated.i.i.i.i274, %i.wa ; 2 uses
  %i.wc = icmp ult i64 %i.wb, %i.wa
  %i.wd = tail call i64 @llvm.umin.i64(i64 %i.wb, i64 2305843009213693951)
  %i.we = select i1 %i.wc, i64 2305843009213693951, i64 %i.wd ; 3 uses
  %.not.i.i.i.i275 = icmp ne i64 %i.we, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i275)
  %i.wf = shl nuw nsw i64 %i.we, 2
  %i.wg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wf) #22 ; 4 uses
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 %i.vy ; 2 uses
  store i32 %.2, ptr %i.wh, align 4, !tbaa !42
  %i.wi = icmp sgt i64 %i.vy, 0
  br i1 %i.wi, label %bb.cy, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276

bb.cy:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wg, ptr align 4 %i.vv, i64 %i.vy, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276: ; preds = %bb.cy, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %.not.i17.i.i.i277 = icmp eq ptr %i.vv, null
  br i1 %.not.i17.i.i.i277, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276
  %i.wk = load ptr, ptr %i.ki, align 8, !tbaa !73
  %i.wl = ptrtoint ptr %i.wk to i64
  %i.wm = sub i64 %i.wl, %i.vx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %i.wm) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278: ; preds = %bb.cz, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276
  store ptr %i.wg, ptr %2, align 8, !tbaa !41
  store ptr %i.wj, ptr %i.b, align 8, !tbaa !40
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.we
  store ptr %i.wn, ptr %i.ki, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279

_ZNSt6vectorIjSaIjEE9push_backEOj.exit279:        ; preds = %bb.cv, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278
  %i.wo = load ptr, ptr %i.f, align 8, !tbaa !40  ; 5 uses
  %i.wp = load ptr, ptr %i.kj, align 8, !tbaa !73
  %.not.i280 = icmp eq ptr %i.wo, %i.wp
  br i1 %.not.i280, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279
  store i32 %.2364, ptr %i.wo, align 4, !tbaa !42
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  store ptr %i.wq, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287

bb.db:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279
  %i.wr = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.ws = ptrtoint ptr %i.wo to i64
  %i.wt = ptrtoint ptr %i.wr to i64               ; 2 uses
  %i.wu = sub i64 %i.ws, %i.wt                    ; 5 uses
  %i.wv = icmp eq i64 %i.wu, 9223372036854775804
  br i1 %i.wv, label %bb.dc, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281: ; preds = %bb.db
  %i.ww = ashr exact i64 %i.wu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i282 = tail call i64 @llvm.umax.i64(i64 %i.ww, i64 1)
  %i.wx = add nsw i64 %.sroa.speculated.i.i.i282, %i.ww ; 2 uses
  %i.wy = icmp ult i64 %i.wx, %i.ww
  %i.wz = tail call i64 @llvm.umin.i64(i64 %i.wx, i64 2305843009213693951)
  %i.xa = select i1 %i.wy, i64 2305843009213693951, i64 %i.wz ; 3 uses
  %.not.i.i.i283 = icmp ne i64 %i.xa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i283)
  %i.xb = shl nuw nsw i64 %i.xa, 2
  %i.xc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xb) #22 ; 4 uses
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 %i.wu ; 3 uses
  store i32 %.2364, ptr %i.xd, align 4, !tbaa !42
  %i.xe = icmp sgt i64 %i.wu, 0
  br i1 %i.xe, label %bb.dd, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284

bb.dd:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xc, ptr align 4 %i.wr, i64 %i.wu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284: ; preds = %bb.dd, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %.not.i17.i.i285 = icmp eq ptr %i.wr, null
  br i1 %.not.i17.i.i285, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284
  %i.xg = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = sub i64 %i.xh, %i.wt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wr, i64 noundef %i.xi) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286: ; preds = %bb.de, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284
  store ptr %i.xc, ptr %i.d, align 8, !tbaa !41
  store ptr %i.xf, ptr %i.f, align 8, !tbaa !40
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %i.xa
  store ptr %i.xj, ptr %i.kj, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287

_ZNSt6vectorIjSaIjEE9push_backERKj.exit287:       ; preds = %bb.da, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286
  %i.xk = phi ptr [ %i.wo, %bb.da ], [ %i.xd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286 ] ; 2 uses
  %i.xl = load ptr, ptr %i.vl, align 8, !tbaa !101 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !119 ; 2 uses
  %i.xn = add nsw i32 %i.xm, %.2                  ; 2 uses
  %i.xo = add i32 %i.xm, %.2364                   ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 156
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !118
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287
  %i.xs = load i32, ptr %i.xk, align 4, !tbaa !42
  %i.xt = add i32 %i.xs, 1
  store i32 %i.xt, ptr %i.xk, align 4, !tbaa !42
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.xu = load ptr, ptr %i.vb, align 8, !tbaa !78 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !98
  %i.xw = sext i32 %i.xv to i64
  %i.xx = icmp slt i64 %indvars.iv.next532, %i.xw
  br i1 %i.xx, label %.lr.ph464, label %.loopexit, !llvm.loop !213

bb.dh:                                            ; preds = %.lr.ph471
  %i.xy = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.xz = load ptr, ptr %i.ki, align 8, !tbaa !73
  %.not.i.i288 = icmp eq ptr %i.xy, %i.xz
  br i1 %.not.i.i288, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 %.0135468, ptr %i.xy, align 4, !tbaa !42
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  store ptr %i.ya, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295

bb.dj:                                            ; preds = %bb.dh
  %i.yb = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.yc = ptrtoint ptr %i.xy to i64
  %i.yd = ptrtoint ptr %i.yb to i64               ; 2 uses
  %i.ye = sub i64 %i.yc, %i.yd                    ; 5 uses
  %i.yf = icmp eq i64 %i.ye, 9223372036854775804
  br i1 %i.yf, label %bb.dk, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289

bb.dk:                                            ; preds = %bb.dj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289: ; preds = %bb.dj
  %i.yg = ashr exact i64 %i.ye, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i290 = tail call i64 @llvm.umax.i64(i64 %i.yg, i64 1)
  %i.yh = add nsw i64 %.sroa.speculated.i.i.i.i290, %i.yg ; 2 uses
  %i.yi = icmp ult i64 %i.yh, %i.yg
  %i.yj = tail call i64 @llvm.umin.i64(i64 %i.yh, i64 2305843009213693951)
  %i.yk = select i1 %i.yi, i64 2305843009213693951, i64 %i.yj ; 3 uses
  %.not.i.i.i.i291 = icmp ne i64 %i.yk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i291)
  %i.yl = shl nuw nsw i64 %i.yk, 2
  %i.ym = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yl) #22 ; 4 uses
  %i.yn = getelementptr inbounds i8, ptr %i.ym, i64 %i.ye ; 2 uses
  store i32 %.0135468, ptr %i.yn, align 4, !tbaa !42
  %i.yo = icmp sgt i64 %i.ye, 0
  br i1 %i.yo, label %bb.dl, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292

bb.dl:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ym, ptr align 4 %i.yb, i64 %i.ye, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292: ; preds = %bb.dl, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  %.not.i17.i.i.i293 = icmp eq ptr %i.yb, null
  br i1 %.not.i17.i.i.i293, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292
  %i.yq = load ptr, ptr %i.ki, align 8, !tbaa !73
  %i.yr = ptrtoint ptr %i.yq to i64
  %i.ys = sub i64 %i.yr, %i.yd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.ys) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294: ; preds = %bb.dm, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292
  store ptr %i.ym, ptr %2, align 8, !tbaa !41
  store ptr %i.yp, ptr %i.b, align 8, !tbaa !40
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yk
  store ptr %i.yt, ptr %i.ki, align 8, !tbaa !73
  %.pre556 = load ptr, ptr %i.vb, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295

_ZNSt6vectorIjSaIjEE9push_backEOj.exit295:        ; preds = %bb.di, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294
  %i.yu = phi ptr [ %i.vc, %bb.di ], [ %.pre556, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294 ] ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !49
  %i.yx = getelementptr inbounds i8, ptr %i.yw, i64 -4
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !42 ; 2 uses
  %i.yz = add i32 %i.yy, %.0135468
  %i.za = load i32, ptr %i.yu, align 8, !tbaa !98
  %i.zb = icmp sgt i32 %i.za, 0
  br i1 %i.zb, label %.lr.ph458.preheader, label %._crit_edge459

.lr.ph458.preheader:                              ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295
  %.pre557 = load ptr, ptr %i.f, align 8, !tbaa !40
  %.pre558 = load ptr, ptr %i.kj, align 8, !tbaa !73
  br label %.lr.ph458

._crit_edge459.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303
  %.phi.trans.insert560 = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  %.pre561 = load ptr, ptr %.phi.trans.insert560, align 8, !tbaa !49
  %.phi.trans.insert562 = getelementptr inbounds i8, ptr %.pre561, i64 -4
  %.pre563 = load i32, ptr %.phi.trans.insert562, align 4, !tbaa !42
  br label %._crit_edge459

._crit_edge459:                                   ; preds = %._crit_edge459.loopexit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295
  %i.zc = phi i32 [ %i.yy, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295 ], [ %.pre563, %._crit_edge459.loopexit ]
  %i.zd = add i32 %i.zc, %.0362467
  br label %.loopexit

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303
  %i.ze = phi ptr [ %i.yu, %.lr.ph458.preheader ], [ %i.aag, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 2 uses
  %i.zf = phi ptr [ %.pre558, %.lr.ph458.preheader ], [ %i.aah, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 3 uses
  %i.zg = phi ptr [ %.pre557, %.lr.ph458.preheader ], [ %i.aai, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 3 uses
  %indvars.iv528 = phi i64 [ 0, %.lr.ph458.preheader ], [ %indvars.iv.next529, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !41
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv528
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !42
  %i.zl = add i32 %i.zk, %.0362467                ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.zg, %i.zf
  br i1 %.not.i.i296, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph458
  store i32 %i.zl, ptr %i.zg, align 4, !tbaa !42
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 4 ; 2 uses
  store ptr %i.zm, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303

bb.do:                                            ; preds = %.lr.ph458
  %i.zn = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.zo = ptrtoint ptr %i.zf to i64
  %i.zp = ptrtoint ptr %i.zn to i64               ; 2 uses
  %i.zq = sub i64 %i.zo, %i.zp                    ; 5 uses
  %i.zr = icmp eq i64 %i.zq, 9223372036854775804
  br i1 %i.zr, label %bb.dp, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297

bb.dp:                                            ; preds = %bb.do
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297: ; preds = %bb.do
  %i.zs = ashr exact i64 %i.zq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i298 = tail call i64 @llvm.umax.i64(i64 %i.zs, i64 1)
  %i.zt = add nsw i64 %.sroa.speculated.i.i.i.i298, %i.zs ; 2 uses
  %i.zu = icmp ult i64 %i.zt, %i.zs
  %i.zv = tail call i64 @llvm.umin.i64(i64 %i.zt, i64 2305843009213693951)
  %i.zw = select i1 %i.zu, i64 2305843009213693951, i64 %i.zv ; 3 uses
  %.not.i.i.i.i299 = icmp ne i64 %i.zw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i299)
  %i.zx = shl nuw nsw i64 %i.zw, 2
  %i.zy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zx) #22 ; 4 uses
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 %i.zq ; 2 uses
  store i32 %i.zl, ptr %i.zz, align 4, !tbaa !42
  %i.aaa = icmp sgt i64 %i.zq, 0
  br i1 %i.aaa, label %bb.dq, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300

bb.dq:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zy, ptr align 4 %i.zn, i64 %i.zq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300: ; preds = %bb.dq, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 4 ; 2 uses
  %.not.i17.i.i.i301 = icmp eq ptr %i.zn, null
  br i1 %.not.i17.i.i.i301, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300
  %i.aac = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = sub i64 %i.aad, %i.zp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef %i.aae) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302: ; preds = %bb.dr, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300
  store ptr %i.zy, ptr %i.d, align 8, !tbaa !41
  store ptr %i.aab, ptr %i.f, align 8, !tbaa !40
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.zw ; 2 uses
  store ptr %i.aaf, ptr %i.kj, align 8, !tbaa !73
  %.pre559 = load ptr, ptr %i.vb, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303

_ZNSt6vectorIjSaIjEE9push_backEOj.exit303:        ; preds = %bb.dn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302
  %i.aag = phi ptr [ %i.ze, %bb.dn ], [ %.pre559, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302 ] ; 3 uses
  %i.aah = phi ptr [ %i.zf, %bb.dn ], [ %i.aaf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302 ]
  %i.aai = phi ptr [ %i.zm, %bb.dn ], [ %i.aab, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302 ]
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.aaj = load i32, ptr %i.aag, align 8, !tbaa !98
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = icmp slt i64 %indvars.iv.next529, %i.aak
  br i1 %i.aal, label %.lr.ph458, label %._crit_edge459.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %bb.dg, %.preheader380, %._crit_edge459
  %.3365 = phi i32 [ %i.zd, %._crit_edge459 ], [ %.0362467, %.preheader380 ], [ %i.xo, %bb.dg ] ; 2 uses
  %.3 = phi i32 [ %i.yz, %._crit_edge459 ], [ %.0135468, %.preheader380 ], [ %i.xn, %bb.dg ] ; 2 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.aam = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.aan = load ptr, ptr %1, align 8, !tbaa !76   ; 2 uses
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  %sext656 = shl i64 %i.aaq, 29
  %i.aar = ashr i64 %sext656, 32
  %i.aas = icmp slt i64 %indvars.iv.next535, %i.aar
  br i1 %i.aas, label %.lr.ph471, label %._crit_edge472, !llvm.loop !215

_ZNSt6vectorIjSaIjEE9push_backERKj.exit223:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270, %bb.cn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222, %bb.bh
  %i.aat = phi ptr [ %i.uv, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270 ], [ %i.ug, %bb.cn ], [ %i.np, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222 ], [ %i.na, %bb.bh ]
  %i.aau = getelementptr inbounds i8, ptr %i.aat, i64 -4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.b, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223
  %.sink.in = phi ptr [ %i.aau, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223 ], [ %i.t, %bb.b ], [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !42
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sink, ptr %i.aav, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 4)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.2", align 8     ; 13 uses
  %i.a = tail call i32 @OMP_NUM_THREADS()
  store i32 %i.a, ptr %0, align 8, !tbaa !220
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.b
  %i.n = phi ptr [ null, %bb.b ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.p unwind label %bb.w

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 14 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.w = phi ptr [ %i.e, %.lr.ph ], [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !97, !range !32, !noundef !33
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %4, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.v, %i.s
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ac, ptr %i.v, align 4, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.s to i64
  %i.af = ptrtoint ptr %i.t to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.g, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #22
          to label %.noexc16 unwind label %.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !42
  %i.ar = icmp sgt i64 %i.ag, 0
  br i1 %i.ar, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.t, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ag) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %7, align 8, !tbaa !67
  store ptr %i.as, ptr %i.l, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.at, ptr %i.m, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.c
  br i1 %5, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i17 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.au, ptr %i.v, align 4, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.av, ptr %i.l, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = ptrtoint ptr %i.u to i64
  %i.ax = ptrtoint ptr %i.t to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i19, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i20)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #22
          to label %.noexc25 unwind label %.loopexit ; 5 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !42
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21

bb.n:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %i.t, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21: ; preds = %bb.n, %.noexc25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not.i17.i.i22 = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i22, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ay) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21
  store ptr %i.bg, ptr %7, align 8, !tbaa !67
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be ; 3 uses
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23, %bb.l, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f, %bb.j, %bb.d
  %i.bm = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.s, %bb.l ], [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.s, %bb.f ], [ %i.s, %bb.j ], [ %i.s, %bb.d ]
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.t, %bb.l ], [ %i.ao, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.t, %bb.f ], [ %i.t, %bb.j ], [ %i.t, %bb.d ] ; 2 uses
  %i.bo = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.u, %bb.l ], [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.s, %bb.f ], [ %i.u, %bb.j ], [ %i.u, %bb.d ]
  %i.bp = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.av, %bb.l ], [ %i.as, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ad, %bb.f ], [ %i.v, %bb.j ], [ %i.v, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.br = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %sext = shl i64 %i.bu, 29
  %i.bv = ashr i64 %sext, 32
  %i.bw = icmp slt i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %bb.c, label %._crit_edge, !llvm.loop !219

bb.p:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !221
  %i.bz = add nsw i32 %i.by, %i.r
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !221
  %i.ca = load ptr, ptr %1, align 8, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef double %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !222
  %i.cg = fadd double %i.cd, %i.cf
  store double %i.cg, ptr %i.ce, align 8, !tbaa !222
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ci = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #22
          to label %bb.r unwind label %bb.w       ; 3 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8LightGBM18MultiValBinWrapperC1EPNS_11MultiValBinEiRKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(192) %i.ci, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %6)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !223 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !223
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNKSt14default_deleteIN8LightGBM18MultiValBinWrapperEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cj)
  br label %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.s, %bb.t
  %i.ck = load ptr, ptr %7, align 8, !tbaa !67    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !68
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.q, %bb.p, %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 192) #21
  %.pre = load ptr, ptr %7, align 8, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.w
  %i.cs = phi ptr [ %i.n, %bb.w ], [ %.pre, %bb.x ], [ %i.t, %.loopexit ], [ %i.t, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.w ], [ %i.cr, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN8LightGBM18MultiValBinWrapperEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit3.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3.i

_ZNSt6vectorIjSaIjEED2Ev.exit3.i:                 ; preds = %bb.e, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit5.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit5.i

_ZNSt6vectorIjSaIjEED2Ev.exit5.i:                 ; preds = %bb.f, %_ZNSt6vectorIjSaIjEED2Ev.exit3.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit5.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #3, !inline_history !224
  br label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit5.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.aj, null
  br i1 %.not.i6.i, label %_ZN8LightGBM18MultiValBinWrapperD2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i7.i: ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #3, !inline_history !224
  br label %_ZN8LightGBM18MultiValBinWrapperD2Ev.exit

_ZN8LightGBM18MultiValBinWrapperD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i7.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 192) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZN8LightGBM18MultiValBinWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #16 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null, null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN8LightGBM11MultiValBinE", !11, i64 0}
!13 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM11MultiValBinELb0EE", !12, i64 0}
!14 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM11MultiValBinESt14default_deleteIS1_EEE", !13, i64 0}
!15 = !{!"_ZTSSt5tupleIJPN8LightGBM11MultiValBinESt14default_deleteIS1_EEE", !14, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM11MultiValBinESt14default_deleteIS1_EE", !15, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM11MultiValBinESt14default_deleteIS1_ELb1ELb1EE", !16, i64 0}
!18 = !{!"_ZTSSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE", !17, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIjSaIjEE", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIiSaIiEE", !26, i64 0}
!28 = !{!"p1 double", !11, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"_ZTSN8LightGBM18MultiValBinWrapperE", !10, i64 0, !10, i64 1, !10, i64 2, !18, i64 8, !18, i64 16, !23, i64 24, !23, i64 48, !23, i64 72, !27, i64 96, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !28, i64 152, !29, i64 160, !29, i64 168, !29, i64 176, !29, i64 184}
!31 = !{!30, !10, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"_ZTSNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!35 = !{!34, !28, i64 0}
!36 = !{!34, !28, i64 8}
!37 = !{!30, !7, i64 128}
!38 = !{!28, !28, i64 0}
!39 = !{!30, !7, i64 120}
!40 = !{!20, !19, i64 8}
!41 = !{!20, !19, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!30, !28, i64 152}
!44 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!45 = !{!"double", !6, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{i64 2, i64 -1, i64 -1, i1 true}
!48 = !{!47}
!49 = !{!19, !19, i64 0}
!50 = !{!30, !7, i64 124}
!51 = !{!"p1 omnipotent char", !11, i64 0}
!52 = !{!29, !29, i64 0}
!53 = !{!6, !6, i64 0}
!54 = !{!"p1 long", !11, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !11, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!30, !7, i64 132}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!30, !29, i64 176}
!63 = !{!"llvm.loop.unswitch.partial.disable"}
!64 = !{!30, !10, i64 1}
!65 = !{!30, !10, i64 2}
!66 = !{!24, !19, i64 8}
!67 = !{!24, !19, i64 0}
!68 = !{!24, !19, i64 16}
!69 = !{!30, !7, i64 144}
!70 = !{!12, !12, i64 0}
!71 = !{!"vtable pointer", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!20, !19, i64 16}
!74 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EE", !11, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!"p1 _ZTSN8LightGBM12FeatureGroupE", !11, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE", !11, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN8LightGBM3BinE", !11, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM3BinELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM3BinESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN8LightGBM3BinESt14default_deleteIS1_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM3BinESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM3BinESt14default_deleteIS1_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE", !89, i64 0}
!91 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE", !11, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE", !94, i64 0}
!96 = !{!"_ZTSN8LightGBM12FeatureGroupE", !7, i64 0, !83, i64 8, !23, i64 32, !90, i64 56, !95, i64 64, !10, i64 88, !10, i64 89, !10, i64 90, !7, i64 92}
!97 = !{!96, !10, i64 88}
!98 = !{!96, !7, i64 0}
!99 = !{!80, !79, i64 0}
!100 = !{!"p1 _ZTSN8LightGBM9BinMapperE", !11, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!"_ZTSN8LightGBM11MissingTypeE", !6, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIdSaIdEE", !105, i64 0}
!107 = !{!"_ZTSN8LightGBM7BinTypeE", !6, i64 0}
!108 = !{!"any p2 pointer", !11, i64 0}
!109 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !108, i64 0}
!110 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!111 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !110, i64 0}
!112 = !{!"float", !6, i64 0}
!113 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !112, i64 0, !29, i64 8}
!114 = !{!"_ZTSSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !109, i64 0, !29, i64 8, !111, i64 16, !29, i64 24, !113, i64 32, !110, i64 48}
!115 = !{!"_ZTSSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE", !114, i64 0}
!116 = !{!"_ZTSN8LightGBM9BinMapperE", !7, i64 0, !102, i64 4, !106, i64 8, !10, i64 32, !45, i64 40, !107, i64 48, !115, i64 56, !27, i64 112, !45, i64 136, !45, i64 144, !7, i64 152, !7, i64 156}
!117 = !{!116, !45, i64 40}
!118 = !{!116, !7, i64 156}
!119 = !{!116, !7, i64 0}
!120 = !{!75, !74, i64 8}
!121 = !{!"p1 _ZTSN8LightGBM18MultiValBinWrapperE", !11, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM18MultiValBinWrapperELb0EE", !121, i64 0}
!123 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EEE", !122, i64 0}
!124 = !{!"_ZTSSt5tupleIJPN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE", !124, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_ELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE", !126, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_Vector_implE", !34, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !128, i64 0}
!130 = !{!"_ZTSSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !129, i64 0}
!131 = !{!"_ZTSN8LightGBM19TrainingShareStatesE", !7, i64 0, !10, i64 4, !10, i64 5, !19, i64 8, !7, i64 16, !23, i64 24, !7, i64 48, !127, i64 56, !130, i64 64, !7, i64 88, !45, i64 96}
!132 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !51, i64 0}
!135 = !{!134, !51, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !134, i64 0, !29, i64 8, !6, i64 16}
!137 = !{!136, !51, i64 0}
!138 = !{!136, !29, i64 8}
!139 = distinct !{!139, !"LVerDomain"}
!140 = distinct !{!140, !139}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !59, !60, !61}
!143 = distinct !{!143, !59, !60}
!144 = distinct !{!144, !59}
!145 = !{!140}
!146 = !{!141}
!147 = distinct !{!147, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !59, !60, !61}
!151 = distinct !{!151, !59, !60}
!152 = distinct !{!152, !59}
!153 = !{!148}
!154 = !{!149}
!155 = distinct !{!155, !63}
!156 = distinct !{!156, !59, !60, !61}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59, !61, !60}
!159 = !{!"short", !6, i64 0}
!160 = !{!159, !159, i64 0}
!161 = distinct !{!161, !63}
!162 = distinct !{!162, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !59, !60, !61}
!166 = distinct !{!166, !59}
!167 = distinct !{!167, !59, !60}
!168 = !{!163}
!169 = !{!164}
!170 = distinct !{!170, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !59, !60, !61}
!174 = distinct !{!174, !59, !60}
!175 = distinct !{!175, !59}
!176 = !{!171}
!177 = !{!172}
!178 = distinct !{!178, !"LVerDomain"}
!179 = distinct !{!179, !178}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !59, !60, !61}
!182 = distinct !{!182, !59, !60}
!183 = distinct !{!183, !59}
!184 = !{!179}
!185 = !{!180}
!186 = distinct !{null, null}
!187 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!188 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!189 = !{!30, !29, i64 160}
!190 = !{!30, !29, i64 168}
!191 = !{!30, !29, i64 184}
!192 = !{!30, !7, i64 148}
!193 = !{!30, !7, i64 140}
!194 = distinct !{!194, !59}
!195 = distinct !{!195, !59}
!196 = distinct !{!196, !59}
!197 = distinct !{!197, !59}
!198 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!199 = !{!198, !51, i64 0}
!200 = distinct !{!200, !59, !60, !61}
!201 = distinct !{!201, !59, !60}
!202 = !{!34, !28, i64 16}
!203 = distinct !{!203, !59}
!204 = distinct !{!204, !59}
!205 = distinct !{!205, !59}
!206 = distinct !{!206, !59}
!207 = distinct !{!207, !217}
!208 = distinct !{!208, !59}
!209 = distinct !{!209, !59}
!210 = distinct !{!210, !59}
!211 = distinct !{!211, !59}
!212 = distinct !{!212, !59}
!213 = distinct !{!213, !59}
!214 = distinct !{!214, !59}
!215 = distinct !{!215, !59}
!216 = !{!96, !10, i64 89}
!217 = !{!"llvm.loop.unroll.disable"}
!218 = !{!131, !7, i64 48}
!219 = distinct !{!219, !59}
!220 = !{!131, !7, i64 0}
!221 = !{!131, !7, i64 88}
!222 = !{!131, !45, i64 96}
!223 = !{!121, !121, i64 0}
!224 = distinct !{null, null, null}
end_hunk_0
