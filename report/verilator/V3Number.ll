Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN8V3Number5opMulERKS_S1_:bb.a

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47
  %.fr70 = freeze i32 %i.y                        ; 3 uses
  %i.z = icmp slt i32 %.fr70, 65
  br i1 %i.z, label %bb.k, label %.preheader56

.preheader56:                                     ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  %i.ac = add nsw i32 %i.ab, 31
  %i.ad = sdiv i32 %i.ac, 32
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %.preheader56
  %i.af = load i8, ptr %i.f, align 4, !tbaa !48
  %i.ag = add i8 %i.af, -1
  %spec.select.i.i = icmp ult i8 %i.ag, 2
  %i.ah = icmp samesign ult i32 %i.ab, 129        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  br i1 %spec.select.i.i, label %.lr.ph64.split, label %bb.l, !prof !49

.lr.ph64.split:                                   ; preds = %.lr.ph64
  %i.ak = add nuw nsw i32 %.fr70, 31
  %i.al = lshr i32 %i.ak, 5
  %i.am = icmp samesign ult i32 %.fr70, 129
  %i.an = zext nneg i32 %i.al to i64              ; 6 uses
  %smax113 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %wide.trip.count114 = zext nneg i32 %smax113 to i64 ; 2 uses
  br i1 %i.am, label %_ZNK12V3NumberData3numEv.exit.us, label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit.us:                 ; preds = %.lr.ph64.split, %.loopexit55.us
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.loopexit55.us ], [ 0, %.lr.ph64.split ] ; 6 uses
  %i.ao = load ptr, ptr %1, align 8
  %spec.select.i.us = select i1 %i.ah, ptr %1, ptr %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.us, i64 %indvars.iv88
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51 ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %.loopexit55.us, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK12V3NumberData3numEv.exit.us
  %i.at = load i32, ptr %i.ai, align 8, !tbaa !47
  %.fr = freeze i32 %i.at                         ; 3 uses
  %i.au = add nsw i32 %.fr, 31
  %i.av = sdiv i32 %i.au, 32
  %i.aw = icmp sgt i32 %.fr, 0
  br i1 %i.aw, label %.lr.ph60.us, label %.loopexit55.us

.lr.ph60.us:                                      ; preds = %.preheader.us
  %i.ax = load i8, ptr %i.m, align 4, !tbaa !48
  %i.ay = add i8 %i.ax, -1
  %spec.select.i.i45.us = icmp ult i8 %i.ay, 2
  br i1 %spec.select.i.i45.us, label %.lr.ph60.split.us, label %.split66.us, !prof !49

.lr.ph60.split.us:                                ; preds = %.lr.ph60.us
  %i.az = icmp samesign ult i32 %.fr, 129
  %smax109 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %wide.trip.count110 = zext nneg i32 %smax109 to i64 ; 2 uses
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit47.us.us.us, label %_ZNK12V3NumberData3numEv.exit47.us.us

_ZNK12V3NumberData3numEv.exit47.us.us.us:         ; preds = %.lr.ph60.split.us, %.loopexit.us.us.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.loopexit.us.us.us ], [ 0, %.lr.ph60.split.us ] ; 3 uses
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.loopexit.us.us.us ], [ %indvars.iv88, %.lr.ph60.split.us ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv106
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = add nuw nsw i64 %indvars.iv106, %indvars.iv88
  %i.be = icmp samesign ult i64 %i.bd, %i.an
  %or.cond131 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond131, label %.lr.ph.us.us.us, label %.loopexit.us.us.us

.lr.ph.us.us.us:                                  ; preds = %_ZNK12V3NumberData3numEv.exit47.us.us.us
  %i.bf = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.bg = add i8 %i.bf, -1
  %spec.select.i.i48.us.us.us = icmp ult i8 %i.bg, 2
  br i1 %spec.select.i.i48.us.us.us, label %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader: ; preds = %.lr.ph.us.us.us
  %i.bh = zext i32 %i.bb to i64
  %i.bi = mul nuw i64 %i.bh, %i.ar
  br label %_ZN12V3NumberData3numEv.exit52.us.us.us.us

_ZN12V3NumberData3numEv.exit52.us.us.us.us:       ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader, %_ZN12V3NumberData3numEv.exit52.us.us.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv101, %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader ], [ %indvars.iv.next104, %_ZN12V3NumberData3numEv.exit52.us.us.us.us ] ; 2 uses
  %.03557.us.us.us.us = phi i64 [ %i.bi, %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader ], [ %i.bo, %_ZN12V3NumberData3numEv.exit52.us.us.us.us ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add nuw i64 %.03557.us.us.us.us, %i.bl  ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !51
  %i.bo = lshr i64 %i.bm, 32                      ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next104, %i.an
  %or.cond = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond, label %_ZN12V3NumberData3numEv.exit52.us.us.us.us, label %.loopexit.us.us.us, !llvm.loop !261

.loopexit.us.us.us:                               ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.us, %_ZNK12V3NumberData3numEv.exit47.us.us.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit55.us, label %_ZNK12V3NumberData3numEv.exit47.us.us.us, !llvm.loop !262

_ZNK12V3NumberData3numEv.exit47.us.us:            ; preds = %.lr.ph60.split.us, %.loopexit.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.loopexit.us.us ], [ 0, %.lr.ph60.split.us ] ; 3 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.loopexit.us.us ], [ %indvars.iv88, %.lr.ph60.split.us ] ; 2 uses
  %i.br = load ptr, ptr %2, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv95
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !51 ; 2 uses
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = add nuw nsw i64 %indvars.iv95, %indvars.iv88
  %i.bw = icmp samesign ult i64 %i.bv, %i.an
  %or.cond133 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond133, label %.lr.ph.us.us, label %.loopexit.us.us

.lr.ph.us.us:                                     ; preds = %_ZNK12V3NumberData3numEv.exit47.us.us
  %i.bx = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.by = add i8 %i.bx, -1
  %spec.select.i.i48.us.us = icmp ult i8 %i.by, 2
  br i1 %spec.select.i.i48.us.us, label %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.us.us.us.preheader: ; preds = %.lr.ph.us.us
  %i.bz = zext i32 %i.bt to i64
  %i.ca = mul nuw i64 %i.bz, %i.ar
  br label %_ZN12V3NumberData3numEv.exit52.us.us.us

_ZN12V3NumberData3numEv.exit52.us.us.us:          ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader, %_ZN12V3NumberData3numEv.exit52.us.us.us
  %indvars.iv92 = phi i64 [ %indvars.iv90, %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader ], [ %indvars.iv.next93, %_ZN12V3NumberData3numEv.exit52.us.us.us ] ; 2 uses
  %.03557.us.us.us = phi i64 [ %i.ca, %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader ], [ %i.cg, %_ZN12V3NumberData3numEv.exit52.us.us.us ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !51
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw i64 %.03557.us.us.us, %i.cd     ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.cb, align 8, !tbaa !51
  %i.cg = lshr i64 %i.ce, 32                      ; 2 uses
  %i.ch = icmp ne i64 %i.cg, 0
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next93, %i.an
  %or.cond68 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond68, label %_ZN12V3NumberData3numEv.exit52.us.us.us, label %.loopexit.us.us, !llvm.loop !261

.loopexit.us.us:                                  ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us, %_ZNK12V3NumberData3numEv.exit47.us.us
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count110
  br i1 %exitcond100.not, label %.loopexit55.us, label %_ZNK12V3NumberData3numEv.exit47.us.us, !llvm.loop !262

.loopexit55.us:                                   ; preds = %.loopexit.us.us, %.loopexit.us.us.us, %.preheader.us, %_ZNK12V3NumberData3numEv.exit.us
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit.us, !llvm.loop !263

bb.k:                                             ; preds = %bb.j
  %i.cj = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.ck = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.cl) ; 0 uses
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit55, %.loopexit55.us, %.preheader56
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.m

_ZNK12V3NumberData3numEv.exit:                    ; preds = %.lr.ph64.split, %.loopexit55
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit55 ], [ 0, %.lr.ph64.split ] ; 4 uses
  %i.cn = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.ah, ptr %1, ptr %i.cn
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !51 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  br i1 %i.cr, label %.loopexit55, label %.preheader

bb.l:                                             ; preds = %.lr.ph64
  %i.cs = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.118)
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cv) #32
  unreachable

.preheader:                                       ; preds = %_ZNK12V3NumberData3numEv.exit
  %i.cw = load i32, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  %i.cx = add nuw nsw i32 %i.cw, 31
  %3 = lshr i32 %i.cx, 5
  %i.cy = icmp sgt i32 %i.cw, 0
  br i1 %i.cy, label %.lr.ph60, label %.loopexit55

.lr.ph60:                                         ; preds = %.preheader
  %i.cz = load i8, ptr %i.m, align 4, !tbaa !48
  %i.da = add i8 %i.cz, -1
  %spec.select.i.i45 = icmp ult i8 %i.da, 2
  %i.db = icmp samesign ult i32 %i.cw, 129
  br i1 %spec.select.i.i45, label %_ZNK12V3NumberData3numEv.exit47.preheader, label %.split66.us, !prof !49

_ZNK12V3NumberData3numEv.exit47.preheader:        ; preds = %.lr.ph60
  %smax = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit47

_ZNK12V3NumberData3numEv.exit47:                  ; preds = %_ZNK12V3NumberData3numEv.exit47.preheader, %.loopexit
  %indvars.iv81 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %indvars.iv.next82, %.loopexit ] ; 3 uses
  %indvars.iv76 = phi i64 [ %indvars.iv, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %indvars.iv.next77, %.loopexit ] ; 2 uses
  %i.dc = load ptr, ptr %2, align 8
  %spec.select.i46 = select i1 %i.db, ptr %2, ptr %i.dc
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i46, i64 %indvars.iv81
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !51 ; 2 uses
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = add nuw nsw i64 %indvars.iv81, %indvars.iv
  %i.dh = icmp samesign ult i64 %i.dg, %i.an
  %or.cond135 = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond135, label %.lr.ph, label %.loopexit

.split66.us:                                      ; preds = %.lr.ph60, %.lr.ph60.us
  %i.di = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.dj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.118)
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 1 dereferenceable(1) %i.m)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.dl) #32
  unreachable

.lr.ph:                                           ; preds = %_ZNK12V3NumberData3numEv.exit47
  %i.dm = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.dn = add i8 %i.dm, -1
  %spec.select.i.i48 = icmp ult i8 %i.dn, 2
  br i1 %spec.select.i.i48, label %_ZN12V3NumberData3numEv.exit52.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.preheader:         ; preds = %.lr.ph
  %i.do = zext i32 %i.de to i64
  %i.dp = mul nuw i64 %i.do, %i.cq
  br label %_ZN12V3NumberData3numEv.exit52

_ZN12V3NumberData3numEv.exit52:                   ; preds = %_ZN12V3NumberData3numEv.exit52.preheader, %_ZN12V3NumberData3numEv.exit52
  %indvars.iv78 = phi i64 [ %indvars.iv76, %_ZN12V3NumberData3numEv.exit52.preheader ], [ %indvars.iv.next79, %_ZN12V3NumberData3numEv.exit52 ] ; 2 uses
  %.03557 = phi i64 [ %i.dp, %_ZN12V3NumberData3numEv.exit52.preheader ], [ %i.dw, %_ZN12V3NumberData3numEv.exit52 ]
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv78 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !51
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw i64 %.03557, %i.dt              ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !51
  %i.dw = lshr i64 %i.du, 32                      ; 2 uses
  %i.dx = icmp ne i64 %i.dw, 0
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next79, %i.an
  %or.cond69 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond69, label %_ZN12V3NumberData3numEv.exit52, label %.loopexit, !llvm.loop !261

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.us.us, %.lr.ph.us.us.us
  %i.dz = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.ea = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.118)
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 1 dereferenceable(1) %i.aj)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ec) #32
  unreachable

.loopexit:                                        ; preds = %_ZN12V3NumberData3numEv.exit52, %_ZNK12V3NumberData3numEv.exit47
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit55, label %_ZNK12V3NumberData3numEv.exit47, !llvm.loop !262

.loopexit55:                                      ; preds = %.loopexit, %.preheader, %_ZNK12V3NumberData3numEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next, %wide.trip.count114
  br i1 %exitcond87.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !263

bb.m:                                             ; preds = %bb.k, %._crit_edge, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opAddERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not24 = or i1 %i.a, %i.b
  br i1 %.not24, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2042) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2043) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not25 = icmp eq i8 %i.n, 1
  br i1 %.not25, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2043) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph60, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph60:                                         ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !48
  %i.aa = add i8 %i.z, -1
  %spec.select.i.i31 = icmp ult i8 %i.aa, 2
  br i1 %spec.select.i.i31, label %_ZN12V3NumberData3numEv.exit33, label %bb.j, !prof !49

_ZN12V3NumberData3numEv.exit33:                   ; preds = %.lr.ph60, %_ZN12V3NumberData3numEv.exit33
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %_ZN12V3NumberData3numEv.exit33 ], [ 0, %.lr.ph60 ] ; 2 uses
  %i.ab = phi i32 [ %i.af, %_ZN12V3NumberData3numEv.exit33 ], [ %i.w, %.lr.ph60 ]
  %i.ac = icmp slt i32 %i.ab, 129
  %i.ad = load ptr, ptr %0, align 8
  %spec.select.i32 = select i1 %i.ac, ptr %0, ptr %i.ad
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i32, i64 %indvars.iv106 ; 2 uses
  store i32 -1, ptr %i.ae, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !47  ; 2 uses
  %i.ag = add nsw i32 %i.af, 31
  %i.ah = sdiv i32 %i.ag, 32
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next107, %i.ai
  br i1 %i.aj, label %_ZN12V3NumberData3numEv.exit33, label %_ZN8V3Number11setAllBitsXEv.exit, !llvm.loop !2

bb.j:                                             ; preds = %.lr.ph60
  %i.ak = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.118)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.an) #32
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !47
  %.fr62 = freeze i32 %i.aq                       ; 7 uses
  %i.ar = add nsw i32 %.fr62, 31
  %i.as = sdiv i32 %i.ar, 32
  %i.at = icmp sgt i32 %.fr62, 0
  br i1 %i.at, label %.lr.ph, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph:                                           ; preds = %bb.k
  %i.au = load i8, ptr %i.f, align 4, !tbaa !48
  %i.av = add i8 %i.au, -1
  %spec.select.i.i = icmp ult i8 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = icmp samesign ult i32 %.fr62, 129       ; 6 uses
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.l, !prof !49

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = load i8, ptr %i.m, align 4, !tbaa !48
  %i.bb = add i8 %i.ba, -1
  %spec.select.i.i26 = icmp ult i8 %i.bb, 2
  br i1 %spec.select.i.i26, label %.lr.ph.split.split, label %bb.m, !prof !49

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bc = load i8, ptr %i.aw, align 4, !tbaa !48
  %i.bd = add i8 %i.bc, -1
  %spec.select.i.i29 = icmp ult i8 %i.bd, 2
  br i1 %spec.select.i.i29, label %.lr.ph.split.split.split, label %bb.n, !prof !49

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
end_hunk_0
begin_hunk_1_@_ZNK8V3Number10hiWordMaskEv:bb.a
  %notmask = shl nsw i32 -1, %i.c
  %i.d = xor i32 %notmask, -1
  %i.e = select i1 %.not, i32 -1, i32 %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number10autoExtendEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 32
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number6bitIs0Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %i.c = add i8 %i.b, -3
  %spec.select.i = icmp ult i8 %i.c, -2
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %spec.select.i
  br i1 %or.cond, label %_ZNK8V3Number7bitIsXZEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47
  %.fr.i = freeze i32 %i.f                        ; 5 uses
  %.not = icmp slt i32 %1, %.fr.i
  br i1 %.not, label %_ZNK12V3NumberData3numEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %.fr.i, 1
  br i1 %i.g, label %_ZNK8V3Number7bitIsXZEi.exit, label %tailrecurse.preheader.i

tailrecurse.preheader.i:                          ; preds = %bb.c
  %i.h = add nsw i32 %.fr.i, -1                   ; 2 uses
  %i.i = icmp samesign ult i32 %.fr.i, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i7.i = select i1 %i.i, ptr %0, ptr %i.j
  %i.k = lshr i32 %i.h, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i, i64 %i.l
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !69
  %i.n = zext i32 %.sroa.3.0.copyload.i to i64
  %i.o = and i32 %i.h, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 1, %i.p
  %i.r = and i64 %i.q, %i.n
  %i.s = icmp eq i64 %i.r, 0
  br label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.b
  %i.t = icmp samesign ult i32 %.fr.i, 129
  %i.u = load ptr, ptr %0, align 8
  %spec.select.i9 = select i1 %i.t, ptr %0, ptr %i.u
  %i.v = lshr i32 %1, 5
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.y = or i32 %.sroa.4.0.copyload, %.sroa.0.0.copyload
  %i.z = zext i32 %i.y to i64
  %i.aa = and i32 %1, 31
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %i.z
  %i.ae = icmp eq i64 %i.ad, 0
  br label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK8V3Number7bitIsXZEi.exit:                     ; preds = %tailrecurse.preheader.i, %bb.c, %bb.a, %_ZNK12V3NumberData3numEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ %i.ae, %_ZNK12V3NumberData3numEv.exit ], [ %i.s, %tailrecurse.preheader.i ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number6bitIs1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %i.c = add i8 %i.b, -3
  %spec.select.i = icmp ult i8 %i.c, -2
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %spec.select.i
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not = icmp slt i32 %1, %i.f
  br i1 %.not, label %_ZNK12V3NumberData3numEv.exit, label %bb.d

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.b
  %i.g = icmp samesign ult i32 %i.f, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i10 = select i1 %i.g, ptr %0, ptr %i.h
  %i.i = lshr i32 %1, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.k, align 4, !tbaa !69
  %i.l = zext i32 %.sroa.0.0.copyload to i64
  %i.m = and i32 %1, 31
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 1, %i.n                  ; 2 uses
  %i.p = and i64 %i.o, %i.l
  %.not7 = icmp eq i64 %i.p, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK12V3NumberData3numEv.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.q = zext i32 %.sroa.4.0.copyload to i64
  %i.r = and i64 %i.o, %i.q
  %.not8 = icmp eq i64 %i.r, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZNK12V3NumberData3numEv.exit, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not8, %bb.c ], [ false, %bb.b ], [ false, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number6bitIsZEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %i.c = add i8 %i.b, -3
  %spec.select.i = icmp ult i8 %i.c, -2
  %i.d = icmp slt i32 %1, 0
  %or.cond12 = or i1 %i.d, %spec.select.i
  br i1 %or.cond12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47
  %.fr = freeze i32 %i.f                          ; 4 uses
  %i.g = icmp slt i32 %.fr, 1
  br i1 %i.g, label %.loopexit, label %tailrecurse.preheader

tailrecurse.preheader:                            ; preds = %.lr.ph
  %i.h = add nsw i32 %.fr, -1
  %.not.peel = icmp samesign ult i32 %1, %.fr
  %spec.select = select i1 %.not.peel, i32 %1, i32 %i.h ; 2 uses
  %i.i = icmp samesign ult i32 %.fr, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i9 = select i1 %i.i, ptr %0, ptr %i.j
  %i.k = lshr i32 %spec.select, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.m, align 4, !tbaa !69
  %i.n = xor i32 %.sroa.0.0.copyload, -1
  %i.o = zext i32 %i.n to i64
  %i.p = and i32 %spec.select, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 1, %i.q                  ; 2 uses
  %i.s = and i64 %i.r, %i.o
  %.not7 = icmp eq i64 %i.s, 0
  br i1 %.not7, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse.preheader
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.t = zext i32 %.sroa.4.0.copyload to i64
  %i.u = and i64 %i.r, %i.t
  %i.v = icmp ne i64 %i.u, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %tailrecurse.preheader, %bb.b
  %.0 = phi i1 [ %i.v, %bb.b ], [ false, %tailrecurse.preheader ], [ false, %bb.a ], [ false, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number8isSignedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48    ; 2 uses
  %i.c = and i8 %i.b, -2
  %switch = icmp eq i8 %i.c, 2
  br i1 %switch, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 31
  %1 = lshr i32 %i.f, 5
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  %i.i = icmp samesign ult i32 %i.e, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.i, ptr %0, ptr %i.j
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !49

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !132
  %.not.not = icmp ne i32 %i.m, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !307

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.118)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.q) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ %.not.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8V3Number9displayedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %class.VFormatAttr, align 1         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 35, ptr %3, align 1, !tbaa !73
  call void @_ZNK8V3Number9displayedEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11VFormatAttr(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48    ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 31
  %1 = lshr i32 %i.f, 5
  %i.g = icmp slt i32 %i.e, 1
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  %i.i = icmp samesign ult i32 %i.e, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.i, ptr %0, ptr %i.j
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !49

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp eq i64 %i.l, 0
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.n, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.o = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.p = icmp eq i32 %.sroa.4.0.copyload, 0
  %or.cond.not = select i1 %i.o, i1 %i.p, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not16 = select i1 %or.cond.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not16, label %_ZNK12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !308

bb.b:                                             ; preds = %.lr.ph
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.118)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.t) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.3 = phi i1 [ %i.m, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ true, %.preheader ], [ %or.cond.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN8V3Number18displayedFmtHasArgEcb(i8 noundef signext %0, i1 noundef zeroext %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = sext i8 %0 to i32
  %i.b = tail call i32 @tolower(i32 noundef %i.a) #34
  %switch.tableidx = add i32 %i.b, -63            ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 60
  %switch.cast = zext nneg i32 %switch.tableidx to i60
  %switch.downshift = lshr i60 -363942781200105471, %switch.cast
  %switch.masked = trunc i60 %switch.downshift to i1
  %.0 = select i1 %i.c, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3Number10displayPadEmcbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i8 noundef signext %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !28
  store i8 0, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp ult i64 %i.d, %1
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = sub nuw i64 %1, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.f, i8 noundef signext %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %5, align 8, !tbaa !35     ; 6 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %i.j = load ptr, ptr %6, align 8, !tbaa !35     ; 5 uses
  %i.k = icmp eq ptr %i.j, %i.g                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.k, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  switch i64 %i.m, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.j, align 1, !tbaa !29
  store i8 %i.o, ptr %i.h, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = load i64, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !28
  %i.q = load ptr, ptr %5, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !29
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.j, ptr %5, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !29
  store <2 x i64> %i.t, ptr %i.b, align 8, !tbaa !29
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !29
  store ptr %i.j, ptr %5, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !29
  store <2 x i64> %i.w, ptr %i.b, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %6, align 8, !tbaa !35
  store i64 %i.u, ptr %i.g, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %6, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %bb.f ], [ %i.g, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !28
  store i8 0, ptr %i.x, align 1, !tbaa !29
  %i.z = load ptr, ptr %6, align 8, !tbaa !35     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %3, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !35, !noalias !317
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !317 ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !35, !noalias !317
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !317 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !25, !alias.scope !318
  store i64 0, ptr %i.af, align 8, !tbaa !28, !alias.scope !318
  store i8 0, ptr %i.ae, align 8, !tbaa !29, !alias.scope !318
  %i.ak = add i64 %i.aj, %i.ah
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i64, ptr %i.af, align 8, !tbaa !28, !alias.scope !318
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ah
  br i1 %i.an, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !28, !alias.scope !318
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.aj
  br i1 %i.ar, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.k
end_hunk_1
begin_hunk_2_@_ZN8V3Number12opRToIRoundSERKS_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %.not23 = icmp eq i32 %i.m, 64
  br i1 %.not23, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !158

.critedge.i:                                      ; preds = %bb.e
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.p) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.e
  %i.q = load i32, ptr %1, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.s to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.t = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.u = tail call double @llvm.round.f64(double %i.t) ; 3 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.w = bitcast double %i.u to i64               ; 2 uses
  %i.x = and i64 %i.w, 4503599627370495
  %i.y = or disjoint i64 %i.x, 4503599627370496
  %i.z = fcmp une double %i.u, 0.000000e+00
  br i1 %i.z, label %.preheader.preheader, label %bb.q

.preheader.preheader:                             ; preds = %_ZNK8V3Number8toDoubleEv.exit
  %i.aa = lshr i64 %i.w, 52
  %i.ab = and i64 %i.aa, 2047
  %i.ac = add nsw i64 %i.ab, -1075
  br label %.preheader

bb.f:                                             ; preds = %bb.i
  %i.ad = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.ad, label %bb.j, label %bb.q

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ae = shl nuw nsw i64 1, %indvars.iv
  %i.af = and i64 %i.ae, %i.y
  %.not21 = icmp eq i64 %i.af, 0
  br i1 %.not21, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ag = add nsw i64 %i.ac, %indvars.iv          ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = trunc nsw i64 %i.ag to i32
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.ai, i8 noundef signext 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 53
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !337

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opNegateERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.an = load i8, ptr %i.am, align 4, !tbaa !48  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 3
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN8V3NumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZN8V3NumberD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !47
  %i.aw = icmp sgt i32 %i.av, 128
  %i.ax = icmp eq i8 %i.an, 1
  %i.ay = and i1 %i.ax, %i.aw
  br i1 %i.ay, label %bb.n, label %_ZN8V3NumberD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %2, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #31
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.bf

bb.q:                                             ; preds = %bb.f, %_ZN8V3NumberD2Ev.exit, %_ZNK8V3Number8toDoubleEv.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK8V3Number7toSQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 64
  br i1 %.not, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !158

.critedge.i:                                      ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.h) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.k to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.m = fptosi double %i.l to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = add nsw i32 %i.p, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.n
  %i.u = sub i64 0, %i.t
  %i.v = or i64 %i.n, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK8V3Number8toDoubleEv.exit
  %.0 = phi i64 [ %i.m, %_ZNK8V3Number8toDoubleEv.exit ], [ %i.v, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %i.a, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1097) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.69)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %0)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48    ; 2 uses
  %i.h = icmp eq i8 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 6 uses
  br i1 %i.h, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = add nuw nsw i32 %i.j, 31
  %2 = lshr i32 %i.k, 5
  %i.l = icmp sgt i32 %i.j, 64
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = icmp eq i8 %i.g, 1
  br i1 %i.m, label %.lr.ph.split, label %bb.f, !prof !49

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.n = icmp samesign ult i32 %i.j, 129
  %i.o = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.n, ptr %0, ptr %i.o
  %smax = tail call i32 @llvm.umax.i32(i32 %2, i32 3)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

bb.d:                                             ; preds = %bb.c
  %.not12 = icmp eq i32 %i.j, 64
  br i1 %.not12, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !158

.critedge.i:                                      ; preds = %bb.d
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.r) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.d
  %i.s = load i32, ptr %0, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.s to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.u to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.v = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.w = fptoui double %i.v to i64
  br label %bb.p

bb.e:                                             ; preds = %_ZNK12V3NumberData3numEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !338

_ZNK12V3NumberData3numEv.exit:                    ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ 2, %.lr.ph.split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.z = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.118)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ac) #32
  unreachable

bb.g:                                             ; preds = %_ZNK12V3NumberData3numEv.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.ae = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.h, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.g, %bb.h, %bb.j
  %i.aj = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 2 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.70, i64 noundef 52) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZNK8V3Number5asciiB5cxx11Ebb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true, i1 noundef zeroext false), !inline_history !339
  %i.al = load ptr, ptr %1, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !28
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.al, i64 noundef %i.an)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.l, !inline_history !339

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZlsRSoRK8V3Number.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31, !inline_history !339
  br label %_ZlsRSoRK8V3Number.exit

bb.l:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.l
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !29
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31, !inline_history !339
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume

_ZlsRSoRK8V3Number.exit:                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ao)
  %.pr = load i32, ptr %i.i, align 8, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.preheader, %_ZlsRSoRK8V3Number.exit
  %i.ba = phi i32 [ %.pr, %_ZlsRSoRK8V3Number.exit ], [ %i.j, %.preheader ], [ %i.j, %bb.e ] ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 33
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bc = call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bd = zext i32 %i.bc to i64
  br label %bb.p

bb.n:                                             ; preds = %.loopexit
  %i.be = load i8, ptr %i.f, align 4, !tbaa !48
  %i.bf = add i8 %i.be, -1
  %spec.select.i.i5 = icmp ult i8 %i.bf, 2
  br i1 %spec.select.i.i5, label %_ZNK12V3NumberData3numEv.exit10, label %bb.o, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.bg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.118)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bj) #32
  unreachable

_ZNK12V3NumberData3numEv.exit10:                  ; preds = %bb.n
  %i.bk = icmp samesign ult i32 %i.ba, 129
  %i.bl = load ptr, ptr %0, align 8
  %spec.select.i6 = select i1 %i.bk, ptr %0, ptr %i.bl ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select.i6, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !51
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, 32
  %i.bq = load i32, ptr %spec.select.i6, align 4, !tbaa !51
  %i.br = zext i32 %i.bq to i64
  %i.bs = or disjoint i64 %i.bp, %i.br
  br label %bb.p

bb.p:                                             ; preds = %_ZNK12V3NumberData3numEv.exit10, %bb.m, %_ZNK8V3Number8toDoubleEv.exit
  %.04 = phi i64 [ %i.w, %_ZNK8V3Number8toDoubleEv.exit ], [ %i.bd, %bb.m ], [ %i.bs, %_ZNK12V3NumberData3numEv.exit10 ]
  ret i64 %.04
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK8V3Number6countXEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) #8 align 2 {
bb.a:
  %.not1722 = icmp sgt i32 %2, 0
  br i1 %.not1722, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %.fr.i.i = freeze i32 %i.b                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i8, ptr %i.c, align 4
  %.fr29 = freeze i8 %i.d
  %i.e = add i8 %.fr29, -3
  %spec.select.i.i = icmp ult i8 %i.e, -2
  %i.f = icmp samesign ult i32 %.fr.i.i, 129
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i11.i = select i1 %i.f, ptr %0, ptr %i.g
  br i1 %spec.select.i.i, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %.fr.i.i, i32 %1)
  %i.h = sub i32 %smax, %1
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK8V3Number6bitIsXEi.exit.thread
  %.01224 = phi i32 [ %i.w, %_ZNK8V3Number6bitIsXEi.exit.thread ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.01323 = phi i32 [ %i.v, %_ZNK8V3Number6bitIsXEi.exit.thread ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.i = add nsw i32 %.01224, %1                  ; 3 uses
  %exitcond.not = icmp eq i32 %.01224, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

end_hunk_2
begin_hunk_3_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !28
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !35
  store i64 0, ptr %i.as, align 8, !tbaa !28
  store i8 0, ptr %i.al, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opAssignERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opShiftLERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not28 = or i1 %i.a, %i.b
  br i1 %.not28, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2011) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2012) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not29 = icmp eq i8 %i.n, 1
  br i1 %.not29, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2012) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.t, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph44, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph44:                                         ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !48
  %i.z = add i8 %i.y, -1
  %spec.select.i.i33 = icmp ult i8 %i.z, 2
  br i1 %spec.select.i.i33, label %_ZN12V3NumberData3numEv.exit, label %bb.h, !prof !49

_ZN12V3NumberData3numEv.exit:                     ; preds = %.lr.ph44, %_ZN12V3NumberData3numEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12V3NumberData3numEv.exit ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.aa = phi i32 [ %i.ae, %_ZN12V3NumberData3numEv.exit ], [ %i.v, %.lr.ph44 ]
  %i.ab = icmp slt i32 %i.aa, 129
  %i.ac = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.ab, ptr %0, ptr %i.ac
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  store i32 -1, ptr %i.ad, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.u, align 8, !tbaa !47  ; 2 uses
  %i.af = add nsw i32 %i.ae, 31
  %i.ag = sdiv i32 %i.af, 32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %_ZN12V3NumberData3numEv.exit, label %_ZN8V3Number11setAllBitsXEv.exit, !llvm.loop !2

bb.h:                                             ; preds = %.lr.ph44
  %i.aj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.118)
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.x)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.am) #32
  unreachable

_ZN8V3Number11setAllBitsXEv.exit:                 ; preds = %_ZN12V3NumberData3numEv.exit, %.preheader
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false), !inline_history !163
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.an = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 32
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.i
  %i.ar = load i8, ptr %i.m, align 4, !tbaa !48
  %i.as = add i8 %i.ar, -3
  %spec.select.i.i = icmp ult i8 %i.as, -2
  br i1 %spec.select.i.i, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = icmp samesign ult i32 %i.ap, 129
  %i.au = load ptr, ptr %2, align 8
  %spec.select.i10.i = select i1 %i.at, ptr %2, ptr %i.au
  br label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs1Ei.exit.thread
  %.02439 = phi i32 [ 32, %.lr.ph.split ], [ %i.bf, %_ZNK8V3Number6bitIs1Ei.exit.thread ] ; 3 uses
  %i.av = lshr i32 %.02439, 5
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ax, align 4, !tbaa !69
  %i.ay = zext i32 %.sroa.0.0.copyload.i to i64
  %i.az = and i32 %.02439, 31
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 1, %i.ba                ; 2 uses
  %i.bc = and i64 %i.bb, %i.ay
  %.not7.i = icmp eq i64 %i.bc, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i32, align 4, !tbaa !69
  %i.bd = zext i32 %.sroa.4.0.copyload.i to i64
  %i.be = and i64 %i.bb, %i.bd
  %.not8.i = icmp eq i64 %i.be, 0
  br i1 %.not8.i, label %.loopexit, label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %_ZNK12V3NumberData3numEv.exit.i, %_ZNK8V3Number6bitIs1Ei.exit
  %i.bf = add nuw nsw i32 %.02439, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %i.ap
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK12V3NumberData3numEv.exit.i, !llvm.loop !393

._crit_edge.split:                                ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %.lr.ph, %bb.i
  %i.bg = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47 ; 2 uses
  %.not45 = icmp eq i32 %i.bi, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge.split, %bb.k
  %i.bj = phi i32 [ %i.bm, %bb.k ], [ %i.bi, %._crit_edge.split ]
  %.040 = phi i32 [ %i.bn, %bb.k ], [ 0, %._crit_edge.split ] ; 4 uses
  %.not30 = icmp ult i32 %.040, %i.bg
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph42
  %i.bk = sub nuw i32 %.040, %i.bg
  %i.bl = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.bk)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.040, i8 noundef signext %i.bl)
  %.pre = load i32, ptr %i.bh, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph42, %bb.j
  %i.bm = phi i32 [ %i.bj, %.lr.ph42 ], [ %.pre, %bb.j ] ; 2 uses
  %i.bn = add nuw i32 %.040, 1                    ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph42, label %.loopexit, !llvm.loop !394

.loopexit:                                        ; preds = %_ZNK8V3Number6bitIs1Ei.exit, %bb.k, %._crit_edge.split, %_ZN8V3Number11setAllBitsXEv.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number10fitsInUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = add nuw nsw i32 %i.c, 31
  %1 = lshr i32 %i.d, 5
  %i.e = icmp slt i32 %i.c, 33
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.b, !prof !49

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.i = icmp samesign ult i32 %i.c, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.i, ptr %0, ptr %i.j
  %smax = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %.lr.ph.split
  %indvars.iv = phi i64 [ 1, %.lr.ph.split ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51
  %.not = icmp eq i32 %i.l, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %_ZNK12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !395

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.118)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.p) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  %i.d = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47
  %i.g = add nsw i32 %i.f, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.d, %i.j
  %i.l = sub i32 0, %i.k
  %i.m = or i32 %i.d, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK12V3NumberData3strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 254) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.127)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZNK8V3Number6toHashEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.V3Hash, align 4              ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !48    ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = add i32 %i.b, 31                         ; 2 uses
  %2 = lshr i32 %i.f, 5
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = add i8 %i.d, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  %i.i = icmp samesign ult i32 %i.b, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.i, ptr %0, ptr %i.j ; 3 uses
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !49

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %3 = icmp ult i32 %i.f, 64
  br i1 %3, label %_ZNK12V3NumberData3numEv.exit.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.preheader.new

_ZNK12V3NumberData3numEv.exit.preheader.new:      ; preds = %_ZNK12V3NumberData3numEv.exit.preheader
  %unroll_iter = and i64 %wide.trip.count, 134217726
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  call void @_ZN6V3HashC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.k = load i32, ptr %1, align 4
  %i.l = shl i32 %i.b, 6
  %i.m = lshr i32 %i.b, 2
  %i.n = add i32 %i.l, -1640531527
  %i.o = add i32 %i.n, %i.m
  %i.p = add i32 %i.o, %i.k
  %i.q = xor i32 %i.p, %i.b
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %indvars.iv.next.1, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %.sroa.0.06 = phi i32 [ %i.b, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %i.ah, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %niter.next.1, %_ZNK12V3NumberData3numEv.exit ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = shl i32 %.sroa.0.06, 6
  %i.u = lshr i32 %.sroa.0.06, 2
  %i.v = add i32 %i.t, -1640531527
  %i.w = add i32 %i.v, %i.u
  %i.x = add i32 %i.w, %i.s
  %i.y = xor i32 %i.x, %.sroa.0.06                ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = shl i32 %i.y, 6
  %i.ad = lshr i32 %i.y, 2
  %i.ae = add i32 %i.ac, -1640531527
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = add i32 %i.af, %i.ab
  %i.ah = xor i32 %i.ag, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !396

bb.b:                                             ; preds = %.lr.ph
  %i.ai = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.118)
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.al) #32
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK12V3NumberData3numEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit.epil.preheader

_ZNK12V3NumberData3numEv.exit.epil.preheader:     ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.0.06.epil.init = phi i32 [ %i.b, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod11 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv.epil.init
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51
  %i.ao = shl i32 %.sroa.0.06.epil.init, 6
  %i.ap = lshr i32 %.sroa.0.06.epil.init, 2
  %i.aq = add i32 %i.ao, -1640531527
  %i.ar = add i32 %i.aq, %i.ap
  %i.as = add i32 %i.ar, %i.an
  %i.at = xor i32 %i.as, %.sroa.0.06.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.sroa.0.1 = phi i32 [ %i.q, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ %i.b, %.preheader ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ], [ %i.at, %_ZNK12V3NumberData3numEv.exit.epil.preheader ]
  ret i32 %.sroa.0.1
}

declare void @_ZN6V3HashC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @_ZNK8V3Number8dataByteEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 4
  %i.b = tail call noundef i32 @_ZNK8V3Number9edataWordEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.a)
  %i.c = shl nsw i32 %1, 3
  %i.d = and i32 %i.c, 24
  %i.e = lshr i32 %i.b, %i.d
  %i.f = trunc i32 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number9isNeqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48    ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 31
  %1 = lshr i32 %i.f, 5
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  %i.i = icmp samesign ult i32 %i.e, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.i, ptr %0, ptr %i.j
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !49

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp ne i64 %i.l, 0
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.n, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.o = xor i32 %.sroa.4.0.copyload, -1
  %i.p = and i32 %.sroa.0.0.copyload, %i.o
  %.not.not = icmp ne i32 %i.p, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !397

bb.b:                                             ; preds = %.lr.ph
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.118)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.t) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.3 = phi i1 [ %i.m, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ false, %.preheader ], [ %.not.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number10isBitsZeroEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not12 = icmp sgt i32 %2, %1
  br i1 %.not12, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %.fr24 = freeze i8 %i.b
  %i.c = add i8 %.fr24, -3
  %spec.select.i.i = icmp ult i8 %i.c, -2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %.fr.i.i = freeze i32 %i.e                      ; 5 uses
  %i.f = add nsw i32 %.fr.i.i, -1                 ; 2 uses
  %i.g = icmp samesign ult i32 %.fr.i.i, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i7.i.i = select i1 %i.g, ptr %0, ptr %i.h ; 3 uses
  %i.i = lshr i32 %i.f, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.j
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.l = and i32 %i.f, 31
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 1, %i.m
  br i1 %spec.select.i.i, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split, !prof !164

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = icmp slt i32 %.fr.i.i, 1
  %i.p = icmp slt i32 %2, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs0Ei.exit.thread.us
  %.0713.us = phi i32 [ %i.aa, %_ZNK8V3Number6bitIs0Ei.exit.thread.us ], [ %2, %.lr.ph.split ] ; 5 uses
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.b, !prof !164

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %.not.i.us = icmp slt i32 %.0713.us, %.fr.i.i
  br i1 %.not.i.us, label %_ZNK8V3Number6bitIs0Ei.exit.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us

_ZNK8V3Number6bitIs0Ei.exit.us:                   ; preds = %bb.b
  %i.q = lshr i32 %.0713.us, 5
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.s, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !69
  %i.t = or i32 %.sroa.4.0.copyload.i.us, %.sroa.0.0.copyload.i.us
  %i.u = zext i32 %i.t to i64
  %i.v = and i32 %.0713.us, 31
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.x, %i.u
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !165

_ZNK8V3Number6bitIs0Ei.exit.thread.us:            ; preds = %bb.b, %_ZNK8V3Number6bitIs0Ei.exit.us
  %i.aa = add i32 %.0713.us, 1
  %exitcond27.not = icmp eq i32 %.0713.us, %1
  br i1 %exitcond27.not, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split.split.us, !llvm.loop !7

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs0Ei.exit.thread
  %.0713 = phi i32 [ %i.ao, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %2, %.lr.ph.split ] ; 5 uses
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.c, !prof !164

bb.c:                                             ; preds = %.lr.ph.split.split
  %.not.i = icmp slt i32 %.0713, %.fr.i.i
  br i1 %.not.i, label %_ZNK8V3Number6bitIs0Ei.exit, label %tailrecurse.preheader.i.i

tailrecurse.preheader.i.i:                        ; preds = %bb.c
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !69
  %i.ab = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.ac = and i64 %i.n, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !165

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %bb.c
  %i.ae = lshr i32 %.0713, 5
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !69
  %i.ah = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = and i32 %.0713, 31
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 1, %i.ak
  %i.am = and i64 %i.al, %i.ai
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !165

_ZNK8V3Number6bitIs0Ei.exit.thread:               ; preds = %tailrecurse.preheader.i.i, %_ZNK8V3Number6bitIs0Ei.exit
  %i.ao = add i32 %.0713, 1
  %exitcond.not = icmp eq i32 %.0713, %1
  br i1 %exitcond.not, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split.split, !llvm.loop !7

_ZNK8V3Number6bitIs0Ei.exit.thread10:             ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread, %_ZNK8V3Number6bitIs0Ei.exit, %tailrecurse.preheader.i.i, %.lr.ph.split.split, %_ZNK8V3Number6bitIs0Ei.exit.thread.us, %_ZNK8V3Number6bitIs0Ei.exit.us, %.lr.ph.split.split.us, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph.split.split.us ], [ false, %.lr.ph ], [ false, %_ZNK8V3Number6bitIs0Ei.exit.us ], [ true, %_ZNK8V3Number6bitIs0Ei.exit.thread.us ], [ true, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ false, %.lr.ph.split.split ], [ false, %tailrecurse.preheader.i.i ], [ false, %_ZNK8V3Number6bitIs0Ei.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number7isEqOneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48
  %i.c = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.c, 2
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.118)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #32
  unreachable

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %i.j = icmp slt i32 %i.i, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k ; 3 uses
  %i.l = load i32, ptr %spec.select.i, align 4, !tbaa !51
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %_ZNK12V3NumberData3numEv.exit16, label %.loopexit

_ZNK12V3NumberData3numEv.exit16:                  ; preds = %_ZNK12V3NumberData3numEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !132
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNK12V3NumberData3numEv.exit16
  %i.o = icmp slt i32 %i.i, 33
  br i1 %i.o, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit19.preheader

_ZNK12V3NumberData3numEv.exit19.preheader:        ; preds = %.preheader
  %i.p = add nuw nsw i32 %i.i, 31
  %i.q = lshr i32 %i.p, 5
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %_ZNK12V3NumberData3numEv.exit19

_ZNK12V3NumberData3numEv.exit19:                  ; preds = %_ZNK12V3NumberData3numEv.exit19, %_ZNK12V3NumberData3numEv.exit19.preheader
  %indvars.iv = phi i64 [ 1, %_ZNK12V3NumberData3numEv.exit19.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit19 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.r, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.s = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.t = icmp eq i32 %.sroa.4.0.copyload, 0
  %or.cond.not = select i1 %i.s, i1 %i.t, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not24 = select i1 %or.cond.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not24, label %_ZNK12V3NumberData3numEv.exit19, label %.loopexit, !llvm.loop !398

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit19, %.preheader, %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit16
  %.3 = phi i1 [ false, %_ZNK12V3NumberData3numEv.exit16 ], [ false, %_ZNK12V3NumberData3numEv.exit ], [ true, %.preheader ], [ %or.cond.not, %_ZNK12V3NumberData3numEv.exit19 ]
  ret i1 %.3
}
end_hunk_3
begin_hunk_4_@_ZN8V3Number6opNeqDERKS_S1_:bb.a

.critedge.i:                                      ; preds = %bb.g
  %i.x = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.z) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %.not20 = icmp eq i32 %i.ab, 64
  br i1 %.not20, label %_ZNK8V3Number8toDoubleEv.exit17, label %.critedge.i16, !prof !158

.critedge.i16:                                    ; preds = %_ZNK8V3Number8toDoubleEv.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.ae) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit17:                  ; preds = %_ZNK8V3Number8toDoubleEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %i.ah = load i32, ptr %1, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.ah to i64
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ai = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.aj = load i32, ptr %2, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i12 = zext i32 %i.aj to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i13 = zext i32 %i.al to i64
  %.sroa.0.4.insert.shift.i14 = shl nuw i64 %.sroa.0.4.insert.ext.i13, 32
  %.sroa.0.4.insert.insert.i15 = or disjoint i64 %.sroa.0.4.insert.shift.i14, %.sroa.0.0.insert.ext.i12
  %i.am = bitcast i64 %.sroa.0.4.insert.insert.i15 to double
  %i.an = fcmp une double %i.ai, %i.am
  %i.ao = zext i1 %i.an to i8
  %i.ap = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13setSingleBitsEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %i.ao) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number8isCaseEqERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48    ; 2 uses
  switch i8 %i.b, label %bb.h [
    i8 3, label %bb.b
    i8 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %3, align 8, !tbaa !35
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.d, 0
  %.pre35 = load ptr, ptr %3, align 8, !tbaa !35  ; 3 uses
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %2, align 8, !tbaa !35
  %bcmp.i = call i32 @bcmp(ptr %i.i, ptr %.pre35, i64 %i.d)
  %i.j = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.d, %bb.e
  %i.k = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre35, %bb.e ], [ %.pre35, %bb.d ] ; 2 uses
  %i.l = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.j, %bb.e ], [ true, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.o = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.o)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.p = load i64, ptr %i.m, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.r = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !29
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.x = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8
  %.not30 = icmp eq i32 %i.ad, 64
  br i1 %.not30, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !158

.critedge.i:                                      ; preds = %bb.g
  %i.ae = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ag) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !48
  %i.aj = icmp ne i8 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp ne i32 %i.al, 64
  %or.cond.i20 = select i1 %i.aj, i1 true, i1 %i.am, !prof !157
  br i1 %or.cond.i20, label %.critedge.i25, label %_ZNK8V3Number8toDoubleEv.exit26, !prof !157

.critedge.i25:                                    ; preds = %_ZNK8V3Number8toDoubleEv.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ap) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit26:                  ; preds = %_ZNK8V3Number8toDoubleEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.ar to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %i.as = load i32, ptr %0, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.as to i64
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.at = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.au = load i32, ptr %1, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i21 = zext i32 %i.au to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i22 = zext i32 %i.aw to i64
  %.sroa.0.4.insert.shift.i23 = shl nuw i64 %.sroa.0.4.insert.ext.i22, 32
  %.sroa.0.4.insert.insert.i24 = or disjoint i64 %.sroa.0.4.insert.shift.i23, %.sroa.0.0.insert.ext.i21
  %i.ax = bitcast i64 %.sroa.0.4.insert.insert.i24 to double
  %i.ay = fcmp oeq double %i.at, %i.ax
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !47 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !47
  %.not = icmp eq i32 %i.ba, %i.bc
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h
  %i.bd = add nuw nsw i32 %i.ba, 31
  %4 = lshr i32 %i.bd, 5
  %i.be = icmp slt i32 %i.ba, 1
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bf = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.bf, 2
  %i.bg = icmp samesign ult i32 %i.ba, 129        ; 2 uses
  %i.bh = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.bg, ptr %0, ptr %i.bh
  %i.bi = load ptr, ptr %1, align 8
  %spec.select.i28 = select i1 %i.bg, ptr %1, ptr %i.bi
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.i, !prof !49

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = add i8 %i.bk, -1
  %spec.select.i.i27 = icmp ult i8 %i.bl, 2
  br i1 %spec.select.i.i27, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.j, !prof !49

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph.split
  %smax = tail call i32 @llvm.umax.i32(i32 %4, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i28, i64 %indvars.iv
  %i.bo = load <2 x i32>, ptr %i.bm, align 4
  %i.bp = load <2 x i32>, ptr %i.bn, align 4
  %i.bq = icmp eq <2 x i32> %i.bo, %i.bp          ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 0
  %i.bs = extractelement <2 x i1> %i.bq, i64 1
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.bt, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %_ZNK12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !441

bb.i:                                             ; preds = %.lr.ph
  %i.bu = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.bv = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.118)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bx) #32
  unreachable

bb.j:                                             ; preds = %.lr.ph.split
  %i.by = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.118)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %i.bj)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cb) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %bb.h, %_ZNK8V3Number8toDoubleEv.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.1 = phi i1 [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.ay, %_ZNK8V3Number8toDoubleEv.exit26 ], [ false, %bb.h ], [ true, %.preheader ], [ %i.bt, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData9ValueAndXeqERKS0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = icmp eq <2 x i32> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opCaseEqERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not6 = or i1 %i.a, %i.b
  br i1 %.not6, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1844) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK8V3Number8isCaseEqERKS_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.g = zext i1 %i.f to i8
  %i.h = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13setSingleBitsEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %i.g) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opCaseNeqERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not23 = or i1 %i.a, %i.b
  br i1 %.not23, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1850) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  switch i8 %i.g, label %.preheader [
    i8 3, label %bb.d
    i8 2, label %bb.e
  ]

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !47
  %i.k = load i32, ptr %i.i, align 8, !tbaa !47
  %.sroa.speculated27 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.k)
  %i.l = icmp sgt i32 %.sroa.speculated27, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opNeqNERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opNeqDERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i32 %.028, 1                 ; 2 uses
  %i.p = load i32, ptr %i.h, align 8, !tbaa !47
  %i.q = load i32, ptr %i.i, align 8, !tbaa !47
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q)
  %i.r = icmp slt i32 %i.o, %.sroa.speculated
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !442

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.028 = phi i32 [ %i.o, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.s = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %.028)
  %i.t = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.028)
  %.not = icmp eq i8 %i.s, %i.t
  br i1 %.not, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.f, %.preheader
  %.020 = phi i8 [ 0, %.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13setSingleBitsEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %.020) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opWildEqERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not25 = or i1 %i.a, %i.b
  br i1 %.not25, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1868) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1869) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not26 = icmp eq i8 %i.n, 1
  br i1 %.not26, label %.preheader, label %bb.f, !prof !49

.preheader:                                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !47
  %.fr.i3049 = freeze i32 %i.q                    ; 2 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !47
  %.fr.i50 = freeze i32 %i.r                      ; 2 uses
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %.fr.i3049, i32 %.fr.i50)
  %i.s = icmp sgt i32 %.sroa.speculated51, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1869) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.74)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.x) #32
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.y = phi i32 [ %.fr.i, %bb.g ], [ %.fr.i50, %.preheader ] ; 5 uses
  %i.z = phi i32 [ %.fr.i30, %bb.g ], [ %.fr.i3049, %.preheader ] ; 5 uses
  %.02152 = phi i32 [ %i.bg, %bb.g ], [ 0, %.preheader ] ; 7 uses
  %i.aa = load i8, ptr %i.m, align 4, !tbaa !48
  %i.ab = add i8 %i.aa, -3
  %spec.select.i.i = icmp ult i8 %i.ab, -2
end_hunk_4
