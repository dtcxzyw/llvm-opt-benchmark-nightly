Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCWin64EH?download=true
inline.NumInlined: 2228
inline.NumDeleted: 892
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL19ARM64EmitUnwindInfoRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoEb:bb.a
    i8 28, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 26, label %.loopexit539.i
    i8 2, label %.loopexit540.i
    i8 11, label %.loopexit540.i
    i8 13, label %.loopexit541.i
    i8 14, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 24, label %.loopexit385
    i8 34, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 35, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 36, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 37, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 38, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 39, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 40, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 41, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 42, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 43, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 44, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 45, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 1, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 25, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 46, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 47, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 48, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 29, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 30, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 31, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 32, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 10, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
  ], !llvm.loop !375

.loopexit536.i.peel:                              ; preds = %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel
  %.sroa.0300.5.jt1.ph848.i.i.lcssa870 = phi ptr [ %.sroa.0300.5.jt1.ph.i.i, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ %i.aar, %.lr.ph.jt1.i.lr.ph.i.peel ] ; 2 uses
  %.6253.jt1.ph849.i.i.lcssa858 = phi i32 [ %.6253.jt1.ph.i.i, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ 7, %.lr.ph.jt1.i.lr.ph.i.peel ]
  %.2235.jt1.ph850.i.i.lcssa844 = phi i1 [ %.2235.jt1.ph.i.i, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ true, %.lr.ph.jt1.i.lr.ph.i.peel ] ; 7 uses
  %.lcssa832 = phi ptr [ %i.aar, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ %i.aaw, %.lr.ph.jt1.i.lr.ph.i.peel ]
  %.not278.i.i.peel = icmp eq i32 %.6253.jt1.ph849.i.i.lcssa858, 1
  br i1 %.not278.i.i.peel, label %.outer857.i.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i

.outer857.i.i:                                    ; preds = %.loopexit536.i.peel
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0300.5.jt1.ph848.i.i.lcssa870, i64 48 ; 8 uses
  %.not354.jt1.i355.i = icmp eq ptr %i.aaz, %i.wc
  br i1 %.not354.jt1.i355.i, label %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i, label %.lr.ph.jt1.i.lr.ph.i, !llvm.loop !374

.lr.ph.jt1.i.lr.ph.i:                             ; preds = %.outer857.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0300.5.jt1.ph848.i.i.lcssa870, i64 64
  %i.abb = load i8, ptr %i.aba, align 8, !tbaa !8
  switch i8 %i.abb, label %.loopexit.i.i60 [
    i8 27, label %.loopexit827.i.i
    i8 33, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 12, label %.preheader840.i.i
    i8 16, label %.loopexit829.i.i
    i8 18, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 17, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 15, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 19, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 21, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 20, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 23, label %.loopexit537.i
    i8 22, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 28, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 26, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 2, label %.thread322.i.i
    i8 11, label %.thread322.i.i
    i8 13, label %.thread763.i.i
    i8 14, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 24, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 34, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 35, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 36, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 37, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 38, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 39, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 40, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 41, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 42, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 43, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 44, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 45, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 1, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 25, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 46, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 47, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 48, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 29, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 30, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 31, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 32, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
    i8 10, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i
  ]

.loopexit385:                                     ; preds = %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel
  %.sroa.0300.5.jt1.ph848.i.i.lcssa879 = phi ptr [ %.sroa.0300.5.jt1.ph.i.i, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ %i.aar, %.lr.ph.jt1.i.lr.ph.i.peel ] ; 2 uses
  %.6253.jt1.ph849.i.i.lcssa867 = phi i32 [ %.6253.jt1.ph.i.i, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ 7, %.lr.ph.jt1.i.lr.ph.i.peel ]
  %.2235.jt1.ph850.i.i.lcssa853 = phi i1 [ %.2235.jt1.ph.i.i, %.lr.ph.jt1.i.lr.ph.i.peel.peel ], [ true, %.lr.ph.jt1.i.lr.ph.i.peel ] ; 4 uses
  %i.abc = icmp eq i32 %.6253.jt1.ph849.i.i.lcssa867, 7
  br i1 %i.abc, label %bb.cr, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i

bb.cr:                                            ; preds = %.loopexit385
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.0300.5.jt1.ph848.i.i.lcssa879, i64 48 ; 4 uses
  %.not354.jt1.i.peel.i = icmp eq ptr %i.abd, %i.wc
  br i1 %.not354.jt1.i.peel.i, label %._crit_edge.i.i, label %.lr.ph.jt1.i.i, !llvm.loop !374

.loopexit.i.i60:                                  ; preds = %.lr.ph.jt1.i.i, %.lr.ph.i.i57, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt3.i.i, %.lr.ph.jt4.i.i
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.43, i1 noundef zeroext true) #21
  unreachable

.preheader.._crit_edge.loopexit830.i_crit_edge.i: ; preds = %.preheader.i59
  br label %._crit_edge.loopexit830.i.i, !llvm.loop !374

.._crit_edge.loopexit830.i_crit_edge.i:           ; preds = %.backedge.i.i
  br label %._crit_edge.loopexit830.i.i, !llvm.loop !374

._crit_edge.loopexit830.i.i:                      ; preds = %.._crit_edge.loopexit830.i_crit_edge.i, %.preheader.._crit_edge.loopexit830.i_crit_edge.i
  %.8.jt3.i.lcssa.i = phi i32 [ %i.xf, %.._crit_edge.loopexit830.i_crit_edge.i ], [ 2, %.preheader.._crit_edge.loopexit830.i_crit_edge.i ]
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0300.0375549.ph.i.i, i64 8
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !20
  br label %._crit_edge.i.i

.._crit_edge.i.loopexit_crit_edge.i:              ; preds = %bb.cl
  br label %._crit_edge.i.i, !llvm.loop !374

.outer857.i.._crit_edge.i.loopexit194_crit_edge.i: ; preds = %.preheader842.i.i, %.preheader842.i.i.peel.newph, %.outer857.i.i
  %.2235.jt1.ph850.i.i854 = phi i1 [ %.2235.jt1.ph850.i.i.lcssa844, %.outer857.i.i ], [ %.2235.jt1.ph.i.i, %.preheader842.i.i ], [ true, %.preheader842.i.i.peel.newph ]
  %.2231.jt1.ph860.i.i.lcssa = phi i1 [ true, %.outer857.i.i ], [ %.2231.jt1.ph.i.i, %.preheader842.i.i.peel.newph ], [ %.2231.jt1.ph.i.i, %.preheader842.i.i ]
  br label %._crit_edge.i.i, !llvm.loop !374

._crit_edge.i.i:                                  ; preds = %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i, %.._crit_edge.i.loopexit_crit_edge.i, %._crit_edge.loopexit830.i.i, %bb.cr, %.preheader.i.i, %bb.bs
  %.0247.lcssa.i.i = phi i1 [ true, %bb.bs ], [ true, %.preheader.i.i ], [ true, %._crit_edge.loopexit830.i.i ], [ true, %.._crit_edge.i.loopexit_crit_edge.i ], [ true, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ false, %bb.cr ]
  %.0237.lcssa.i.i = phi i8 [ 0, %bb.bs ], [ %.8245.jt4.ph.i.i, %.preheader.i.i ], [ %.0237377518.ph.i.i, %._crit_edge.loopexit830.i.i ], [ %.8245.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.8245.jt1.ph.i.i, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.8245.jt1.ph.i.i, %bb.cr ] ; 2 uses
  %.0233.lcssa.i.i = phi i1 [ false, %bb.bs ], [ %.2235.jt4.ph.i.i, %.preheader.i.i ], [ %.0233378503.ph.i.i, %._crit_edge.loopexit830.i.i ], [ %.2235.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.2235.jt1.ph850.i.i854, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.2235.jt1.ph850.i.i.lcssa853, %bb.cr ] ; 4 uses
  %.0229.lcssa.i.i = phi i1 [ false, %bb.bs ], [ %.2231.jt4.ph.i.i, %.preheader.i.i ], [ %.0229379486.ph.i.i, %._crit_edge.loopexit830.i.i ], [ %.2231.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.2231.jt1.ph860.i.i.lcssa, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.2231.jt1.ph.i.i, %bb.cr ] ; 2 uses
  %.0224.lcssa.i.i = phi i32 [ 0, %bb.bs ], [ %.3227.jt4.ph.i.i, %.preheader.i.i ], [ %.0224380471.ph.i.i, %._crit_edge.loopexit830.i.i ], [ %.3227.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.3227.jt1.ph.i.i, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.3227.jt1.ph.i.i, %bb.cr ] ; 3 uses
  %.0220.lcssa.i.i = phi i32 [ 0, %bb.bs ], [ %.2222.jt4.ph.i.i, %.preheader.i.i ], [ %.0220381454.ph.i.i, %._crit_edge.loopexit830.i.i ], [ %.2222.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.2222.jt1.ph.i.i, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.2222.jt1.ph.i.i, %bb.cr ] ; 2 uses
  %.0208.lcssa.i.i = phi i32 [ 0, %bb.bs ], [ %.6214.jt4.ph.i.i, %.preheader.i.i ], [ %i.abf, %._crit_edge.loopexit830.i.i ], [ %.6214.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.6214.jt1.ph.i.i, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.6214.jt1.ph.i.i, %bb.cr ] ; 2 uses
  %.0203.lcssa.i.i = phi i32 [ 0, %bb.bs ], [ %.2205.jt4.ph.i.i, %.preheader.i.i ], [ %.0203383424.ph.i.i, %._crit_edge.loopexit830.i.i ], [ %i.zk, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.2205.jt1.ph.i.i, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.2205.jt1.ph.i.i, %bb.cr ] ; 4 uses
  %.0194.lcssa.i.i = phi i32 [ 0, %bb.bs ], [ %.8.jt4.ph.i.i, %.preheader.i.i ], [ %.8.jt3.i.lcssa.i, %._crit_edge.loopexit830.i.i ], [ %.8.jt4.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i ], [ %.8.jt1.ph.i.i, %.outer857.i.._crit_edge.i.loopexit194_crit_edge.i ], [ %.8.jt1.ph.i.i, %bb.cr ] ; 4 uses
  %i.abg = icmp ugt i32 %.0194.lcssa.i.i, 10
  %i.abh = icmp ugt i32 %.0203.lcssa.i.i, 8
  %or.cond35.i.i = select i1 %i.abg, i1 true, i1 %i.abh
  br i1 %or.cond35.i.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i
  %i.abi = trunc nuw i8 %.0237.lcssa.i.i to i1    ; 3 uses
  %i.abj = or i1 %.0247.lcssa.i.i, %i.abi
  %or.cond293.i.i = and i1 %.0233.lcssa.i.i, %i.abj
  %i.abk = and i32 %.0220.lcssa.i.i, -5
  %or.cond41.not.i.i = icmp ne i32 %i.abk, 0
  %or.cond294.not.i.i = select i1 %or.cond293.i.i, i1 true, i1 %or.cond41.not.i.i
  br i1 %or.cond294.not.i.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not355.i.i = xor i1 %.0233.lcssa.i.i, true
  %or.cond43.not.i.i = and i1 %.0229.lcssa.i.i, %.not355.i.i
  %i.abl = icmp eq i32 %.0220.lcssa.i.i, 4
  %or.cond353.i.i = select i1 %or.cond43.not.i.i, i1 true, i1 %i.abl
  br i1 %or.cond353.i.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abm = icmp eq i32 %.0194.lcssa.i.i, 1
  %or.cond45.i.i = and i1 %i.abm, %i.abi
  %i.abn = icmp ne i32 %.0203.lcssa.i.i, 0        ; 2 uses
  %or.cond47.i.i = select i1 %or.cond45.i.i, i1 %i.abn, i1 false
  br i1 %or.cond47.i.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.abo = shl nuw nsw i32 %.0194.lcssa.i.i, 3    ; 2 uses
  %i.abp = add nuw nsw i32 %i.abo, 8
  %spec.select.i143.i = select i1 %i.abi, i32 %i.abp, i32 %i.abo
  %i.abq = shl nuw nsw i32 %.0203.lcssa.i.i, 3
  %i.abr = add nuw nsw i32 %i.abq, 8
  %i.abs = add nuw nsw i32 %i.abr, %spec.select.i143.i
  %i.abt = and i32 %i.abs, 496
  %.not280.i.i = icmp ne i32 %.0208.lcssa.i.i, %i.abt
  %i.abu = icmp slt i32 %.0224.lcssa.i.i, 16
  %or.cond49.i.i = select i1 %.0233.lcssa.i.i, i1 %i.abu, i1 false
  %or.cond295.i.i = select i1 %.not280.i.i, i1 true, i1 %or.cond49.i.i
  %i.abv = and i32 %.0224.lcssa.i.i, 15
  %.not281.i.i = icmp ne i32 %i.abv, 0
  %or.cond296.not.i.i = select i1 %or.cond295.i.i, i1 true, i1 %.not281.i.i
  br i1 %or.cond296.not.i.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.abw = add nsw i32 %.0208.lcssa.i.i, %.0224.lcssa.i.i ; 2 uses
  %i.abx = icmp ult i32 %i.abw, 8177
  br i1 %i.abx, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.i, label %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i

_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.i: ; preds = %bb.cw
  %i.aby = shl nuw nsw i32 %.0203.lcssa.i.i, 13
  %i.abz = add nsw i32 %i.aby, -8192
  %.4207.i.i = select i1 %i.abn, i32 %i.abz, i32 0
  %i.aca = zext nneg i8 %.0237.lcssa.i.i to i32
  %i.acb = load i32, ptr %i.pk, align 8, !tbaa !266
  %i.acc = and i32 %i.qn, 8188
  %i.acd = shl nuw nsw i32 %.0194.lcssa.i.i, 16
  %i.ace = shl nuw nsw i32 %i.aca, 21
  %i.acf = select i1 %.0233.lcssa.i.i, i32 6291456, i32 %i.ace
  %i.acg = select i1 %.0229.lcssa.i.i, i32 4194304, i32 %i.acf
  %i.ach = shl nuw i32 %i.abw, 19
  %i.aci = or disjoint i32 %i.acc, %i.acg
  %i.acj = or i32 %i.aci, %i.ach
  %i.ack = or i32 %i.acj, %i.acd
  %i.acl = or i32 %i.ack, %.4207.i.i
  %i.acm = or i32 %i.acl, %i.acb
  %i.acn = or i32 %i.acm, 1
  store i32 %i.acn, ptr %i.pk, align 8, !tbaa !266
  br label %_ZL29ARM64EmitUnwindInfoForSegmentRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoERNS3_7SegmentEb.exit

_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i: ; preds = %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.lr.ph.jt1.i.lr.ph.i.peel.peel, %.loopexit542.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %.lr.ph.jt1.i.lr.ph.i.peel, %bb.bw, %bb.bv, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt3.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.lr.ph.jt4.i.i, %.loopexit540.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %.loopexit536.i.peel, %.lr.ph.jt1.i.lr.ph.i, %.lr.ph.jt1.i.lr.ph.i, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %._crit_edge.i.i, %.loopexit385, %.loopexit541.i, %.thread322.i.i, %.loopexit539.i, %bb.cj, %.thread639.i.i, %.loopexit538.i, %.loopexit537.i, %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bx, %bb.bt, %.loopexit829.i.i, %.preheader840.i.i, %.loopexit827.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.jt1.i.i, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %.lr.ph.i.i57, %bb.br, %bb.bq, %bb.bp, %_ZL22checkARM64PackedEpilogRN4llvm10MCStreamerEPNS_5WinEH9FrameInfoEPNS3_7SegmentEi.exit.i
  %i.aco = zext i1 %i.vu to i32
  %spec.select.i44 = add nuw nsw i32 %i.vn, %i.aco
  %spec.select141.i = select i1 %.not133.not.i, i32 0, i32 %spec.select.i44
  %not..i = xor i1 %i.qh, true
  %i.acp = zext i1 %not..i to i32
  %.0125.i = add i32 %i.qp, %i.acp                ; 3 uses
  %.1124.i = select i1 %i.qh, i32 %i.vn, i32 %spec.select141.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 24, i1 false)
  store ptr %i.pm, ptr %i.pl, align 8, !tbaa !107
  store i32 0, ptr %i.pn, align 8, !tbaa !108
  store i32 0, ptr %i.po, align 4, !tbaa !109
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.063.0227, i64 56 ; 6 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !107 ; 2 uses
  %i.acs = load i32, ptr %i.qj, align 8, !tbaa !108 ; 2 uses
  %i.act = zext i32 %i.acs to i64
  %.idx.i.i = shl nuw nsw i64 %i.act, 4
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 %.idx.i.i
  %.not108.i.i = icmp eq i32 %i.acs, 0
  br i1 %.not108.i.i, label %_ZL19ARM64ProcessEpilogsPN4llvm5WinEH9FrameInfoEPNS1_7SegmentERjRNS_9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS8_jNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEENS_11SmallVectorISt4pairIS8_jELj0EEELj0EEE.exit.i, label %.lr.ph.i144.i

.preheader.i147.i:                                ; preds = %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i
  %i.acv = ptrtoint ptr %.sroa.1194.1.i.i to i64
  %.not101115.i.i = icmp eq ptr %.sroa.089.1.i.i, %.sroa.792.1.i.i
  br i1 %.not101115.i.i, label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit.i.i, label %.lr.ph121.i.i

.lr.ph.i144.i:                                    ; preds = %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i
  %.0112.i.i = phi ptr [ %i.adm, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i ], [ %i.acr, %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i ] ; 3 uses
  %.sroa.089.0111.i.i = phi ptr [ %.sroa.089.1.i.i, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i ], [ null, %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i ] ; 5 uses
  %.sroa.792.0110.i.i = phi ptr [ %.sroa.792.1.i.i, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i ], [ null, %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i ] ; 4 uses
  %.sroa.1194.0109.i.i = phi ptr [ %.sroa.1194.1.i.i, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i ], [ null, %_ZL20tryARM64PackedUnwindPN4llvm5WinEH9FrameInfoEji.exit.thread.i ] ; 2 uses
  %.not.i.i145.i = icmp eq ptr %.sroa.792.0110.i.i, %.sroa.1194.0109.i.i
  br i1 %.not.i.i145.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i144.i
  %i.acw = load ptr, ptr %.0112.i.i, align 8, !tbaa !118
  store ptr %i.acw, ptr %.sroa.792.0110.i.i, align 8, !tbaa !118
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i

bb.cy:                                            ; preds = %.lr.ph.i144.i
  %i.acx = ptrtoint ptr %.sroa.792.0110.i.i to i64
  %i.acy = ptrtoint ptr %.sroa.089.0111.i.i to i64
  %i.acz = sub i64 %i.acx, %i.acy                 ; 6 uses
  %i.ada = icmp eq i64 %i.acz, 9223372036854775800
  br i1 %i.ada, label %bb.cz, label %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.cz:                                            ; preds = %bb.cy
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #21
  unreachable

_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.cy
  %i.adb = ashr exact i64 %i.acz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.adb, i64 1)
  %i.adc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.adb ; 2 uses
  %i.add = icmp ult i64 %i.adc, %i.adb
  %i.ade = call i64 @llvm.umin.i64(i64 %i.adc, i64 1152921504606846975)
  %i.adf = select i1 %i.add, i64 1152921504606846975, i64 %i.ade ; 3 uses
  %.not.i.i.i.i163.i = icmp ne i64 %i.adf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i163.i)
  %i.adg = shl nuw nsw i64 %i.adf, 3
  %i.adh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adg) #23 ; 4 uses
  %i.adi = getelementptr inbounds i8, ptr %i.adh, i64 %i.acz ; 2 uses
  %i.adj = load ptr, ptr %.0112.i.i, align 8, !tbaa !118
  store ptr %i.adj, ptr %i.adi, align 8, !tbaa !118
  %i.adk = icmp sgt i64 %i.acz, 0
  br i1 %i.adk, label %bb.da, label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.da:                                            ; preds = %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adh, ptr align 8 %.sroa.089.0111.i.i, i64 %i.acz, i1 false)
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.da, %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.089.0111.i.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.089.0111.i.i, i64 noundef %i.acz) #24
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.db, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.adf
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i

_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backERKS2_.exit.i.i: ; preds = %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.cx
  %.sroa.1194.1.i.i = phi ptr [ %i.adl, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.1194.0109.i.i, %bb.cx ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.adi, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.792.0110.i.i, %bb.cx ] ; 2 uses
  %.sroa.089.1.i.i = phi ptr [ %i.adh, %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.089.0111.i.i, %bb.cx ] ; 6 uses
  %.sroa.792.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.0112.i.i, i64 16 ; 2 uses
  %.not.i146.i = icmp eq ptr %i.adm, %i.acu
  br i1 %.not.i146.i, label %.preheader.i147.i, label %.lr.ph.i144.i

._crit_edge.i155.i:                               ; preds = %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i
  %.not.i.i.i36.i.i = icmp eq ptr %.sroa.085.1.i.i, null
  br i1 %.not.i.i.i36.i.i, label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.i155.i
  %i.adn = ptrtoint ptr %.sroa.11.1.i.i to i64
  %i.ado = ptrtoint ptr %.sroa.085.1.i.i to i64
  %i.adp = sub i64 %i.adn, %i.ado
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.085.1.i.i, i64 noundef %i.adp) #24
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit.i.i: ; preds = %bb.dc, %._crit_edge.i155.i, %.preheader.i147.i
  %.2186.i = phi i32 [ %.0125.i, %.preheader.i147.i ], [ %.1185.i, %._crit_edge.i155.i ], [ %.1185.i, %bb.dc ] ; 2 uses
  %.not.i.i.i37.i.i = icmp eq ptr %.sroa.089.1.i.i, null
  br i1 %.not.i.i.i37.i.i, label %_ZL19ARM64ProcessEpilogsPN4llvm5WinEH9FrameInfoEPNS1_7SegmentERjRNS_9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS8_jNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEENS_11SmallVectorISt4pairIS8_jELj0EEELj0EEE.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit.i.i
  %i.adq = ptrtoint ptr %.sroa.089.1.i.i to i64
  %i.adr = sub i64 %i.acv, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.089.1.i.i, i64 noundef %i.adr) #24
  br label %_ZL19ARM64ProcessEpilogsPN4llvm5WinEH9FrameInfoEPNS1_7SegmentERjRNS_9MapVectorIPNS_8MCSymbolEjNS_8DenseMapIS8_jNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEENS_11SmallVectorISt4pairIS8_jELj0EEELj0EEE.exit.i

.lr.ph121.i.i:                                    ; preds = %.preheader.i147.i, %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i
  %.0184.i = phi i32 [ %.1185.i, %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i ], [ %.0125.i, %.preheader.i147.i ] ; 6 uses
  %.sroa.082.0120.i.i = phi ptr [ %i.amm, %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i ], [ %.sroa.089.1.i.i, %.preheader.i147.i ] ; 3 uses
  %.sroa.11.0119.i.i = phi ptr [ %.sroa.11.1.i.i, %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i ], [ null, %.preheader.i147.i ] ; 7 uses
  %.sroa.7.0117.i.i = phi ptr [ %.sroa.7.1.i.i, %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i ], [ null, %.preheader.i147.i ] ; 8 uses
  %.sroa.085.0116.i.i = phi ptr [ %.sroa.085.1.i.i, %_ZNSt6vectorIN4llvm5WinEH11InstructionESaIS2_EE5clearEv.exit.i.i ], [ null, %.preheader.i147.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ads = load ptr, ptr %.sroa.082.0120.i.i, align 8, !tbaa !118 ; 2 uses
  store ptr %i.ads, ptr %i.a, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.ads, ptr %i.b, align 8, !tbaa !118
  %i.adt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !376 ; 2 uses
  %.fca.0.extract.i.i.i.i.i148.i = extractvalue { ptr, i8 } %i.adt, 0
  %.fca.1.extract.i.i.i.i.i149.i = extractvalue { ptr, i8 } %i.adt, 1
  %i.adu = trunc nuw i8 %.fca.1.extract.i.i.i.i.i149.i to i1
  %i.adv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i148.i, i64 8 ; 2 uses
  br i1 %i.adu, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %.lr.ph121.i.i
  %i.adw = load i32, ptr %i.ay, align 8, !tbaa !108 ; 3 uses
  store i32 %i.adw, ptr %i.adv, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.a, ptr %15, align 8, !tbaa !346, !alias.scope !381
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.adx = load i32, ptr %i.pg, align 4, !tbaa !109
  %.not.i.i.i39.i.i = icmp ult i32 %i.adw, %i.adx
  br i1 %.not.i.i.i39.i.i, label %bb.dg, label %bb.df, !prof !18

bb.df:                                            ; preds = %bb.de
  %i.ady = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16) ; 0 uses
  %.pre.i.i.i161.i = load i32, ptr %i.ay, align 8, !tbaa !108
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i162.i

bb.dg:                                            ; preds = %bb.de
  %i.adz = zext i32 %i.adw to i64
  %i.aea = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.aeb = getelementptr inbounds nuw [72 x i8], ptr %i.aea, i64 %i.adz ; 2 uses
  %i.aec = load ptr, ptr %i.a, align 8, !tbaa !118
  store ptr %i.aec, ptr %i.aeb, align 8, !tbaa !297
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aed, i8 0, i64 64, i1 false)
  %i.aee = load i32, ptr %i.ay, align 8, !tbaa !108
  %i.aef = add i32 %i.aee, 1                      ; 2 uses
  store i32 %i.aef, ptr %i.ay, align 8, !tbaa !108
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i162.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i162.i: ; preds = %bb.dg, %bb.df
  %i.aeg = phi i32 [ %.pre.i.i.i161.i, %bb.df ], [ %i.aef, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.aeh = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.aei = zext i32 %i.aeg to i64
  %i.aej = getelementptr inbounds nuw [72 x i8], ptr %i.aeh, i64 %i.aei
  %i.aek = getelementptr inbounds i8, ptr %i.aej, i64 -72
  br label %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i150.i

bb.dh:                                            ; preds = %.lr.ph121.i.i
  %i.ael = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.aem = load i32, ptr %i.adv, align 8, !tbaa !326
  %i.aen = zext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw [72 x i8], ptr %i.ael, i64 %i.aen
  br label %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i150.i

_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i150.i: ; preds = %bb.dh, %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i162.i
  %.sroa.09.0.i.i.i151.i = phi ptr [ %i.aek, %_ZN4llvm15SmallVectorImplISt4pairIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i162.i ], [ %i.aeo, %bb.dh ] ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i151.i, i64 8 ; 3 uses
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !175 ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i151.i, i64 16 ; 5 uses
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !106 ; 2 uses
  %i.aet = ptrtoint ptr %i.aes to i64
  %i.aeu = ptrtoint ptr %i.aeq to i64
  %i.aev = sub i64 %i.aet, %i.aeu                 ; 3 uses
  %i.aew = sdiv exact i64 %i.aev, 24              ; 5 uses
  %i.aex = call fastcc noundef i32 @_ZL23ARM64CountOfUnwindCodesN4llvm8ArrayRefINS_5WinEH11InstructionEEE(ptr %i.aeq, i64 %i.aew)
  %i.aey = call fastcc noundef ptr @_ZL18FindMatchingEpilogRKSt6vectorIN4llvm5WinEH11InstructionESaIS2_EERKS_IPNS0_8MCSymbolESaIS8_EEPKNS1_9FrameInfoE(ptr %i.aeq, ptr %i.aes, ptr %.sroa.085.0116.i.i, ptr %.sroa.7.0117.i.i, ptr noundef nonnull %1) ; 3 uses
  %.not28.i.i = icmp eq ptr %i.aey, null
  br i1 %.not28.i.i, label %bb.dr, label %bb.di

bb.di:                                            ; preds = %_ZN4llvm9MapVectorIPNS_8MCSymbolENS_5WinEH9FrameInfo6EpilogENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S5_ELj0EEELj0EEixERKS2_.exit.i150.i
  %i.aez = load ptr, ptr %19, align 8, !tbaa !304, !noalias !384 ; 3 uses
end_hunk_0
