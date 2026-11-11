Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfCheckFile?download=true
inline.NumInlined: 1092
inline.NumDeleted: 575
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a
  br i1 %i.adm, label %bb.ho, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.adn = sub i64 %i.adi, %i.ada                 ; 2 uses
  %.not.i.i215.us.i = icmp ult i64 %i.adn, 9223372036854775804
  %i.ado = ashr exact i64 %i.adn, 1
  %.sroa.speculated.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.ado, i64 %.0136.lcssa.us.i)
  %.0.i.i.us.i = select i1 %.not.i.i215.us.i, i64 %.sroa.speculated.i.i.us.i, i64 4611686018427387903 ; 3 uses
  %i.adp = icmp ugt i64 %.0.i.i.us.i, 4611686018427387903
  br i1 %i.adp, label %bb.hn, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us.i: ; preds = %bb.hk
  %i.adq = shl nuw i64 %.0.i.i.us.i, 2
  %i.adr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adq) #28
          to label %bb.hl unwind label %bb.hp     ; 3 uses

bb.hl:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us.i
  %i.ads = ptrtoaddr ptr %i.adr to i64
  %.pre.i.us.i = load ptr, ptr %i.p, align 8, !tbaa !129 ; 6 uses
  %.pre.i.us.i703 = ptrtoaddr ptr %.pre.i.us.i to i64 ; 2 uses
  %.pre11.i.us.i = load ptr, ptr %6, align 8, !tbaa !130 ; 6 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adb ; 7 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %.0.i.i.us.i
  %.idx.i8.i.us.i = shl nuw i64 %i.adg, 2         ; 2 uses
  %i.adv = getelementptr i8, ptr %i.adt, i64 %.idx.i8.i.us.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.adt, i8 0, i64 %.idx.i8.i.us.i, i1 false), !tbaa !104
  %.not4.i.i.i.i.i.i.i.i.us.i = icmp eq ptr %.pre.i.us.i, %.pre11.i.us.i
  br i1 %.not4.i.i.i.i.i.i.i.i.us.i, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader:            ; preds = %bb.hl
  %.pre11.i.us.i702 = ptrtoaddr ptr %.pre11.i.us.i to i64
  %i.adw = add i64 %.pre.i.us.i703, -4
  %i.adx = sub i64 %i.adw, %.pre11.i.us.i702      ; 2 uses
  %i.ady = lshr i64 %i.adx, 2
  %i.adz = add nuw nsw i64 %i.ady, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.adx, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader
  %i.aea = add i64 %.pre.i.us.i703, %i.ada
  %i.aeb = add i64 %i.acz, %i.ads
  %i.aec = sub i64 %i.aeb, %i.aea
  %diff.check = icmp ugt i64 %i.aec, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.adz, 9223372036854775800    ; 3 uses
  %i.aed = mul i64 %n.vec, -4                     ; 2 uses
  %i.aee = getelementptr i8, ptr %i.adt, i64 %i.aed ; 2 uses
  %i.aef = getelementptr i8, ptr %.pre.i.us.i, i64 %i.aed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aeg = mul i64 %index, -4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.adt, i64 %i.aeg ; 2 uses
  %next.gep704 = getelementptr i8, ptr %.pre.i.us.i, i64 %i.aeg ; 2 uses
  %i.aeh = getelementptr inbounds i8, ptr %next.gep704, i64 -16
  %i.aei = getelementptr inbounds i8, ptr %next.gep704, i64 -32
  %wide.load = load <4 x float>, ptr %i.aeh, align 4, !tbaa !104, !noalias !277
  %wide.load705 = load <4 x float>, ptr %i.aei, align 4, !tbaa !104, !noalias !277
  %i.aej = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aek = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x float> %wide.load, ptr %i.aej, align 4, !tbaa !104, !noalias !277
  store <4 x float> %wide.load705, ptr %i.aek, align 4, !tbaa !104, !noalias !277
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ael = icmp eq i64 %index.next, %n.vec
  br i1 %i.ael, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adz, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710

.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader, %middle.block
  %.ph = phi ptr [ %i.adt, %vector.memcheck ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.aee, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.us.i.ph = phi ptr [ %.pre.i.us.i, %vector.memcheck ], [ %.pre.i.us.i, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.aef, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.i.i.us.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710, %.lr.ph.i.i.i.i.i.i.i.i.us.i
  %i.aem = phi ptr [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i.us.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.us.i = phi ptr [ %i.aen, %.lr.ph.i.i.i.i.i.i.i.i.us.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader710 ]
  %i.aen = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.us.i, i64 -4 ; 3 uses
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !104, !noalias !277
  %i.aep = getelementptr inbounds i8, ptr %i.aem, i64 -4 ; 3 uses
  store float %i.aeo, ptr %i.aep, align 4, !tbaa !104, !noalias !277
  %.not.i.i.i.i.i.i.i.i.us.i = icmp eq ptr %i.aen, %.pre11.i.us.i
  br i1 %.not.i.i.i.i.i.i.i.i.us.i, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i, !llvm.loop !265

_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i, %middle.block, %bb.hl
  %.sroa.436.0.i.i.i.i.i.i.i.us.i = phi ptr [ %i.adt, %bb.hl ], [ %i.aee, %middle.block ], [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i.us.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.us.i, ptr %6, align 8, !tbaa !132
  store ptr %i.adv, ptr %i.p, align 8, !tbaa !132
  %i.aeq = load ptr, ptr %i.q, align 8, !tbaa !132
  store ptr %i.adu, ptr %i.q, align 8, !tbaa !132
  %.not.i9.i.us.i = icmp eq ptr %.pre11.i.us.i, null
  br i1 %.not.i9.i.us.i, label %.preheader287.lr.ph.split.us.i, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us.i
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %.pre11.i.us.i to i64
  %i.aet = sub i64 %i.aer, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %.pre11.i.us.i, i64 noundef %i.aet) #24
  br label %.preheader287.lr.ph.split.us.i

.preheader287.lr.ph.split.us.i:                   ; preds = %bb.hg, %bb.hh, %.lr.ph.preheader.i.i.us.i, %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us.i, %bb.hm
  br i1 %1, label %.preheader287.us.us.i.preheader, label %.preheader287.lr.ph.split.split.us445.i

.preheader287.us.us.i.preheader:                  ; preds = %.preheader287.lr.ph.split.us.i
  br i1 %i.xx, label %._crit_edge403.split.us.i, label %.preheader287.us.us.i

.preheader287.lr.ph.split.split.us445.i:          ; preds = %.preheader287.lr.ph.split.us.i
  br i1 %i.xx, label %._crit_edge403.split.us.i, label %.preheader287.us407.us.i

.preheader287.us407.us.i:                         ; preds = %.preheader287.lr.ph.split.split.us445.i, %._crit_edge387.split.split.us.us.us.i
  %indvars.iv550.i = phi i64 [ %indvars.iv.next551.i, %._crit_edge387.split.split.us.us.us.i ], [ 0, %.preheader287.lr.ph.split.split.us445.i ] ; 5 uses
  %.0131401.us409.us.i = phi i64 [ %.lcssa793, %._crit_edge387.split.split.us.us.us.i ], [ 0, %.preheader287.lr.ph.split.split.us445.i ]
  %i.aeu = mul nuw nsw i64 %indvars.iv550.i, %i.xi
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.aeu
  br label %.lr.ph382.us392.us.us.i

.lr.ph382.us392.us.us.i:                          ; preds = %..loopexit_crit_edge.us395.us.us.i, %.preheader287.us407.us.i
  %indvars.iv545.i = phi i64 [ %indvars.iv.next546.i, %..loopexit_crit_edge.us395.us.us.i ], [ 0, %.preheader287.us407.us.i ] ; 5 uses
  %.1383.us391.us.us.i = phi i64 [ %.lcssa793, %..loopexit_crit_edge.us395.us.us.i ], [ %.0131401.us409.us.i, %.preheader287.us407.us.i ] ; 2 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv545.i
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !17
  %i.aey = zext i32 %i.aex to i64                 ; 3 uses
  br i1 %i.zx, label %.epil.preheader853, label %.lr.ph382.us392.us.us.i.new

.lr.ph382.us392.us.us.i.new:                      ; preds = %.lr.ph382.us392.us.us.i, %.lr.ph382.us392.us.us.i.new
  %indvars.iv539.i = phi i64 [ %indvars.iv.next540.i.1, %.lr.ph382.us392.us.us.i.new ], [ 0, %.lr.ph382.us392.us.us.i ] ; 3 uses
  %.2379.us394.us.us.i = phi i64 [ %i.afu, %.lr.ph382.us392.us.us.i.new ], [ %.1383.us391.us.us.i, %.lr.ph382.us392.us.us.i ] ; 2 uses
  %niter860 = phi i64 [ %niter860.next.1, %.lr.ph382.us392.us.us.i.new ], [ 0, %.lr.ph382.us392.us.us.i ]
  %i.aez = load ptr, ptr %6, align 8, !tbaa !130
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %.2379.us394.us.us.i
  %i.afb = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv539.i ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !135
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !137
  %i.afg = mul nsw i64 %i.aff, %indvars.iv550.i
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %i.afg
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %indvars.iv545.i
  store ptr %i.afa, ptr %i.afi, align 8, !tbaa !132
  %i.afj = add i64 %.2379.us394.us.us.i, %i.aey   ; 2 uses
  %i.afk = load ptr, ptr %6, align 8, !tbaa !130
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.afj
  %i.afm = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv539.i ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 40
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !135
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 32
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !137
  %i.afr = mul nsw i64 %i.afq, %indvars.iv550.i
  %i.afs = getelementptr inbounds [8 x i8], ptr %i.afo, i64 %i.afr
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv545.i
  store ptr %i.afl, ptr %i.aft, align 8, !tbaa !132
  %i.afu = add i64 %i.afj, %i.aey                 ; 3 uses
  %indvars.iv.next540.i.1 = add nuw nsw i64 %indvars.iv539.i, 2 ; 2 uses
  %niter860.next.1 = add i64 %niter860, 2         ; 2 uses
  %niter860.ncmp.1 = icmp eq i64 %niter860.next.1, %unroll_iter859
  br i1 %niter860.ncmp.1, label %..loopexit_crit_edge.us395.us.us.i.unr-lcssa, label %.lr.ph382.us392.us.us.i.new, !llvm.loop !266

..loopexit_crit_edge.us395.us.us.i.unr-lcssa:     ; preds = %.lr.ph382.us392.us.us.i.new
  br i1 %lcmp.mod856.not, label %..loopexit_crit_edge.us395.us.us.i, label %.epil.preheader853

.epil.preheader853:                               ; preds = %..loopexit_crit_edge.us395.us.us.i.unr-lcssa, %.lr.ph382.us392.us.us.i
  %indvars.iv539.i.epil.init = phi i64 [ 0, %.lr.ph382.us392.us.us.i ], [ %indvars.iv.next540.i.1, %..loopexit_crit_edge.us395.us.us.i.unr-lcssa ]
  %.2379.us394.us.us.i.epil.init = phi i64 [ %.1383.us391.us.us.i, %.lr.ph382.us392.us.us.i ], [ %i.afu, %..loopexit_crit_edge.us395.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod858)
  %i.afv = load ptr, ptr %6, align 8, !tbaa !130
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %.2379.us394.us.us.i.epil.init
  %i.afx = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv539.i.epil.init ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !135
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !137
  %i.agc = mul nsw i64 %i.agb, %indvars.iv550.i
  %i.agd = getelementptr inbounds [8 x i8], ptr %i.afz, i64 %i.agc
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %indvars.iv545.i
  store ptr %i.afw, ptr %i.age, align 8, !tbaa !132
  %i.agf = add i64 %.2379.us394.us.us.i.epil.init, %i.aey
  br label %..loopexit_crit_edge.us395.us.us.i

..loopexit_crit_edge.us395.us.us.i:               ; preds = %..loopexit_crit_edge.us395.us.us.i.unr-lcssa, %.epil.preheader853
  %.lcssa793 = phi i64 [ %i.afu, %..loopexit_crit_edge.us395.us.us.i.unr-lcssa ], [ %i.agf, %.epil.preheader853 ] ; 2 uses
  %indvars.iv.next546.i = add nuw nsw i64 %indvars.iv545.i, 1 ; 2 uses
  %exitcond549.not.i = icmp eq i64 %indvars.iv.next546.i, %wide.trip.count517.i
  br i1 %exitcond549.not.i, label %._crit_edge387.split.split.us.us.us.i, label %.lr.ph382.us392.us.us.i, !llvm.loop !267

._crit_edge387.split.split.us.us.us.i:            ; preds = %..loopexit_crit_edge.us395.us.us.i
  %indvars.iv.next551.i = add nuw nsw i64 %indvars.iv550.i, 1 ; 2 uses
  %exitcond554.not.i = icmp eq i64 %indvars.iv.next551.i, %wide.trip.count522.i
  br i1 %exitcond554.not.i, label %._crit_edge403.split.us.i, label %.preheader287.us407.us.i, !llvm.loop !268

.preheader287.us.us.i:                            ; preds = %.preheader287.us.us.i.preheader, %._crit_edge387.split.us.us.us.i.loopexit
  %indvars.iv583.i = phi i64 [ %indvars.iv.next584.i, %._crit_edge387.split.us.us.us.i.loopexit ], [ 0, %.preheader287.us.us.i.preheader ] ; 8 uses
  %.0131401.us.us.i = phi i64 [ %.3.us.us.us.us.i, %._crit_edge387.split.us.us.us.i.loopexit ], [ 0, %.preheader287.us.us.i.preheader ]
  %i.agg = mul nuw nsw i64 %indvars.iv583.i, %i.xi
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.agg
  br label %.lr.ph386.split.us.us.split.us.us.i

.lr.ph386.split.us.us.split.us.us.i:              ; preds = %.preheader287.us.us.i, %.loopexit286.us.us.us.us.i
  %indvars.iv567.i = phi i64 [ %indvars.iv.next568.i, %.loopexit286.us.us.us.us.i ], [ 0, %.preheader287.us.us.i ] ; 8 uses
  %.1383.us.us.us.us.i = phi i64 [ %.3.us.us.us.us.i, %.loopexit286.us.us.us.us.i ], [ %.0131401.us.us.i, %.preheader287.us.us.i ] ; 4 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %indvars.iv567.i
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !17 ; 2 uses
  %i.agk = mul i32 %i.agj, %i.wz
  %i.agl = icmp ult i32 %i.agk, 1000
  br i1 %i.agl, label %.lr.ph382.us.us.us.us.i, label %.lr.ph378.us.us.us.us.i.preheader

.lr.ph378.us.us.us.us.i.preheader:                ; preds = %.lr.ph386.split.us.us.split.us.us.i
  br i1 %i.zy, label %.lr.ph378.us.us.us.us.i.epil.preheader, label %.lr.ph378.us.us.us.us.i

.lr.ph378.us.us.us.us.i:                          ; preds = %.lr.ph378.us.us.us.us.i.preheader, %.lr.ph378.us.us.us.us.i
  %indvars.iv555.i = phi i64 [ %indvars.iv.next556.i.1, %.lr.ph378.us.us.us.us.i ], [ 0, %.lr.ph378.us.us.us.us.i.preheader ] ; 3 uses
  %niter866 = phi i64 [ %niter866.next.1, %.lr.ph378.us.us.us.us.i ], [ 0, %.lr.ph378.us.us.us.us.i.preheader ]
  %i.agm = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv555.i ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !135
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !137
  %i.agr = mul nsw i64 %i.agq, %indvars.iv583.i
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.ago, i64 %i.agr
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %indvars.iv567.i
  store ptr null, ptr %i.agt, align 8, !tbaa !132
  %i.agu = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv555.i ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 40
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !135
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !137
  %i.agz = mul nsw i64 %i.agy, %indvars.iv583.i
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.agw, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %indvars.iv567.i
  store ptr null, ptr %i.ahb, align 8, !tbaa !132
  %indvars.iv.next556.i.1 = add nuw nsw i64 %indvars.iv555.i, 2 ; 2 uses
  %niter866.next.1 = add i64 %niter866, 2         ; 2 uses
  %niter866.ncmp.1 = icmp eq i64 %niter866.next.1, %unroll_iter865
  br i1 %niter866.ncmp.1, label %.loopexit286.us.us.us.us.i.loopexit707.unr-lcssa, label %.lr.ph378.us.us.us.us.i, !llvm.loop !269

.lr.ph382.us.us.us.us.i:                          ; preds = %.lr.ph386.split.us.us.split.us.us.i
  %i.ahc = zext i32 %i.agj to i64                 ; 3 uses
  br i1 %i.zz, label %.epil.preheader867, label %.lr.ph382.us.us.us.us.i.new

.lr.ph382.us.us.us.us.i.new:                      ; preds = %.lr.ph382.us.us.us.us.i, %.lr.ph382.us.us.us.us.i.new
  %indvars.iv561.i = phi i64 [ %indvars.iv.next562.i.1, %.lr.ph382.us.us.us.us.i.new ], [ 0, %.lr.ph382.us.us.us.us.i ] ; 3 uses
  %.2379.us.us.us.us.i = phi i64 [ %i.ahy, %.lr.ph382.us.us.us.us.i.new ], [ %.1383.us.us.us.us.i, %.lr.ph382.us.us.us.us.i ] ; 2 uses
  %niter874 = phi i64 [ %niter874.next.1, %.lr.ph382.us.us.us.us.i.new ], [ 0, %.lr.ph382.us.us.us.us.i ]
  %i.ahd = load ptr, ptr %6, align 8, !tbaa !130
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %.2379.us.us.us.us.i
  %i.ahf = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv561.i ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !135
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahj = load i64, ptr %i.ahi, align 8, !tbaa !137
  %i.ahk = mul nsw i64 %i.ahj, %indvars.iv583.i
  %i.ahl = getelementptr inbounds [8 x i8], ptr %i.ahh, i64 %i.ahk
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %indvars.iv567.i
  store ptr %i.ahe, ptr %i.ahm, align 8, !tbaa !132
  %i.ahn = add i64 %.2379.us.us.us.us.i, %i.ahc   ; 2 uses
  %i.aho = load ptr, ptr %6, align 8, !tbaa !130
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ahn
  %i.ahq = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv561.i ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 40
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !135
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 32
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !137
  %i.ahv = mul nsw i64 %i.ahu, %indvars.iv583.i
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.ahs, i64 %i.ahv
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %indvars.iv567.i
  store ptr %i.ahp, ptr %i.ahx, align 8, !tbaa !132
  %i.ahy = add i64 %i.ahn, %i.ahc                 ; 3 uses
  %indvars.iv.next562.i.1 = add nuw nsw i64 %indvars.iv561.i, 2 ; 2 uses
  %niter874.next.1 = add i64 %niter874, 2         ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %.loopexit286.us.us.us.us.i.loopexit.unr-lcssa, label %.lr.ph382.us.us.us.us.i.new, !llvm.loop !266

.loopexit286.us.us.us.us.i.loopexit.unr-lcssa:    ; preds = %.lr.ph382.us.us.us.us.i.new
  br i1 %lcmp.mod870.not, label %.loopexit286.us.us.us.us.i, label %.epil.preheader867

.epil.preheader867:                               ; preds = %.loopexit286.us.us.us.us.i.loopexit.unr-lcssa, %.lr.ph382.us.us.us.us.i
  %indvars.iv561.i.epil.init = phi i64 [ 0, %.lr.ph382.us.us.us.us.i ], [ %indvars.iv.next562.i.1, %.loopexit286.us.us.us.us.i.loopexit.unr-lcssa ]
  %.2379.us.us.us.us.i.epil.init = phi i64 [ %.1383.us.us.us.us.i, %.lr.ph382.us.us.us.us.i ], [ %i.ahy, %.loopexit286.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod872)
  %i.ahz = load ptr, ptr %6, align 8, !tbaa !130
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %.2379.us.us.us.us.i.epil.init
  %i.aib = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv561.i.epil.init ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !135
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !137
  %i.aig = mul nsw i64 %i.aif, %indvars.iv583.i
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.aid, i64 %i.aig
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %indvars.iv567.i
  store ptr %i.aia, ptr %i.aii, align 8, !tbaa !132
  %i.aij = add i64 %.2379.us.us.us.us.i.epil.init, %i.ahc
  br label %.loopexit286.us.us.us.us.i

.loopexit286.us.us.us.us.i.loopexit707.unr-lcssa: ; preds = %.lr.ph378.us.us.us.us.i
  br i1 %lcmp.mod863.not, label %.loopexit286.us.us.us.us.i, label %.lr.ph378.us.us.us.us.i.epil.preheader

.lr.ph378.us.us.us.us.i.epil.preheader:           ; preds = %.loopexit286.us.us.us.us.i.loopexit707.unr-lcssa, %.lr.ph378.us.us.us.us.i.preheader
  %indvars.iv555.i.epil.init = phi i64 [ 0, %.lr.ph378.us.us.us.us.i.preheader ], [ %indvars.iv.next556.i.1, %.loopexit286.us.us.us.us.i.loopexit707.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod864)
  %i.aik = getelementptr inbounds nuw [24 x i8], ptr %i.xw, i64 %indvars.iv555.i.epil.init ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 16
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !135
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !137
  %i.aip = mul nsw i64 %i.aio, %indvars.iv583.i
  %i.aiq = getelementptr inbounds [8 x i8], ptr %i.aim, i64 %i.aip
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %indvars.iv567.i
  store ptr null, ptr %i.air, align 8, !tbaa !132
  br label %.loopexit286.us.us.us.us.i

.loopexit286.us.us.us.us.i:                       ; preds = %.lr.ph378.us.us.us.us.i.epil.preheader, %.loopexit286.us.us.us.us.i.loopexit707.unr-lcssa, %.epil.preheader867, %.loopexit286.us.us.us.us.i.loopexit.unr-lcssa
  %.3.us.us.us.us.i = phi i64 [ %i.aij, %.epil.preheader867 ], [ %i.ahy, %.loopexit286.us.us.us.us.i.loopexit.unr-lcssa ], [ %.1383.us.us.us.us.i, %.loopexit286.us.us.us.us.i.loopexit707.unr-lcssa ], [ %.1383.us.us.us.us.i, %.lr.ph378.us.us.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next568.i = add nuw nsw i64 %indvars.iv567.i, 1 ; 2 uses
  %exitcond571.not.i = icmp eq i64 %indvars.iv.next568.i, %wide.trip.count517.i
  br i1 %exitcond571.not.i, label %._crit_edge387.split.us.us.us.i.loopexit, label %.lr.ph386.split.us.us.split.us.us.i, !llvm.loop !267

._crit_edge387.split.us.us.us.i.loopexit:         ; preds = %.loopexit286.us.us.us.us.i
  %indvars.iv.next584.i = add nuw nsw i64 %indvars.iv583.i, 1 ; 2 uses
  %exitcond587.not.i = icmp eq i64 %indvars.iv.next584.i, %wide.trip.count522.i
  br i1 %exitcond587.not.i, label %._crit_edge403.split.us.i, label %.preheader287.us.us.i, !llvm.loop !268

._crit_edge403.split.us.i:                        ; preds = %._crit_edge387.split.split.us.us.us.i, %._crit_edge387.split.us.us.us.i.loopexit, %.preheader287.us.us.i.preheader, %.preheader287.lr.ph.split.split.us445.i
  invoke void @_ZN7Imf_3_418DeepTiledInputPart8readTileEiiii(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %.0139.us.i, i32 noundef %.0140.us.i, i32 noundef %.0141424.us.i, i32 noundef %.0146429.us.i)
          to label %._crit_edge363.us.thread.i unwind label %bb.hp

bb.hn:                                            ; preds = %bb.hk
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #27
          to label %.noexc217.split.us.unreachable.i unwind label %bb.hp

bb.ho:                                            ; preds = %bb.hj
  invoke void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
          to label %.noexc216.split.us.unreachable.i unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge403.split.us.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us.i, %bb.hb
  %i.ais = landingpad { ptr, i32 }
          catch ptr null
  %.4159.us.i = extractvalue { ptr, i32 } %i.ais, 0
  %i.ait = call ptr @__cxa_begin_catch(ptr %.4159.us.i) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.hq unwind label %.loopexit291.split.us.loopexit.split-lp.i.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hq:                                            ; preds = %bb.hp
  %.3164.mux.us.i = select i1 %or.cond.not274.not277.us.i, i1 true, i1 %.3164.us.i
  br i1 %brmerge.not.us.i202, label %.loopexit292.i, label %._crit_edge363.us.thread.i

._crit_edge363.us.thread.i:                       ; preds = %bb.hq, %._crit_edge403.split.us.i, %bb.he, %._crit_edge363.us.i
  %.6167.us.i = phi i1 [ %.3164.mux.us.i, %bb.hq ], [ %.3164.us.i, %._crit_edge403.split.us.i ], [ %.3164.us.i, %bb.he ], [ %.3164.us.i, %._crit_edge363.us.i ]
  %i.aiu = add nuw nsw i32 %.0139.us.i, 1
  br label %.preheader290.us.i, !llvm.loop !250

.thread.us.i.split:                               ; preds = %bb.ha
  %i.aiv = add nuw nsw i32 %.0140.us.i, 1
  br label %bb.gy, !llvm.loop !251

.thread252.us.i.split:                            ; preds = %bb.gz
  %i.aiw = add nuw nsw i32 %.0141424.us.i, 1      ; 2 uses
  %exitcond588.not.i = icmp eq i32 %i.aiw, %i.xg
  br i1 %exitcond588.not.i, label %..thread257_crit_edge.us.i, label %.preheader293.us.i, !llvm.loop !252

..thread257_crit_edge.us.i:                       ; preds = %.thread252.us.i.split, %.thread252.us.i.split.us.us
  %.us-phi398 = phi i1 [ %.us-phi380.us, %.thread252.us.i.split.us.us ], [ %.2163.us.i, %.thread252.us.i.split ] ; 2 uses
  %i.aix = add nuw nsw i32 %.0146429.us.i, 1      ; 2 uses
  %exitcond589.not.i = icmp eq i32 %i.aix, %i.xf
  br i1 %exitcond589.not.i, label %.loopexit292.i, label %.preheader294.us.i, !llvm.loop !270

.noexc217.split.us.unreachable.i:                 ; preds = %bb.hn
  unreachable

.noexc216.split.us.unreachable.i:                 ; preds = %bb.ho
  unreachable

.loopexit.split-lp299.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.gg, %bb.gj, %bb.gf, %bb.ge, %._crit_edge.i195
  %lpad.loopexit.split-lp755 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i196

bb.hr:                                            ; preds = %.loopexit291.split.us.loopexit.split-lp.i.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store ptr %i.aaq, ptr %i.p, align 8, !tbaa !129
  %i.aiy = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.aiz = ptrtoint ptr %i.aiy to i64
  %i.aja = ptrtoint ptr %i.aaq to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  call void @_ZdlPvm(ptr noundef nonnull %i.aaq, i64 noundef %i.ajb) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i205

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i205: ; preds = %bb.hr, %.loopexit291.split.us.loopexit.split-lp.i.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body.i196

.loopexit292.i:                                   ; preds = %..thread257_crit_edge.us.i, %bb.hq, %.split.us.split.us.split.us, %.preheader294.lr.ph.i
  %.not187343.ph.i = phi i1 [ true, %.split.us.split.us.split.us ], [ false, %.preheader294.lr.ph.i ], [ true, %bb.hq ], [ %.us-phi398, %..thread257_crit_edge.us.i ] ; 2 uses
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !130  ; 4 uses
  %.not.i.i206.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i206.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit207.i, label %bb.hs

bb.hs:                                            ; preds = %.loopexit292.i
  store ptr %.pr.i, ptr %i.p, align 8, !tbaa !129
  %i.ajc = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.ajd = ptrtoint ptr %i.ajc to i64
  %i.aje = ptrtoint ptr %.pr.i to i64
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %.thread.us, %.preheader293.us
  %.2163.us = phi i1 [ %.3164.us, %.thread.us ], [ %.1162422.us, %.preheader293.us ] ; 4 uses
  %.0140.us = phi i32 [ %i.kq, %.thread.us ], [ 0, %.preheader293.us ] ; 5 uses
  %i.cl = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0146429.us)
          to label %bb.af unwind label %.loopexit291.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %.not189.us = icmp slt i32 %.0140.us, %i.cl
  br i1 %.not189.us, label %.preheader290.us, label %.thread252.us

.preheader290.us:                                 ; preds = %bb.af, %._crit_edge363.us.thread
  %.3164.us = phi i1 [ %.6167.us, %._crit_edge363.us.thread ], [ %.2163.us, %bb.af ] ; 6 uses
  %.0139.us = phi i32 [ %i.kp, %._crit_edge363.us.thread ], [ 0, %bb.af ] ; 5 uses
  %i.cm = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0141424.us)
          to label %bb.ag unwind label %.loopexit291.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %.preheader290.us
  %.not186.us = icmp slt i32 %.0139.us, %i.cm
  br i1 %.not186.us, label %bb.ah, label %.thread.us

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7Imf_3_418DeepTiledInputFile21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0139.us, i32 noundef %.0140.us, i32 noundef %.0139.us, i32 noundef %.0140.us, i32 noundef %.0141424.us, i32 noundef %.0146429.us)
          to label %.preheader289.us unwind label %bb.av

.preheader289.us:                                 ; preds = %bb.ah
  br i1 %brmerge635, label %._crit_edge363.us.thread, label %.preheader288.lr.ph.split.us.us

.preheader288.lr.ph.split.us.us:                  ; preds = %.preheader289.us
  br i1 %1, label %.preheader288.us.us.us, label %.preheader288.us.us438

.preheader288.us.us438:                           ; preds = %.preheader288.lr.ph.split.us.us, %._crit_edge357.split.us.us.us
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %._crit_edge357.split.us.us.us ], [ 0, %.preheader288.lr.ph.split.us.us ] ; 2 uses
  %.0134361.us.us440 = phi i64 [ %.lcssa, %._crit_edge357.split.us.us.us ], [ 0, %.preheader288.lr.ph.split.us.us ] ; 2 uses
  %.0136360.us.us441 = phi i64 [ %.2138.us.us.us.lcssa, %._crit_edge357.split.us.us.us ], [ 0, %.preheader288.lr.ph.split.us.us ] ; 2 uses
  %i.cn = mul nuw nsw i64 %indvars.iv519, %i.m
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cn ; 5 uses
  br i1 %i.cf, label %.epil.preheader, label %.preheader288.us.us438.new

.preheader288.us.us438.new:                       ; preds = %.preheader288.us.us438, %.preheader288.us.us438.new
  %indvars.iv514 = phi i64 [ %indvars.iv.next515.3, %.preheader288.us.us438.new ], [ 0, %.preheader288.us.us438 ] ; 5 uses
  %.1135354.us.us.us = phi i64 [ %i.dl, %.preheader288.us.us438.new ], [ %.0134361.us.us440, %.preheader288.us.us438 ]
  %.1137353.us.us.us = phi i64 [ %.2138.us.us.us.3, %.preheader288.us.us438.new ], [ %.0136360.us.us441, %.preheader288.us.us438 ]
  %niter = phi i64 [ %niter.next.3, %.preheader288.us.us438.new ], [ 0, %.preheader288.us.us438 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv514
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !17
  %i.cr = mul i32 %i.cq, %.0154
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = add i64 %.1135354.us.us.us, %i.cs
  %.2138.us.us.us = add i64 %.1137353.us.us.us, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv514
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = mul i32 %i.cw, %.0154
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = add i64 %i.ct, %i.cy
  %.2138.us.us.us.1 = add i64 %.2138.us.us.us, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv514
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !17
  %i.dd = mul i32 %i.dc, %.0154
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = add i64 %i.cz, %i.de
  %.2138.us.us.us.2 = add i64 %.2138.us.us.us.1, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv514
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !17
  %i.dj = mul i32 %i.di, %.0154
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = add i64 %i.df, %i.dk                    ; 3 uses
  %.2138.us.us.us.3 = add i64 %.2138.us.us.us.2, %i.dk ; 3 uses
  %indvars.iv.next515.3 = add nuw nsw i64 %indvars.iv514, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge357.split.us.us.us.unr-lcssa, label %.preheader288.us.us438.new, !llvm.loop !301

._crit_edge357.split.us.us.us.unr-lcssa:          ; preds = %.preheader288.us.us438.new
  br i1 %lcmp.mod.not, label %._crit_edge357.split.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge357.split.us.us.us.unr-lcssa, %.preheader288.us.us438
  %indvars.iv514.epil.init = phi i64 [ 0, %.preheader288.us.us438 ], [ %indvars.iv.next515.3, %._crit_edge357.split.us.us.us.unr-lcssa ]
  %.1135354.us.us.us.epil.init = phi i64 [ %.0134361.us.us440, %.preheader288.us.us438 ], [ %i.dl, %._crit_edge357.split.us.us.us.unr-lcssa ]
  %.1137353.us.us.us.epil.init = phi i64 [ %.0136360.us.us441, %.preheader288.us.us438 ], [ %.2138.us.us.us.3, %._crit_edge357.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod701)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader
  %indvars.iv514.epil = phi i64 [ %indvars.iv.next515.epil, %bb.ai ], [ %indvars.iv514.epil.init, %.epil.preheader ] ; 2 uses
  %.1135354.us.us.us.epil = phi i64 [ %i.dq, %bb.ai ], [ %.1135354.us.us.us.epil.init, %.epil.preheader ]
  %.1137353.us.us.us.epil = phi i64 [ %.2138.us.us.us.epil, %bb.ai ], [ %.1137353.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.ai ], [ 0, %.epil.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv514.epil
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !17
  %i.do = mul i32 %i.dn, %.0154
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = add i64 %.1135354.us.us.us.epil, %i.dp  ; 2 uses
  %.2138.us.us.us.epil = add i64 %.1137353.us.us.us.epil, %i.dp ; 2 uses
  %indvars.iv.next515.epil = add nuw nsw i64 %indvars.iv514.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge357.split.us.us.us, label %bb.ai, !llvm.loop !302

._crit_edge357.split.us.us.us:                    ; preds = %bb.ai, %._crit_edge357.split.us.us.us.unr-lcssa
  %.lcssa = phi i64 [ %i.dl, %._crit_edge357.split.us.us.us.unr-lcssa ], [ %i.dq, %bb.ai ] ; 2 uses
  %.2138.us.us.us.lcssa = phi i64 [ %.2138.us.us.us.3, %._crit_edge357.split.us.us.us.unr-lcssa ], [ %.2138.us.us.us.epil, %bb.ai ] ; 2 uses
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge363.us, label %.preheader288.us.us438, !llvm.loop !303

.preheader288.us.us.us:                           ; preds = %.preheader288.lr.ph.split.us.us, %._crit_edge357.split.us371.us.us
  %indvars.iv529 = phi i64 [ %indvars.iv.next530, %._crit_edge357.split.us371.us.us ], [ 0, %.preheader288.lr.ph.split.us.us ] ; 2 uses
  %.0134361.us.us.us = phi i64 [ %.lcssa676, %._crit_edge357.split.us371.us.us ], [ 0, %.preheader288.lr.ph.split.us.us ] ; 2 uses
  %.0136360.us.us.us = phi i64 [ %.2138.us370.us.us.lcssa, %._crit_edge357.split.us371.us.us ], [ 0, %.preheader288.lr.ph.split.us.us ] ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv529, %i.m
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dr ; 3 uses
  br i1 %i.cg, label %.epil.preheader702, label %.preheader288.us.us.us.new

.preheader288.us.us.us.new:                       ; preds = %.preheader288.us.us.us, %.preheader288.us.us.us.new
  %indvars.iv524 = phi i64 [ %indvars.iv.next525.1, %.preheader288.us.us.us.new ], [ 0, %.preheader288.us.us.us ] ; 3 uses
  %.1135354.us368.us.us = phi i64 [ %i.ef, %.preheader288.us.us.us.new ], [ %.0134361.us.us.us, %.preheader288.us.us.us ]
  %.1137353.us369.us.us = phi i64 [ %.2138.us370.us.us.1, %.preheader288.us.us.us.new ], [ %.0136360.us.us.us, %.preheader288.us.us.us ]
  %niter710 = phi i64 [ %niter710.next.1, %.preheader288.us.us.us.new ], [ 0, %.preheader288.us.us.us ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv524
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !17 ; 2 uses
  %i.dv = mul i32 %i.du, %.0154
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = add i64 %.1135354.us368.us.us, %i.dw
  %i.dy = mul i32 %i.du, %i.d
  %i.dz = icmp ugt i32 %i.dy, 4095
  %spec.select462 = select i1 %i.dz, i64 0, i64 %i.dw
  %.2138.us370.us.us = add i64 %spec.select462, %.1137353.us369.us.us
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv524
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !17 ; 2 uses
  %i.ed = mul i32 %i.ec, %.0154
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = add i64 %i.dx, %i.ee                    ; 3 uses
  %i.eg = mul i32 %i.ec, %i.d
  %i.eh = icmp ugt i32 %i.eg, 4095
  %spec.select462.1 = select i1 %i.eh, i64 0, i64 %i.ee
  %.2138.us370.us.us.1 = add i64 %spec.select462.1, %.2138.us370.us.us ; 3 uses
  %indvars.iv.next525.1 = add nuw nsw i64 %indvars.iv524, 2 ; 2 uses
  %niter710.next.1 = add i64 %niter710, 2         ; 2 uses
  %niter710.ncmp.1 = icmp eq i64 %niter710.next.1, %unroll_iter709
  br i1 %niter710.ncmp.1, label %._crit_edge357.split.us371.us.us.unr-lcssa, label %.preheader288.us.us.us.new, !llvm.loop !301

._crit_edge357.split.us371.us.us.unr-lcssa:       ; preds = %.preheader288.us.us.us.new
  br i1 %lcmp.mod705.not, label %._crit_edge357.split.us371.us.us, label %.epil.preheader702

.epil.preheader702:                               ; preds = %._crit_edge357.split.us371.us.us.unr-lcssa, %.preheader288.us.us.us
  %indvars.iv524.epil.init = phi i64 [ 0, %.preheader288.us.us.us ], [ %indvars.iv.next525.1, %._crit_edge357.split.us371.us.us.unr-lcssa ]
  %.1135354.us368.us.us.epil.init = phi i64 [ %.0134361.us.us.us, %.preheader288.us.us.us ], [ %i.ef, %._crit_edge357.split.us371.us.us.unr-lcssa ]
  %.1137353.us369.us.us.epil.init = phi i64 [ %.0136360.us.us.us, %.preheader288.us.us.us ], [ %.2138.us370.us.us.1, %._crit_edge357.split.us371.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod708)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv524.epil.init
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !17 ; 2 uses
  %i.ek = mul i32 %i.ej, %.0154
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = add i64 %.1135354.us368.us.us.epil.init, %i.el
  %i.en = mul i32 %i.ej, %i.d
  %i.eo = icmp ugt i32 %i.en, 4095
  %spec.select462.epil = select i1 %i.eo, i64 0, i64 %i.el
  %.2138.us370.us.us.epil = add i64 %spec.select462.epil, %.1137353.us369.us.us.epil.init
  br label %._crit_edge357.split.us371.us.us

._crit_edge357.split.us371.us.us:                 ; preds = %._crit_edge357.split.us371.us.us.unr-lcssa, %.epil.preheader702
  %.lcssa676 = phi i64 [ %i.ef, %._crit_edge357.split.us371.us.us.unr-lcssa ], [ %i.em, %.epil.preheader702 ] ; 2 uses
  %.2138.us370.us.us.lcssa = phi i64 [ %.2138.us370.us.us.1, %._crit_edge357.split.us371.us.us.unr-lcssa ], [ %.2138.us370.us.us.epil, %.epil.preheader702 ] ; 2 uses
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond533.not = icmp eq i64 %indvars.iv.next530, %wide.trip.count532
  br i1 %exitcond533.not, label %._crit_edge363.us, label %.preheader288.us.us.us, !llvm.loop !303

._crit_edge363.us:                                ; preds = %._crit_edge357.split.us.us.us, %._crit_edge357.split.us371.us.us
  %.0136.lcssa.us = phi i64 [ %.2138.us370.us.us.lcssa, %._crit_edge357.split.us371.us.us ], [ %.2138.us.us.us.lcssa, %._crit_edge357.split.us.us.us ] ; 8 uses
  %.0134.lcssa.us = phi i64 [ %.lcssa676, %._crit_edge357.split.us371.us.us ], [ %.lcssa, %._crit_edge357.split.us.us.us ]
  %.not.us = icmp eq i64 %.0136.lcssa.us, 0
  br i1 %.not.us, label %._crit_edge363.us.thread, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge363.us
  br i1 %1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ep = add i64 %.0134.lcssa.us, %.0136.lcssa.us
  %i.eq = mul i64 %i.ep, %i.by
  %i.er = icmp ult i64 %i.eq, 1000
  br i1 %i.er, label %bb.al, label %._crit_edge363.us.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.es = load ptr, ptr %i.bz, align 8, !tbaa !129 ; 3 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.ev = ptrtoint ptr %i.et to i64               ; 3 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 2                 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %.0136.lcssa.us
  br i1 %i.ey, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = icmp ugt i64 %i.ex, %.0136.lcssa.us
  br i1 %i.ez, label %bb.an, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.0136.lcssa.us
  store ptr %i.fa, ptr %i.bz, align 8, !tbaa !129
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a

bb.ao:                                            ; preds = %bb.al
  %i.fb = sub nuw i64 %.0136.lcssa.us, %i.ex      ; 3 uses
  %i.fc = load ptr, ptr %i.ca, align 8, !tbaa !132
  %i.fd = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fe = sub i64 %i.fd, %i.eu
  %i.ff = ashr exact i64 %i.fe, 2
  %.not.i.us = icmp ult i64 %i.ff, %i.fb
  br i1 %.not.i.us, label %bb.ap, label %.lr.ph.preheader.i.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.ao
  %.idx.i.i.us = shl i64 %i.fb, 2                 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.es, i64 %.idx.i.i.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.es, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !104
  store ptr %i.fg, ptr %i.bz, align 8, !tbaa !129
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a

bb.ap:                                            ; preds = %bb.ao
  %i.fh = icmp ugt i64 %.0136.lcssa.us, 4611686018427387903
  br i1 %i.fh, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = sub i64 %i.fd, %i.ev                    ; 2 uses
  %.not.i.i215.us = icmp ult i64 %i.fi, 9223372036854775804
  %i.fj = ashr exact i64 %i.fi, 1
  %.sroa.speculated.i.i.us = call i64 @llvm.umax.i64(i64 %i.fj, i64 %.0136.lcssa.us)
  %.0.i.i.us = select i1 %.not.i.i215.us, i64 %.sroa.speculated.i.i.us, i64 4611686018427387903 ; 3 uses
  %i.fk = icmp ugt i64 %.0.i.i.us, 4611686018427387903
  br i1 %i.fk, label %bb.at, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us: ; preds = %bb.aq
  %i.fl = shl nuw i64 %.0.i.i.us, 2
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #28
          to label %bb.ar unwind label %bb.av     ; 3 uses

bb.ar:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %.pre.i.us = load ptr, ptr %i.bz, align 8, !tbaa !129 ; 6 uses
  %.pre.i.us666 = ptrtoaddr ptr %.pre.i.us to i64 ; 2 uses
  %.pre11.i.us = load ptr, ptr %6, align 8, !tbaa !130 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ew ; 7 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.0.i.i.us
  %.idx.i8.i.us = shl nuw i64 %i.fb, 2            ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 %.idx.i8.i.us
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fo, i8 0, i64 %.idx.i8.i.us, i1 false), !tbaa !104
  %.not4.i.i.i.i.i.i.i.i.us = icmp eq ptr %.pre.i.us, %.pre11.i.us
  br i1 %.not4.i.i.i.i.i.i.i.i.us, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.preheader:              ; preds = %bb.ar
  %.pre11.i.us665 = ptrtoaddr ptr %.pre11.i.us to i64
  %i.fr = add i64 %.pre.i.us666, -4
  %i.fs = sub i64 %i.fr, %.pre11.i.us665          ; 2 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fs, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.us.preheader672, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.preheader
  %i.fv = add i64 %.pre.i.us666, %i.ev
  %i.fw = add i64 %i.eu, %i.fn
  %i.fx = sub i64 %i.fw, %i.fv
  %diff.check = icmp ugt i64 %i.fx, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.us.preheader672, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fu, 9223372036854775800     ; 3 uses
  %i.fy = mul i64 %n.vec, -4                      ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fo, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %.pre.i.us, i64 %i.fy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fo, i64 %i.gb ; 2 uses
  %next.gep667 = getelementptr i8, ptr %.pre.i.us, i64 %i.gb ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %next.gep667, i64 -16
  %i.gd = getelementptr inbounds i8, ptr %next.gep667, i64 -32
  %wide.load = load <4 x float>, ptr %i.gc, align 4, !tbaa !104, !noalias !322
  %wide.load668 = load <4 x float>, ptr %i.gd, align 4, !tbaa !104, !noalias !322
  %i.ge = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.gf = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x float> %wide.load, ptr %i.ge, align 4, !tbaa !104, !noalias !322
  store <4 x float> %wide.load668, ptr %i.gf, align 4, !tbaa !104, !noalias !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.i.us.preheader672

.lr.ph.i.i.i.i.i.i.i.i.us.preheader672:           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.us.preheader, %middle.block
  %.ph = phi ptr [ %i.fo, %vector.memcheck ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.us.preheader ], [ %i.fz, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.us.ph = phi ptr [ %.pre.i.us, %vector.memcheck ], [ %.pre.i.us, %.lr.ph.i.i.i.i.i.i.i.i.us.preheader ], [ %i.ga, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.us:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.preheader672, %.lr.ph.i.i.i.i.i.i.i.i.us
  %i.gh = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.us ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.us.preheader672 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.us = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.us ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.us.preheader672 ]
  %i.gi = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.us, i64 -4 ; 3 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !104, !noalias !322
  %i.gk = getelementptr inbounds i8, ptr %i.gh, i64 -4 ; 3 uses
  store float %i.gj, ptr %i.gk, align 4, !tbaa !104, !noalias !322
  %.not.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.gi, %.pre11.i.us
  br i1 %.not.i.i.i.i.i.i.i.i.us, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.i.us, !llvm.loop !313

_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us, %middle.block, %bb.ar
  %.sroa.436.0.i.i.i.i.i.i.i.us = phi ptr [ %i.fo, %bb.ar ], [ %i.fz, %middle.block ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.us ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.us, ptr %6, align 8, !tbaa !132
  store ptr %i.fq, ptr %i.bz, align 8, !tbaa !132
  %i.gl = load ptr, ptr %i.ca, align 8, !tbaa !132
  store ptr %i.fp, ptr %i.ca, align 8, !tbaa !132
  %.not.i9.i.us = icmp eq ptr %.pre11.i.us, null
  br i1 %.not.i9.i.us, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a, label %bb.as

bb.as:                                            ; preds = %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %.pre11.i.us to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %.pre11.i.us, i64 noundef %i.go) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a: ; preds = %bb.as, %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ne180100Ev.exit.i.i.us, %.lr.ph.preheader.i.i.us, %bb.an, %bb.am
  br i1 %brmerge, label %._crit_edge403.split.us, label %.preheader287.lr.ph.split.us

.preheader287.lr.ph.split.us:                     ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a
  br i1 %1, label %.preheader287.us.us, label %.preheader287.lr.ph.split.split.us445

.preheader287.lr.ph.split.split.us445:            ; preds = %.preheader287.lr.ph.split.us
  br i1 %i.ab, label %._crit_edge403.split.us, label %.preheader287.us407.us

.preheader287.us407.us:                           ; preds = %.preheader287.lr.ph.split.split.us445, %._crit_edge387.split.split.us.us.us
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %._crit_edge387.split.split.us.us.us ], [ 0, %.preheader287.lr.ph.split.split.us445 ] ; 5 uses
  %.0131401.us409.us = phi i64 [ %.lcssa678, %._crit_edge387.split.split.us.us.us ], [ 0, %.preheader287.lr.ph.split.split.us445 ]
  %i.gp = mul nuw nsw i64 %indvars.iv550, %i.m
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.gp
  br label %.lr.ph382.us392.us.us

.lr.ph382.us392.us.us:                            ; preds = %..loopexit_crit_edge.us395.us.us, %.preheader287.us407.us
  %indvars.iv545 = phi i64 [ %indvars.iv.next546, %..loopexit_crit_edge.us395.us.us ], [ 0, %.preheader287.us407.us ] ; 5 uses
  %.1383.us391.us.us = phi i64 [ %.lcssa678, %..loopexit_crit_edge.us395.us.us ], [ %.0131401.us409.us, %.preheader287.us407.us ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv545
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !17
  %i.gt = zext i32 %i.gs to i64                   ; 3 uses
  br i1 %i.ch, label %.epil.preheader711, label %.lr.ph382.us392.us.us.new

.lr.ph382.us392.us.us.new:                        ; preds = %.lr.ph382.us392.us.us, %.lr.ph382.us392.us.us.new
  %indvars.iv539 = phi i64 [ %indvars.iv.next540.1, %.lr.ph382.us392.us.us.new ], [ 0, %.lr.ph382.us392.us.us ] ; 3 uses
  %.2379.us394.us.us = phi i64 [ %i.hp, %.lr.ph382.us392.us.us.new ], [ %.1383.us391.us.us, %.lr.ph382.us392.us.us ] ; 2 uses
  %niter718 = phi i64 [ %niter718.next.1, %.lr.ph382.us392.us.us.new ], [ 0, %.lr.ph382.us392.us.us ]
  %i.gu = load ptr, ptr %6, align 8, !tbaa !130
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.2379.us394.us.us
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv539 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !135
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !137
  %i.hb = mul nsw i64 %i.ha, %indvars.iv550
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv545
  store ptr %i.gv, ptr %i.hd, align 8, !tbaa !132
  %i.he = add i64 %.2379.us394.us.us, %i.gt       ; 2 uses
  %i.hf = load ptr, ptr %6, align 8, !tbaa !130
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.he
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv539 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !135
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !137
  %i.hm = mul nsw i64 %i.hl, %indvars.iv550
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv545
  store ptr %i.hg, ptr %i.ho, align 8, !tbaa !132
  %i.hp = add i64 %i.he, %i.gt                    ; 3 uses
  %indvars.iv.next540.1 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %niter718.next.1 = add i64 %niter718, 2         ; 2 uses
  %niter718.ncmp.1 = icmp eq i64 %niter718.next.1, %unroll_iter717
  br i1 %niter718.ncmp.1, label %..loopexit_crit_edge.us395.us.us.unr-lcssa, label %.lr.ph382.us392.us.us.new, !llvm.loop !314

..loopexit_crit_edge.us395.us.us.unr-lcssa:       ; preds = %.lr.ph382.us392.us.us.new
  br i1 %lcmp.mod714.not, label %..loopexit_crit_edge.us395.us.us, label %.epil.preheader711

.epil.preheader711:                               ; preds = %..loopexit_crit_edge.us395.us.us.unr-lcssa, %.lr.ph382.us392.us.us
  %indvars.iv539.epil.init = phi i64 [ 0, %.lr.ph382.us392.us.us ], [ %indvars.iv.next540.1, %..loopexit_crit_edge.us395.us.us.unr-lcssa ]
  %.2379.us394.us.us.epil.init = phi i64 [ %.1383.us391.us.us, %.lr.ph382.us392.us.us ], [ %i.hp, %..loopexit_crit_edge.us395.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod716)
  %i.hq = load ptr, ptr %6, align 8, !tbaa !130
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.2379.us394.us.us.epil.init
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv539.epil.init ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !135
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !137
  %i.hx = mul nsw i64 %i.hw, %indvars.iv550
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv545
  store ptr %i.hr, ptr %i.hz, align 8, !tbaa !132
  %i.ia = add i64 %.2379.us394.us.us.epil.init, %i.gt
  br label %..loopexit_crit_edge.us395.us.us

..loopexit_crit_edge.us395.us.us:                 ; preds = %..loopexit_crit_edge.us395.us.us.unr-lcssa, %.epil.preheader711
  %.lcssa678 = phi i64 [ %i.hp, %..loopexit_crit_edge.us395.us.us.unr-lcssa ], [ %i.ia, %.epil.preheader711 ] ; 2 uses
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next546, %wide.trip.count548
  br i1 %exitcond549.not, label %._crit_edge387.split.split.us.us.us, label %.lr.ph382.us392.us.us, !llvm.loop !315

._crit_edge387.split.split.us.us.us:              ; preds = %..loopexit_crit_edge.us395.us.us
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next551, %wide.trip.count553
  br i1 %exitcond554.not, label %._crit_edge403.split.us, label %.preheader287.us407.us, !llvm.loop !316

.preheader287.us.us:                              ; preds = %.preheader287.lr.ph.split.us, %._crit_edge387.split.us.us.us
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %._crit_edge387.split.us.us.us ], [ 0, %.preheader287.lr.ph.split.us ] ; 8 uses
  %.0131401.us.us = phi i64 [ %.us-phi410.us, %._crit_edge387.split.us.us.us ], [ 0, %.preheader287.lr.ph.split.us ] ; 2 uses
  %i.ib = mul nuw nsw i64 %indvars.iv583, %i.m
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ib
  br i1 %i.ab, label %._crit_edge387.split.us.us.us, label %.lr.ph386.split.us.us.split.us.us

.lr.ph386.split.us.us.split.us.us:                ; preds = %.preheader287.us.us, %.loopexit286.us.us.us.us
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %.loopexit286.us.us.us.us ], [ 0, %.preheader287.us.us ] ; 8 uses
  %.1383.us.us.us.us = phi i64 [ %.3.us.us.us.us, %.loopexit286.us.us.us.us ], [ %.0131401.us.us, %.preheader287.us.us ] ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv567
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !17 ; 2 uses
  %i.if = mul i32 %i.ie, %i.d
  %i.ig = icmp ult i32 %i.if, 1000
  br i1 %i.ig, label %.lr.ph382.us.us.us.us, label %.lr.ph378.us.us.us.us.preheader

.lr.ph378.us.us.us.us.preheader:                  ; preds = %.lr.ph386.split.us.us.split.us.us
  br i1 %i.ci, label %.lr.ph378.us.us.us.us.epil.preheader, label %.lr.ph378.us.us.us.us

.lr.ph378.us.us.us.us:                            ; preds = %.lr.ph378.us.us.us.us.preheader, %.lr.ph378.us.us.us.us
  %indvars.iv555 = phi i64 [ %indvars.iv.next556.1, %.lr.ph378.us.us.us.us ], [ 0, %.lr.ph378.us.us.us.us.preheader ] ; 3 uses
  %niter724 = phi i64 [ %niter724.next.1, %.lr.ph378.us.us.us.us ], [ 0, %.lr.ph378.us.us.us.us.preheader ]
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv555 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !135
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !137
  %i.im = mul nsw i64 %i.il, %indvars.iv583
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv567
  store ptr null, ptr %i.io, align 8, !tbaa !132
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv555 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !135
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.it = load i64, ptr %i.is, align 8, !tbaa !137
  %i.iu = mul nsw i64 %i.it, %indvars.iv583
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv567
  store ptr null, ptr %i.iw, align 8, !tbaa !132
  %indvars.iv.next556.1 = add nuw nsw i64 %indvars.iv555, 2 ; 2 uses
  %niter724.next.1 = add i64 %niter724, 2         ; 2 uses
  %niter724.ncmp.1 = icmp eq i64 %niter724.next.1, %unroll_iter723
  br i1 %niter724.ncmp.1, label %.loopexit286.us.us.us.us.loopexit670.unr-lcssa, label %.lr.ph378.us.us.us.us, !llvm.loop !317

.lr.ph382.us.us.us.us:                            ; preds = %.lr.ph386.split.us.us.split.us.us
  %i.ix = zext i32 %i.ie to i64                   ; 3 uses
  br i1 %i.cj, label %.epil.preheader725, label %.lr.ph382.us.us.us.us.new

.lr.ph382.us.us.us.us.new:                        ; preds = %.lr.ph382.us.us.us.us, %.lr.ph382.us.us.us.us.new
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.1, %.lr.ph382.us.us.us.us.new ], [ 0, %.lr.ph382.us.us.us.us ] ; 3 uses
  %.2379.us.us.us.us = phi i64 [ %i.jt, %.lr.ph382.us.us.us.us.new ], [ %.1383.us.us.us.us, %.lr.ph382.us.us.us.us ] ; 2 uses
  %niter732 = phi i64 [ %niter732.next.1, %.lr.ph382.us.us.us.us.new ], [ 0, %.lr.ph382.us.us.us.us ]
  %i.iy = load ptr, ptr %6, align 8, !tbaa !130
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %.2379.us.us.us.us
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv561 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !135
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !137
  %i.jf = mul nsw i64 %i.je, %indvars.iv583
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jf
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv567
  store ptr %i.iz, ptr %i.jh, align 8, !tbaa !132
  %i.ji = add i64 %.2379.us.us.us.us, %i.ix       ; 2 uses
  %i.jj = load ptr, ptr %6, align 8, !tbaa !130
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ji
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv561 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !135
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !137
  %i.jq = mul nsw i64 %i.jp, %indvars.iv583
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv567
  store ptr %i.jk, ptr %i.js, align 8, !tbaa !132
  %i.jt = add i64 %i.ji, %i.ix                    ; 3 uses
  %indvars.iv.next562.1 = add nuw nsw i64 %indvars.iv561, 2 ; 2 uses
  %niter732.next.1 = add i64 %niter732, 2         ; 2 uses
  %niter732.ncmp.1 = icmp eq i64 %niter732.next.1, %unroll_iter731
  br i1 %niter732.ncmp.1, label %.loopexit286.us.us.us.us.loopexit.unr-lcssa, label %.lr.ph382.us.us.us.us.new, !llvm.loop !314

.loopexit286.us.us.us.us.loopexit.unr-lcssa:      ; preds = %.lr.ph382.us.us.us.us.new
  br i1 %lcmp.mod728.not, label %.loopexit286.us.us.us.us, label %.epil.preheader725

.epil.preheader725:                               ; preds = %.loopexit286.us.us.us.us.loopexit.unr-lcssa, %.lr.ph382.us.us.us.us
  %indvars.iv561.epil.init = phi i64 [ 0, %.lr.ph382.us.us.us.us ], [ %indvars.iv.next562.1, %.loopexit286.us.us.us.us.loopexit.unr-lcssa ]
  %.2379.us.us.us.us.epil.init = phi i64 [ %.1383.us.us.us.us, %.lr.ph382.us.us.us.us ], [ %i.jt, %.loopexit286.us.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod730)
  %i.ju = load ptr, ptr %6, align 8, !tbaa !130
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.2379.us.us.us.us.epil.init
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv561.epil.init ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !137
  %i.kb = mul nsw i64 %i.ka, %indvars.iv583
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv567
  store ptr %i.jv, ptr %i.kd, align 8, !tbaa !132
  %i.ke = add i64 %.2379.us.us.us.us.epil.init, %i.ix
  br label %.loopexit286.us.us.us.us

.loopexit286.us.us.us.us.loopexit670.unr-lcssa:   ; preds = %.lr.ph378.us.us.us.us
  br i1 %lcmp.mod721.not, label %.loopexit286.us.us.us.us, label %.lr.ph378.us.us.us.us.epil.preheader

.lr.ph378.us.us.us.us.epil.preheader:             ; preds = %.loopexit286.us.us.us.us.loopexit670.unr-lcssa, %.lr.ph378.us.us.us.us.preheader
  %indvars.iv555.epil.init = phi i64 [ 0, %.lr.ph378.us.us.us.us.preheader ], [ %indvars.iv.next556.1, %.loopexit286.us.us.us.us.loopexit670.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod722)
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv555.epil.init ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !135
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !137
  %i.kk = mul nsw i64 %i.kj, %indvars.iv583
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv567
  store ptr null, ptr %i.km, align 8, !tbaa !132
  br label %.loopexit286.us.us.us.us

.loopexit286.us.us.us.us:                         ; preds = %.lr.ph378.us.us.us.us.epil.preheader, %.loopexit286.us.us.us.us.loopexit670.unr-lcssa, %.epil.preheader725, %.loopexit286.us.us.us.us.loopexit.unr-lcssa
  %.3.us.us.us.us = phi i64 [ %i.ke, %.epil.preheader725 ], [ %i.jt, %.loopexit286.us.us.us.us.loopexit.unr-lcssa ], [ %.1383.us.us.us.us, %.loopexit286.us.us.us.us.loopexit670.unr-lcssa ], [ %.1383.us.us.us.us, %.lr.ph378.us.us.us.us.epil.preheader ] ; 2 uses
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %._crit_edge387.split.us.us.us, label %.lr.ph386.split.us.us.split.us.us, !llvm.loop !315

._crit_edge387.split.us.us.us:                    ; preds = %.loopexit286.us.us.us.us, %.preheader287.us.us
  %.us-phi410.us = phi i64 [ %.0131401.us.us, %.preheader287.us.us ], [ %.3.us.us.us.us, %.loopexit286.us.us.us.us ]
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %._crit_edge403.split.us, label %.preheader287.us.us, !llvm.loop !316

._crit_edge403.split.us:                          ; preds = %._crit_edge387.split.split.us.us.us, %._crit_edge387.split.us.us.us, %.preheader287.lr.ph.split.split.us445, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.us.a
  invoke void @_ZN7Imf_3_418DeepTiledInputFile8readTileEiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0139.us, i32 noundef %.0140.us, i32 noundef %.0141424.us, i32 noundef %.0146429.us)
          to label %._crit_edge363.us.thread unwind label %bb.av

bb.at:                                            ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #27
          to label %.noexc217.split.us.unreachable unwind label %bb.av

bb.au:                                            ; preds = %bb.ap
  invoke void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
          to label %.noexc216.split.us.unreachable unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge403.split.us, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIfEEEEDaRT_m.exit.i.i.us, %bb.ah
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %.4159.us = extractvalue { ptr, i32 } %i.kn, 0
  %i.ko = call ptr @__cxa_begin_catch(ptr %.4159.us) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %.loopexit291.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %.3164.mux.us = select i1 %or.cond.not274.not277.us, i1 true, i1 %.3164.us
  br i1 %brmerge.not.us, label %.loopexit292thread-pre-split, label %._crit_edge363.us.thread

._crit_edge363.us.thread:                         ; preds = %.preheader289.us, %bb.aw, %._crit_edge403.split.us, %bb.ak, %._crit_edge363.us
  %.6167.us = phi i1 [ %.3164.mux.us, %bb.aw ], [ %.3164.us, %._crit_edge403.split.us ], [ %.3164.us, %bb.ak ], [ %.3164.us, %._crit_edge363.us ], [ %.3164.us, %.preheader289.us ]
  %i.kp = add nuw nsw i32 %.0139.us, 1
  br label %.preheader290.us, !llvm.loop !318

.thread.us:                                       ; preds = %bb.ag
  %i.kq = add nuw nsw i32 %.0140.us, 1
  br label %bb.ae, !llvm.loop !319

.thread252.us:                                    ; preds = %bb.af
  %i.kr = add nuw nsw i32 %.0141424.us, 1         ; 2 uses
  %exitcond588.not = icmp eq i32 %i.kr, %i.k
  br i1 %exitcond588.not, label %..thread257_crit_edge.us, label %.preheader293.us, !llvm.loop !320

..thread257_crit_edge.us:                         ; preds = %.thread252.us
  %i.ks = add nuw nsw i32 %.0146429.us, 1         ; 2 uses
  %exitcond589.not = icmp eq i32 %i.ks, %i.j
  br i1 %exitcond589.not, label %.loopexit292thread-pre-split, label %.preheader294.us, !llvm.loop !321

.loopexit291.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %.preheader290.us, %bb.ae
  %lpad.loopexit.split-lp674 = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = load ptr, ptr %6, align 8, !tbaa !130   ; 4 uses
  %.not.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit, label %bb.ax

.noexc217.split.us.unreachable:                   ; preds = %bb.at
  unreachable

.noexc216.split.us.unreachable:                   ; preds = %bb.au
  unreachable

.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.u, %._crit_edge, %bb.t, %bb.s, %bb.x
  %lpad.loopexit.split-lp691 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.ax:                                            ; preds = %.loopexit291.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store ptr %i.kt, ptr %i.bz, align 8, !tbaa !129
  %i.ku = load ptr, ptr %i.ca, align 8, !tbaa !132
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kx) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit: ; preds = %.loopexit291.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

.loopexit292thread-pre-split:                     ; preds = %..thread257_crit_edge.us, %bb.aw, %.preheader294.lr.ph
  %.not187343.ph = phi i1 [ true, %bb.aw ], [ false, %.preheader294.lr.ph ], [ %.2163.us, %..thread257_crit_edge.us ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !130
  br label %.loopexit292

.loopexit292:                                     ; preds = %.loopexit292thread-pre-split, %bb.ad
  %i.ky = phi ptr [ %.pr, %.loopexit292thread-pre-split ], [ null, %bb.ad ] ; 4 uses
  %.not187343 = phi i1 [ %.not187343.ph, %.loopexit292thread-pre-split ], [ false, %bb.ad ]
  %.not.i.i206 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i206, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit207, label %bb.ay

bb.ay:                                            ; preds = %.loopexit292
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !129
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !132
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.ky to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.le) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit207

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit207: ; preds = %.loopexit292, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.lf = load ptr, ptr %i.aq, align 8, !tbaa !113
  call void @_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_9DeepSliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE7destroyEPNS_11__tree_nodeIS5_PvEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.lf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.lg = icmp eq ptr %i.aa, null
  br i1 %i.lg, label %_ZN7Imf_3_47Array2DIjED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit207
  %i.lh = load i64, ptr %i.z, align 16            ; 2 uses
  %.idx.i = mul i64 %i.lh, 24                     ; 2 uses
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.az, %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i
  %.idx = phi i64 [ %.add, %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i ], [ %.idx.i, %bb.az ] ; 2 uses
  %.ptr = getelementptr i8, ptr %i.aa, i64 %.idx
  %.add = add i64 %.idx, -24                      ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %.ptr, i64 -8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !135 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.preheader.i
  call void @_ZdaPv(ptr noundef nonnull %i.lk) #24
  br label %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i

_ZN7Imf_3_47Array2DIPfED2Ev.exit.i:               ; preds = %bb.ba, %.preheader.i
  %i.lm = icmp eq i64 %.add, 0
  br i1 %i.lm, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i, %bb.az
  %i.ln = add i64 %.idx.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.z, i64 noundef %i.ln) #24
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit

_ZN7Imf_3_47Array2DIjED2Ev.exit:                  ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit207, %.loopexit.i
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24
  br label %bb.be

.body:                                            ; preds = %bb.y, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit, %bb.ac, %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn191.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp691, %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bg, %bb.y ], [ %i.bs, %bb.ac ], [ %lpad.loopexit.split-lp674, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit ]
  %i.lo = load ptr, ptr %i.aq, align 8, !tbaa !113
  call void @_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_9DeepSliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE7destroyEPNS_11__tree_nodeIS5_PvEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.lo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bb

bb.bb:                                            ; preds = %.body, %bb.q
  %.pn192 = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %.pn191.pn.pn.pn, %.body ] ; 2 uses
  %i.lp = icmp eq ptr %i.aa, null
  br i1 %i.lp, label %.loopexit.split-lp306, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lq = load i64, ptr %i.z, align 16            ; 2 uses
  %.idx.i208 = mul i64 %i.lq, 24                  ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %.loopexit.i212, label %.preheader.i210

.preheader.i210:                                  ; preds = %bb.bc, %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i211
  %.idx281 = phi i64 [ %.add282, %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i211 ], [ %.idx.i208, %bb.bc ] ; 2 uses
  %.ptr283 = getelementptr i8, ptr %i.aa, i64 %.idx281
  %.add282 = add i64 %.idx281, -24                ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %.ptr283, i64 -8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !135 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i211, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i210
  call void @_ZdaPv(ptr noundef nonnull %i.lt) #24
  br label %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i211

_ZN7Imf_3_47Array2DIPfED2Ev.exit.i211:            ; preds = %bb.bd, %.preheader.i210
  %i.lv = icmp eq i64 %.add282, 0
  br i1 %i.lv, label %.loopexit.i212, label %.preheader.i210

.loopexit.i212:                                   ; preds = %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i211, %bb.bc
  %i.lw = add i64 %.idx.i208, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.z, i64 noundef %i.lw) #24
  br label %.loopexit.split-lp306

_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit213:  ; preds = %bb.a, %bb.g, %bb.b, %bb.c, %bb.e, %bb.d, %bb.f, %bb.h
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit214

.loopexit.split-lp306:                            ; preds = %.loopexit.split-lp306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.i212, %bb.bb
  %.pn193.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn192, %.loopexit.i212 ], [ %.pn192, %bb.bb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp306.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit214

_ZN7Imf_3_47Array2DIjED2Ev.exit214:               ; preds = %.loopexit.split-lp306, %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit213
  %.pn193.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn.pn.pn.ph, %.loopexit.split-lp306 ], [ %i.lx, %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit213 ]
  %.16 = extractvalue { ptr, i32 } %.pn193.pn.pn.pn.pn.pn.pn, 0
  %i.ly = call ptr @__cxa_begin_catch(ptr %.16) #23 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.be

bb.be:                                            ; preds = %_ZN7Imf_3_47Array2DIjED2Ev.exit, %_ZN7Imf_3_47Array2DIjED2Ev.exit214
  %.10183 = phi i1 [ %.not187343, %_ZN7Imf_3_47Array2DIjED2Ev.exit ], [ true, %_ZN7Imf_3_47Array2DIjED2Ev.exit214 ]
  ret i1 %.10183
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7Imf_3_418DeepTiledInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #16 comdat align 2 {
bb.a:
end_hunk_1
