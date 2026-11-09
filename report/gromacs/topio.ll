Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topio?download=true
inline.NumInlined: 1510
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z15generate_qmexclP10gmx_mtop_tP10t_inputrecRKN3gmx8MDLoggerE:bb.a
  %i.jg = add nsw i32 %.1187293.i, 1
  %i.jh = sext i32 %.1187293.i to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %.2265.i, i64 %i.jh
  %i.jj = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !158
  %i.jk = load ptr, ptr %i.hl, align 8, !tbaa !419
  %i.jl = getelementptr inbounds nuw [36 x i8], ptr %i.jk, i64 %indvars.iv.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.jm, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !62
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.2188.i = phi i32 [ %i.jg, %bb.aq ], [ %.1187293.i, %bb.ap ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jn = load i32, ptr %i.hk, align 8, !tbaa !414 ; 3 uses
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv.next.i, %i.jo
  br i1 %i.jp, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !387

.preheader280.i:                                  ; preds = %.lr.ph314.preheader.i, %._crit_edge307.i
  %i.jq = icmp sgt i32 %.0186.lcssa.i, 0          ; 2 uses
  br i1 %i.jq, label %.lr.ph316.preheader.i, label %._crit_edge317.i

.lr.ph316.preheader.i:                            ; preds = %.preheader280.i
  %wide.trip.count.i = zext nneg i32 %.0186.lcssa.i to i64 ; 3 uses
  %min.iters.check626 = icmp ult i32 %.0186.lcssa.i, 8
  br i1 %min.iters.check626, label %.lr.ph316.i.preheader, label %vector.ph627

vector.ph627:                                     ; preds = %.lr.ph316.preheader.i
  %n.vec628 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body629

vector.body629:                                   ; preds = %vector.body629, %vector.ph627
  %index630 = phi i64 [ 0, %vector.ph627 ], [ %index.next632, %vector.body629 ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %index630
  %wide.load631 = load <8 x i32>, ptr %i.jr, align 4, !tbaa !158
  %i.js = sext <8 x i32> %wide.load631 to <8 x i64> ; 8 uses
  %i.jt = extractelement <8 x i64> %i.js, i64 0
  %i.ju = getelementptr inbounds i8, ptr %i.io, i64 %i.jt
  %i.jv = extractelement <8 x i64> %i.js, i64 1
  %i.jw = getelementptr inbounds i8, ptr %i.io, i64 %i.jv
  %i.jx = extractelement <8 x i64> %i.js, i64 2
  %i.jy = getelementptr inbounds i8, ptr %i.io, i64 %i.jx
  %i.jz = extractelement <8 x i64> %i.js, i64 3
  %i.ka = getelementptr inbounds i8, ptr %i.io, i64 %i.jz
  %i.kb = extractelement <8 x i64> %i.js, i64 4
  %i.kc = getelementptr inbounds i8, ptr %i.io, i64 %i.kb
  %i.kd = extractelement <8 x i64> %i.js, i64 5
  %i.ke = getelementptr inbounds i8, ptr %i.io, i64 %i.kd
  %i.kf = extractelement <8 x i64> %i.js, i64 6
  %i.kg = getelementptr inbounds i8, ptr %i.io, i64 %i.kf
  %i.kh = extractelement <8 x i64> %i.js, i64 7
  %i.ki = getelementptr inbounds i8, ptr %i.io, i64 %i.kh
  store i8 1, ptr %i.ju, align 1, !tbaa !192
  store i8 1, ptr %i.jw, align 1, !tbaa !192
  store i8 1, ptr %i.jy, align 1, !tbaa !192
  store i8 1, ptr %i.ka, align 1, !tbaa !192
  store i8 1, ptr %i.kc, align 1, !tbaa !192
  store i8 1, ptr %i.ke, align 1, !tbaa !192
  store i8 1, ptr %i.kg, align 1, !tbaa !192
  store i8 1, ptr %i.ki, align 1, !tbaa !192
  %index.next632 = add nuw i64 %index630, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next632, %n.vec628
  br i1 %i.kj, label %middle.block633, label %vector.body629, !llvm.loop !389

middle.block633:                                  ; preds = %vector.body629
  %cmp.n634 = icmp eq i64 %n.vec628, %wide.trip.count.i
  br i1 %cmp.n634, label %._crit_edge317.i, label %.lr.ph316.i.preheader

.lr.ph316.i.preheader:                            ; preds = %.lr.ph316.preheader.i, %middle.block633
  %indvars.iv381.i.ph = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %n.vec628, %middle.block633 ]
  br label %.lr.ph316.i

._crit_edge317.i:                                 ; preds = %.lr.ph316.i, %middle.block633, %.preheader280.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hi, i64 176 ; 5 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !219 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hi, i64 184 ; 6 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !219 ; 3 uses
  %i.kp = icmp eq ptr %i.km, %i.ko
  br i1 %i.kp, label %bb.ax, label %bb.as

.lr.ph316.i:                                      ; preds = %.lr.ph316.i.preheader, %.lr.ph316.i
  %indvars.iv381.i = phi i64 [ %indvars.iv.next382.i, %.lr.ph316.i ], [ %indvars.iv381.i.ph, %.lr.ph316.i.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv381.i
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !158
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds i8, ptr %i.io, i64 %i.ks
  store i8 1, ptr %i.kt, align 1, !tbaa !192
  %indvars.iv.next382.i = add nuw nsw i64 %indvars.iv381.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next382.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge317.i, label %.lr.ph316.i, !llvm.loop !390

bb.as:                                            ; preds = %._crit_edge317.i
  %i.ku = load ptr, ptr %i.l, align 8, !tbaa !173 ; 3 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr %i.m, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %i.n, align 8, !tbaa !26
  store i8 1, ptr %i.o, align 8, !tbaa !176
  %i.kw = ptrtoint ptr %i.ko to i64
  %i.kx = ptrtoint ptr %i.km to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = lshr exact i64 %i.ky, 2
  %i.la = trunc i64 %i.kz to i32
  %i.lb = sdiv i32 %i.la, 3
  %i.lc = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.78, i32 noundef %i.lb)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !170
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  invoke void %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull align 8 dereferenceable(40) %i.lc)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i unwind label %bb.av, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i: ; preds = %bb.au
  %i.lg = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.m
  br i1 %i.lh, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i
  %i.li = load i64, ptr %i.m, align 8, !tbaa !25
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #29
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i

_ZN3gmx14LogEntryWriterD2Ev.exit.i:               ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre413.i = load ptr, ptr %i.kl, align 8, !tbaa !156
  %.pre414.i = load ptr, ptr %i.kn, align 8, !tbaa !157
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lk = landingpad { ptr, i32 }
          cleanup
  %i.ll = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.m
  br i1 %i.lm, label %_ZN3gmx14LogEntryWriterD2Ev.exit215.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213.i: ; preds = %bb.av
  %i.ln = load i64, ptr %i.m, align 8, !tbaa !25
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #29
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit215.i

_ZN3gmx14LogEntryWriterD2Ev.exit215.i:            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.aw:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i, %bb.as
  %i.lp = phi ptr [ %i.ko, %bb.as ], [ %.pre414.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i ]
  %i.lq = phi ptr [ %i.km, %bb.as ], [ %.pre413.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i ] ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !158
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = lshr exact i64 %i.lu, 2
  %i.lw = trunc i64 %i.lv to i32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge317.i
  %.0198.i = phi i32 [ 0, %._crit_edge317.i ], [ %i.lr, %bb.aw ]
  %.0195.i = phi i32 [ 0, %._crit_edge317.i ], [ %i.lw, %bb.aw ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hi, i64 192 ; 3 uses
  br label %bb.ba

bb.ay:                                            ; preds = %.loopexit279.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ly = load i32, ptr %i.hk, align 8, !tbaa !414 ; 2 uses
  store i32 %i.ly, ptr %5, align 8, !tbaa !421
  %i.lz = mul nsw i32 %.0186.lcssa.i, %.0186.lcssa.i
  store i32 %i.lz, ptr %i.p, align 8, !tbaa !422
  %i.ma = add nsw i32 %i.ly, 1
  %i.mb = sext i32 %i.ma to i64
  %i.mc = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.13, i32 noundef 1493, i64 noundef range(i64 -2147483648, 2147483648) %i.mb, i64 noundef 4)
  store ptr %i.mc, ptr %i.q, align 8, !tbaa !219
  %i.md = load i32, ptr %i.p, align 8, !tbaa !422
  %i.me = sext i32 %i.md to i64
  %i.mf = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.13, i32 noundef 1494, i64 noundef range(i64 -2147483648, 2147483648) %i.me, i64 noundef 4) ; 3 uses
  %i.mg = ptrtoaddr ptr %i.mf to i64
  store ptr %i.mf, ptr %i.r, align 8, !tbaa !219
  %i.mh = load i32, ptr %5, align 8, !tbaa !421   ; 2 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  %.pre418.i = load ptr, ptr %i.q, align 8, !tbaa !423 ; 3 uses
  br i1 %i.mi, label %.lr.ph346.i, label %.._crit_edge347_crit_edge.i

.._crit_edge347_crit_edge.i:                      ; preds = %bb.ay
  %.pre423.i = sext i32 %i.mh to i64
  br label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %bb.ay
  br i1 %i.jq, label %.lr.ph346.split.us.preheader.i, label %.lr.ph346.split.i

.lr.ph346.split.us.preheader.i:                   ; preds = %.lr.ph346.i
  %wide.trip.count399.i = zext nneg i32 %.0186.lcssa.i to i64 ; 8 uses
  %min.iters.check527 = icmp ult i32 %.0186.lcssa.i, 4
  %min.iters.check531 = icmp ult i32 %.0186.lcssa.i, 32
  %i.mj = and i64 %wide.trip.count399.i, 28
  %n.vec533 = and i64 %wide.trip.count399.i, 2147483616 ; 4 uses
  %cmp.n542 = icmp eq i64 %n.vec533, %wide.trip.count399.i
  %min.epilog.iters.check546 = icmp eq i64 %i.mj, 0
  %n.vec549 = and i64 %wide.trip.count399.i, 2147483644 ; 3 uses
  %cmp.n555 = icmp eq i64 %n.vec549, %wide.trip.count399.i
  br label %.lr.ph346.split.us.i

.lr.ph346.split.us.i:                             ; preds = %bb.az, %.lr.ph346.split.us.preheader.i
  %indvars.iv401.i = phi i64 [ 0, %.lr.ph346.split.us.preheader.i ], [ %indvars.iv.next402.i, %bb.az ] ; 3 uses
  %.0175343.us.i = phi i32 [ 0, %.lr.ph346.split.us.preheader.i ], [ %.1176.us.i, %bb.az ] ; 4 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.pre418.i, i64 %indvars.iv401.i
  store i32 %.0175343.us.i, ptr %i.mk, align 4, !tbaa !158
  %i.ml = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv401.i
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !192, !range !181, !noundef !182
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %iter.check543, label %bb.az

iter.check543:                                    ; preds = %.lr.ph346.split.us.i
  %i.mo = zext nneg i32 %.0175343.us.i to i64     ; 2 uses
  %invariant.gep511.i = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mo ; 11 uses
  br i1 %min.iters.check527, label %.preheader278.us.i.preheader, label %vector.memcheck528

vector.memcheck528:                               ; preds = %iter.check543
  %i.mp = shl nuw nsw i64 %i.mo, 2
  %i.mq = add i64 %i.mp, %i.mg
  %8 = sub i64 %.0263.lcssa.i526, %i.mq
  %diff.check529 = icmp ugt i64 %8, -128
  br i1 %diff.check529, label %.preheader278.us.i.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %vector.memcheck528
  br i1 %min.iters.check531, label %vec.epilog.ph547, label %vector.body534

vector.body534:                                   ; preds = %vector.main.loop.iter.check530, %vector.body534
  %index535 = phi i64 [ %index.next540, %vector.body534 ], [ 0, %vector.main.loop.iter.check530 ] ; 3 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %index535 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 96
  %wide.load536 = load <8 x i32>, ptr %i.mr, align 4, !tbaa !158
  %wide.load537 = load <8 x i32>, ptr %i.ms, align 4, !tbaa !158
  %wide.load538 = load <8 x i32>, ptr %i.mt, align 4, !tbaa !158
  %wide.load539 = load <8 x i32>, ptr %i.mu, align 4, !tbaa !158
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %index535 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 96
  store <8 x i32> %wide.load536, ptr %i.mv, align 4, !tbaa !158
  store <8 x i32> %wide.load537, ptr %i.mw, align 4, !tbaa !158
  store <8 x i32> %wide.load538, ptr %i.mx, align 4, !tbaa !158
  store <8 x i32> %wide.load539, ptr %i.my, align 4, !tbaa !158
  %index.next540 = add nuw i64 %index535, 32      ; 2 uses
  %i.mz = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.mz, label %middle.block541, label %vector.body534, !llvm.loop !391

middle.block541:                                  ; preds = %vector.body534
  br i1 %cmp.n542, label %._crit_edge342.us.i, label %vec.epilog.iter.check544

vec.epilog.iter.check544:                         ; preds = %middle.block541
  br i1 %min.epilog.iters.check546, label %.preheader278.us.i.preheader, label %vec.epilog.ph547, !prof !424

vec.epilog.ph547:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check544
  %vec.epilog.resume.val548 = phi i64 [ %n.vec533, %vec.epilog.iter.check544 ], [ 0, %vector.main.loop.iter.check530 ]
  br label %vec.epilog.vector.body550

vec.epilog.vector.body550:                        ; preds = %vec.epilog.vector.body550, %vec.epilog.ph547
  %index551 = phi i64 [ %vec.epilog.resume.val548, %vec.epilog.ph547 ], [ %index.next553, %vec.epilog.vector.body550 ] ; 3 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %index551
  %wide.load552 = load <4 x i32>, ptr %i.na, align 4, !tbaa !158
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %index551
  store <4 x i32> %wide.load552, ptr %i.nb, align 4, !tbaa !158
  %index.next553 = add nuw i64 %index551, 4       ; 2 uses
  %i.nc = icmp eq i64 %index.next553, %n.vec549
  br i1 %i.nc, label %vec.epilog.middle.block554, label %vec.epilog.vector.body550, !llvm.loop !392

vec.epilog.middle.block554:                       ; preds = %vec.epilog.vector.body550
  br i1 %cmp.n555, label %._crit_edge342.us.i, label %.preheader278.us.i.preheader

.preheader278.us.i.preheader:                     ; preds = %iter.check543, %vector.memcheck528, %vec.epilog.iter.check544, %vec.epilog.middle.block554
  %indvars.iv396.i.ph = phi i64 [ 0, %iter.check543 ], [ 0, %vector.memcheck528 ], [ %n.vec533, %vec.epilog.iter.check544 ], [ %n.vec549, %vec.epilog.middle.block554 ] ; 4 uses
  %i.nd = sub nsw i64 %wide.trip.count399.i, %indvars.iv396.i.ph
  %xtraiter = and i64 %i.nd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader278.us.i.prol.loopexit, label %.preheader278.us.i.prol

.preheader278.us.i.prol:                          ; preds = %.preheader278.us.i.preheader, %.preheader278.us.i.prol
  %indvars.iv396.i.prol = phi i64 [ %indvars.iv.next397.i.prol, %.preheader278.us.i.prol ], [ %indvars.iv396.i.ph, %.preheader278.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader278.us.i.prol ], [ 0, %.preheader278.us.i.preheader ]
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv396.i.prol
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !158
  %gep512.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv396.i.prol
  store i32 %i.nf, ptr %gep512.i.prol, align 4, !tbaa !158
  %indvars.iv.next397.i.prol = add nuw nsw i64 %indvars.iv396.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader278.us.i.prol.loopexit, label %.preheader278.us.i.prol, !llvm.loop !393

.preheader278.us.i.prol.loopexit:                 ; preds = %.preheader278.us.i.prol, %.preheader278.us.i.preheader
  %indvars.iv396.i.unr = phi i64 [ %indvars.iv396.i.ph, %.preheader278.us.i.preheader ], [ %indvars.iv.next397.i.prol, %.preheader278.us.i.prol ]
  %i.ng = sub nsw i64 %indvars.iv396.i.ph, %wide.trip.count399.i
  %i.nh = icmp ugt i64 %i.ng, -8
  br i1 %i.nh, label %._crit_edge342.us.i, label %.preheader278.us.i

.preheader278.us.i:                               ; preds = %.preheader278.us.i.prol.loopexit, %.preheader278.us.i
  %indvars.iv396.i = phi i64 [ %indvars.iv.next397.i.7, %.preheader278.us.i ], [ %indvars.iv396.i.unr, %.preheader278.us.i.prol.loopexit ] ; 10 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv396.i
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !158
  %gep512.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv396.i
  store i32 %i.nj, ptr %gep512.i, align 4, !tbaa !158
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !158
  %gep512.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i
  store i32 %i.nl, ptr %gep512.i.1, align 4, !tbaa !158
  %indvars.iv.next397.i.1 = add nuw nsw i64 %indvars.iv396.i, 2 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i.1
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !158
  %gep512.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i.1
  store i32 %i.nn, ptr %gep512.i.2, align 4, !tbaa !158
  %indvars.iv.next397.i.2 = add nuw nsw i64 %indvars.iv396.i, 3 ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i.2
  %i.np = load i32, ptr %i.no, align 4, !tbaa !158
  %gep512.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i.2
  store i32 %i.np, ptr %gep512.i.3, align 4, !tbaa !158
  %indvars.iv.next397.i.3 = add nuw nsw i64 %indvars.iv396.i, 4 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i.3
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !158
  %gep512.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i.3
  store i32 %i.nr, ptr %gep512.i.4, align 4, !tbaa !158
  %indvars.iv.next397.i.4 = add nuw nsw i64 %indvars.iv396.i, 5 ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i.4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !158
  %gep512.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i.4
  store i32 %i.nt, ptr %gep512.i.5, align 4, !tbaa !158
  %indvars.iv.next397.i.5 = add nuw nsw i64 %indvars.iv396.i, 6 ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i.5
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !158
  %gep512.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i.5
  store i32 %i.nv, ptr %gep512.i.6, align 4, !tbaa !158
  %indvars.iv.next397.i.6 = add nuw nsw i64 %indvars.iv396.i, 7 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.0263.lcssa.i, i64 %indvars.iv.next397.i.6
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !158
  %gep512.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep511.i, i64 %indvars.iv.next397.i.6
  store i32 %i.nx, ptr %gep512.i.7, align 4, !tbaa !158
  %indvars.iv.next397.i.7 = add nuw nsw i64 %indvars.iv396.i, 8 ; 2 uses
  %exitcond400.not.i.7 = icmp eq i64 %indvars.iv.next397.i.7, %wide.trip.count399.i
  br i1 %exitcond400.not.i.7, label %._crit_edge342.us.i, label %.preheader278.us.i, !llvm.loop !394

bb.az:                                            ; preds = %._crit_edge342.us.i, %.lr.ph346.split.us.i
  %.1176.us.i = phi i32 [ %i.ob, %._crit_edge342.us.i ], [ %.0175343.us.i, %.lr.ph346.split.us.i ] ; 2 uses
  %indvars.iv.next402.i = add nuw nsw i64 %indvars.iv401.i, 1 ; 2 uses
  %i.ny = load i32, ptr %5, align 8, !tbaa !421
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = icmp slt i64 %indvars.iv.next402.i, %i.nz
  br i1 %i.oa, label %.lr.ph346.split.us.i, label %._crit_edge347.i, !llvm.loop !395

._crit_edge342.us.i:                              ; preds = %.preheader278.us.i.prol.loopexit, %.preheader278.us.i, %vec.epilog.middle.block554, %middle.block541
  %i.ob = add nuw nsw i32 %.0175343.us.i, %.0186.lcssa.i
  br label %bb.az

bb.ba:                                            ; preds = %.loopexit279.i, %bb.ax
  %indvars.iv390.i = phi i64 [ 0, %bb.ax ], [ %indvars.iv.next391.i, %.loopexit279.i ] ; 5 uses
  %.1196339.i = phi i32 [ %.0195.i, %bb.ax ], [ %.5.i, %.loopexit279.i ] ; 3 uses
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv390.i ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 28 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !425
  %i.of = and i32 %i.oe, 1
  %i.og = icmp eq i32 %i.of, 0
  %i.oh = icmp eq i64 %indvars.iv390.i, 4
  %or.cond.i = or i1 %i.oh, %i.og
  br i1 %or.cond.i, label %.loopexit279.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !160 ; 5 uses
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %indvars.iv390.i ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 5 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !157 ; 2 uses
  %i.on = load ptr, ptr %i.ok, align 8, !tbaa !156 ; 4 uses
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = lshr exact i64 %i.oq, 2
  %i.os = trunc i64 %i.or to i32
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.lr.ph336.i, label %.loopexit279.i

.lr.ph336.i:                                      ; preds = %bb.bb
  %i.ou = icmp eq i32 %i.oj, 2
  %i.ov = icmp eq i64 %indvars.iv390.i, 64
  %i.ow = add i32 %i.oj, 1                        ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 3 uses
  %i.oy = sext i32 %i.ow to i64                   ; 2 uses
  %i.oz = icmp sgt i32 %i.oj, 0
  %i.pa = shl nsw i64 %i.oy, 2
  %diff.check562 = icmp ugt i64 %i.pa, -128
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i, %.lr.ph336.i
  %.pre417.pre.i289 = phi ptr [ %i.on, %.lr.ph336.i ], [ %.pre417.pre.i290, %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i ] ; 9 uses
  %.pre417419.i = phi ptr [ %i.on, %.lr.ph336.i ], [ %.pre417420.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i ] ; 7 uses
  %i.pb = phi ptr [ %i.on, %.lr.ph336.i ], [ %i.abz, %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i ] ; 8 uses
  %i.pc = phi ptr [ %i.om, %.lr.ph336.i ], [ %i.aca, %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i ] ; 4 uses
  %.0184334.i = phi i32 [ 0, %.lr.ph336.i ], [ %.1185.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i ] ; 10 uses
  %.2197333.i = phi i32 [ %.1196339.i, %.lr.ph336.i ], [ %.4269.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit218.i ] ; 6 uses
  br i1 %i.ou, label %bb.bd, label %bb.bp

bb.bd:                                            ; preds = %bb.bc
  %i.pd = sext i32 %.0184334.i to i64
  %i.pe = getelementptr [4 x i8], ptr %i.pb, i64 %i.pd ; 2 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !158 ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pe, i64 8
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !158 ; 2 uses
  %i.pj = sext i32 %i.pg to i64
  %i.pk = getelementptr inbounds i8, ptr %i.io, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !192, !range !181, !noundef !182
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.be, label %.thread272.i

bb.be:                                            ; preds = %bb.bd
  %i.pn = sext i32 %i.pi to i64
  %i.po = getelementptr inbounds i8, ptr %i.io, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !192, !range !181, !noundef !182
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.bf, label %.thread272.i

bb.bf:                                            ; preds = %bb.be
end_hunk_0
