Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/canon?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN6LibRaw22processCanonCameraInfoEyPhjjj:bb.a
  %i.az = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 633, i64 noundef %i.ax)
  %.not277 = icmp eq i32 %i.az, 0
  br i1 %.not277, label %bb.x, label %.thread349

bb.x:                                             ; preds = %bb.w
  %i.ba = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 640, i64 noundef %i.ax)
  %.not278 = icmp eq i32 %i.ba, 0
  br i1 %.not278, label %bb.y, label %.thread349

bb.y:                                             ; preds = %bb.x
  %i.bb = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 645, i64 noundef %i.ax)
  %.not279 = icmp eq i32 %i.bb, 0                 ; 3 uses
  %.446 = select i1 %.not279, i16 32, i16 35
  %.447 = select i1 %.not279, i16 122, i16 125
  %.448 = select i1 %.not279, i16 -7, i16 5
  br label %.thread349

.thread349:                                       ; preds = %bb.x, %bb.y, %bb.v, %bb.w
  %i.bc = phi i16 [ %.446, %bb.y ], [ 32, %bb.v ], [ 32, %bb.w ], [ 35, %bb.x ]
  %i.bd = phi i16 [ %.447, %bb.y ], [ 122, %bb.v ], [ 122, %bb.w ], [ 125, %bb.x ]
  %i.be = phi i16 [ %.448, %bb.y ], [ -7, %bb.v ], [ -7, %bb.w ], [ 0, %bb.x ] ; 3 uses
  %i.bf = add nsw i16 %i.be, 423
  %i.bg = add nsw i16 %i.be, 425
  %narrow281 = add nsw i16 %i.be, 427
  br label %.critedge

bb.z:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bi = tail call noundef zeroext i16 @_ZN6LibRaw8sget2RevEPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bh)
  %.not275 = icmp eq i16 %i.bi, 0
  %spec.select311 = select i1 %.not275, i16 151, i16 12
  br label %.critedge

bb.aa:                                            ; preds = %bb.i
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.bj = zext i32 %3 to i64                      ; 5 uses
  %i.bk = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 556, i64 noundef %i.bj)
  %.not267.not = icmp eq i32 %i.bk, 0
  br i1 %.not267.not, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.bl = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 557, i64 noundef %i.bj)
  %.not268 = icmp eq i32 %i.bl, 0
  br i1 %.not268, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bm = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 572, i64 noundef %i.bj)
  %.not269 = icmp eq i32 %i.bm, 0
  br i1 %.not269, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bn = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 578, i64 noundef %i.bj)
  %.not270 = icmp eq i32 %i.bn, 0
  br i1 %.not270, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 583, i64 noundef %i.bj)
  %.not271 = icmp eq i32 %i.bo, 0
  br i1 %.not271, label %.critedge.thread, label %.thread385

bb.ag:                                            ; preds = %bb.ad, %bb.ae
  %.4.ph = phi i16 [ 6, %bb.ae ], [ 0, %bb.ad ]   ; 2 uses
  %i.bp = add nuw nsw i16 %.4.ph, 125
  br label %.thread385

bb.ah:                                            ; preds = %bb.ac, %bb.ab
  %.4.ph.ph = phi i16 [ -4, %bb.ab ], [ -3, %bb.ac ] ; 2 uses
  %i.bq = add nsw i16 %.4.ph.ph, 125
  %narrow273383392 = add nsw i16 %.4.ph.ph, -4
  br label %.thread385

.thread385:                                       ; preds = %bb.af, %bb.ag, %bb.ah
  %i.br = phi i16 [ 34, %bb.ah ], [ 35, %bb.ag ], [ 35, %bb.af ]
  %i.bs = phi i16 [ %i.bq, %bb.ah ], [ %i.bp, %bb.ag ], [ 131, %bb.af ]
  %i.bt = phi i16 [ %narrow273383392, %bb.ah ], [ %.4.ph, %bb.ag ], [ 11, %bb.af ] ; 3 uses
  %i.bu = add nsw i16 %i.bt, 339
  %i.bv = add nsw i16 %i.bt, 341
  %narrow274 = add nsw i16 %i.bt, 343
  br label %.critedge

bb.ai:                                            ; preds = %bb.i
  br label %.critedge

bb.aj:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.ak:                                            ; preds = %bb.i
  br label %.critedge

bb.al:                                            ; preds = %bb.i
  %i.bw = zext i32 %3 to i64                      ; 2 uses
  %i.bx = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 424, i64 noundef %i.bw)
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.by = tail call fastcc noundef i32 @_ZL43CanonCameraInfo_checkFirmwareRecordLocationPhmm(ptr noundef nonnull %2, i64 noundef 428, i64 noundef %i.bw)
  %.not265 = icmp eq i32 %i.by, 0
  br i1 %.not265, label %.critedge.thread, label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.bz = phi i16 [ 0, %bb.am ], [ -4, %bb.al ]   ; 4 uses
  %i.ca = add nsw i16 %i.bz, 53
  %i.cb = add nsw i16 %i.bz, 274
  %i.cc = add nsw i16 %i.bz, 276
  %i.cd = add nsw i16 %i.bz, 278
  br label %.critedge

bb.ao:                                            ; preds = %bb.i
  br label %.critedge

bb.ap:                                            ; preds = %bb.i
  br label %.critedge

bb.aq:                                            ; preds = %bb.i, %bb.i
  %i.ce = icmp eq i64 %1, 2147484295
  %. = select i1 %i.ce, i16 54, i16 58
  br label %.critedge

bb.ar:                                            ; preds = %bb.i
  br label %.critedge

bb.as:                                            ; preds = %bb.i
  br label %.critedge

bb.at:                                            ; preds = %bb.i
  br label %.critedge

bb.au:                                            ; preds = %bb.i
  br label %.critedge

bb.av:                                            ; preds = %bb.i
  br label %.critedge

bb.aw:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.ax:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.ay:                                            ; preds = %bb.i, %bb.i
  br label %.critedge

bb.az:                                            ; preds = %bb.i
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.i, %bb.t, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ai, %.thread385, %bb.aa, %bb.z, %.thread349, %bb.u
  %.1254 = phi i16 [ 246, %bb.au ], [ 255, %bb.av ], [ 234, %bb.aw ], [ 295, %bb.ax ], [ 222, %bb.at ], [ %i.au, %bb.u ], [ 0, %bb.t ], [ %i.bf, %.thread349 ], [ %spec.select311, %bb.z ], [ 230, %bb.aa ], [ %i.bu, %.thread385 ], [ 226, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 353, %bb.ak ], [ %i.cb, %bb.an ], [ 388, %bb.ay ], [ 214, %bb.ao ], [ 234, %bb.ap ], [ 232, %bb.aq ], [ 358, %bb.ar ], [ 393, %bb.as ], [ 273, %bb.i ], [ 273, %bb.i ] ; 3 uses
  %.0252 = phi i16 [ 250, %bb.au ], [ 259, %bb.av ], [ 238, %bb.aw ], [ 299, %bb.ax ], [ 0, %bb.at ], [ %i.aw, %bb.u ], [ 0, %bb.t ], [ %narrow281, %.thread349 ], [ 149, %bb.z ], [ 234, %bb.aa ], [ %narrow274, %.thread385 ], [ 230, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 357, %bb.ak ], [ %i.cd, %bb.an ], [ 392, %bb.ay ], [ 218, %bb.ao ], [ 238, %bb.ap ], [ 236, %bb.aq ], [ 362, %bb.ar ], [ 397, %bb.as ], [ 277, %bb.i ], [ 277, %bb.i ] ; 3 uses
  %.0251 = phi i16 [ 248, %bb.au ], [ 257, %bb.av ], [ 236, %bb.aw ], [ 297, %bb.ax ], [ 0, %bb.at ], [ %i.av, %bb.u ], [ 0, %bb.t ], [ %i.bg, %.thread349 ], [ 147, %bb.z ], [ 232, %bb.aa ], [ %i.bv, %.thread385 ], [ 228, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 355, %bb.ak ], [ %i.cc, %bb.an ], [ 390, %bb.ay ], [ 216, %bb.ao ], [ 236, %bb.ap ], [ 234, %bb.aq ], [ 360, %bb.ar ], [ 395, %bb.as ], [ 275, %bb.i ], [ 275, %bb.i ] ; 3 uses
  %i.cf = phi i1 [ false, %bb.au ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.ax ], [ true, %bb.at ], [ false, %bb.u ], [ false, %bb.t ], [ false, %.thread349 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %.thread385 ], [ true, %bb.az ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.an ], [ false, %bb.ay ], [ true, %bb.ao ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.i ], [ false, %bb.i ] ; 3 uses
  %.0250 = phi i32 [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 2355, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread385 ], [ 2359, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ay ], [ 2347, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %.0249 = phi i16 [ 30, %bb.au ], [ 30, %bb.av ], [ 30, %bb.aw ], [ 35, %bb.ax ], [ 29, %bb.at ], [ 30, %bb.u ], [ 30, %bb.t ], [ %i.bc, %.thread349 ], [ 40, %bb.z ], [ 30, %bb.aa ], [ %i.br, %.thread385 ], [ 29, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 35, %bb.ak ], [ 30, %bb.an ], [ 35, %bb.ay ], [ 29, %bb.ao ], [ 30, %bb.ap ], [ 30, %bb.aq ], [ 35, %bb.ar ], [ 35, %bb.as ], [ 29, %bb.i ], [ 29, %bb.i ] ; 3 uses
  %.1247 = phi i16 [ 49, %bb.au ], [ 53, %bb.av ], [ 56, %bb.aw ], [ 125, %bb.ax ], [ 48, %bb.at ], [ 53, %bb.u ], [ 53, %bb.t ], [ %i.bd, %.thread349 ], [ 39, %bb.z ], [ 49, %bb.aa ], [ %i.bs, %.thread385 ], [ 48, %bb.az ], [ 150, %bb.ai ], [ 150, %bb.aj ], [ 131, %bb.ak ], [ %i.ca, %bb.an ], [ 150, %bb.ay ], [ 48, %bb.ao ], [ 49, %bb.ap ], [ %., %bb.aq ], [ 132, %bb.ar ], [ 150, %bb.as ], [ 48, %bb.i ], [ 48, %bb.i ] ; 2 uses
  %.not287 = phi i1 [ false, %bb.au ], [ false, %bb.av ], [ false, %bb.aw ], [ true, %bb.ax ], [ true, %bb.at ], [ false, %bb.u ], [ false, %bb.t ], [ true, %.thread349 ], [ true, %bb.z ], [ false, %bb.aa ], [ true, %.thread385 ], [ true, %bb.az ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ false, %bb.an ], [ true, %bb.ay ], [ true, %bb.ao ], [ false, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.i ], [ true, %bb.i ] ; 3 uses
  %.0245 = phi i64 [ 7, %bb.au ], [ 7, %bb.av ], [ 7, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.at ], [ 7, %bb.u ], [ 7, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 7, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 7, %bb.an ], [ 0, %bb.ay ], [ 0, %bb.ao ], [ 7, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %.not289 = phi i1 [ false, %bb.au ], [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %bb.at ], [ true, %bb.u ], [ true, %bb.t ], [ true, %.thread349 ], [ true, %bb.z ], [ false, %bb.aa ], [ true, %.thread385 ], [ true, %bb.az ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.an ], [ true, %bb.ay ], [ true, %bb.ao ], [ false, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.i ], [ true, %bb.i ] ; 3 uses
  %.0244 = phi i16 [ 190, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 191, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ay ], [ 0, %bb.ao ], [ 191, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %.not286 = phi i1 [ true, %bb.au ], [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %bb.at ], [ true, %bb.u ], [ true, %bb.t ], [ true, %.thread349 ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %.thread385 ], [ true, %bb.az ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ak ], [ true, %bb.an ], [ true, %bb.ay ], [ true, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.i ], [ true, %bb.i ] ; 3 uses
  %.0243 = phi i16 [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %.thread349 ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread385 ], [ 0, %bb.az ], [ 1498, %bb.ai ], [ 1408, %bb.aj ], [ 946, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ay ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.i ], [ 0, %bb.i ] ; 3 uses
  %i.cg = zext nneg i16 %.1247 to i32
  %i.ch = icmp ugt i32 %3, %i.cg
  br i1 %i.ch, label %bb.ba, label %.critedge.thread

bb.ba:                                            ; preds = %.critedge
  %i.ci = zext nneg i16 %.1247 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !71  ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 3
  br i1 %i.cl, label %.loopexit.sink.split, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.af, %bb.am, %bb.r, %bb.q, %bb.p, %bb.i, %bb.ba, %.critedge
  %.0243439 = phi i16 [ %.0243, %.critedge ], [ %.0243, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not286437 = phi i1 [ %.not286, %.critedge ], [ %.not286, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0244435 = phi i16 [ %.0244, %.critedge ], [ %.0244, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not289433 = phi i1 [ %.not289, %.critedge ], [ %.not289, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0245431 = phi i64 [ %.0245, %.critedge ], [ %.0245, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 7, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not287429 = phi i1 [ %.not287, %.critedge ], [ %.not287, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0248427 = phi i16 [ 0, %.critedge ], [ 0, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 45, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.not290425 = phi i1 [ true, %.critedge ], [ true, %bb.ba ], [ true, %bb.i ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ true, %bb.am ], [ true, %bb.af ] ; 4 uses
  %.0249423 = phi i16 [ %.0249, %.critedge ], [ %.0249, %bb.ba ], [ 0, %bb.i ], [ 10, %bb.p ], [ 9, %bb.q ], [ 9, %bb.r ], [ 30, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.0250421 = phi i32 [ %.0250, %.critedge ], [ %.0250, %bb.ba ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %i.cm = phi i1 [ %i.cf, %.critedge ], [ %i.cf, %bb.ba ], [ false, %bb.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.am ], [ false, %bb.af ] ; 4 uses
  %.0251419 = phi i16 [ %.0251, %.critedge ], [ %.0251, %bb.ba ], [ 0, %bb.i ], [ 14, %bb.p ], [ 17, %bb.q ], [ 17, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.0252417 = phi i16 [ %.0252, %.critedge ], [ %.0252, %bb.ba ], [ 0, %bb.i ], [ 16, %bb.p ], [ 19, %bb.q ], [ 19, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %.1254415 = phi i16 [ %.1254, %.critedge ], [ %.1254, %bb.ba ], [ 0, %bb.i ], [ 13, %bb.p ], [ 12, %bb.q ], [ 12, %bb.r ], [ 0, %bb.am ], [ 0, %bb.af ] ; 4 uses
  %i.cn = icmp eq i32 %4, 7
  %i.co = icmp eq i16 %i.b, -21846
  %or.cond22 = and i1 %i.cn, %i.co
  %i.cp = icmp eq i32 %5, 0
  %or.cond24 = and i1 %i.cp, %or.cond22
  br i1 %or.cond24, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.critedge.thread
  %i.cq = sext i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next453.a, %.preheader ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.cs = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.cr)
  %i.ct = icmp ne i16 %i.cs, -17477
  %i.cu = icmp slt i64 %indvars.iv, %i.cq
  %i.cv = and i1 %i.cu, %i.ct
  %indvars.iv.next453.a = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.cv, label %.preheader, label %bb.bb, !llvm.loop !94

bb.bb:                                            ; preds = %.preheader
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32
  %i.cx = add nuw nsw i32 %i.cw, 2                ; 2 uses
  %i.cy = add i32 %3, -5                          ; 2 uses
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.bb
  %6 = zext nneg i32 %i.cx to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bd
  %indvars.iv454 = phi i64 [ %6, %.lr.ph.preheader ], [ %indvars.iv.next455, %bb.bd ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv454 ; 2 uses
  %i.db = tail call noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.da)
  %i.dc = icmp eq i32 %i.db, 257
  br i1 %i.dc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !71  ; 2 uses
  %i.df = icmp ult i8 %i.de, 3
  br i1 %i.df, label %.loopexit.sink.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 4 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv.next455 to i32
  %i.dh = icmp sgt i32 %i.cy, %i.dg
  br i1 %i.dh, label %.lr.ph, label %.loopexit, !llvm.loop !95

.loopexit.sink.split:                             ; preds = %bb.bc, %bb.ba
  %.lcssa.sink = phi i8 [ %i.ck, %bb.ba ], [ %i.de, %bb.bc ]
  %.0243438.ph = phi i16 [ %.0243, %bb.ba ], [ %.0243439, %bb.bc ]
  %.not286436.ph = phi i1 [ %.not286, %bb.ba ], [ %.not286437, %bb.bc ]
  %.0244434.ph = phi i16 [ %.0244, %bb.ba ], [ %.0244435, %bb.bc ]
  %.not289432.ph = phi i1 [ %.not289, %bb.ba ], [ %.not289433, %bb.bc ]
  %.0245430.ph = phi i64 [ %.0245, %bb.ba ], [ %.0245431, %bb.bc ]
  %.not287428.ph = phi i1 [ %.not287, %bb.ba ], [ %.not287429, %bb.bc ]
  %.0248426.ph = phi i16 [ 0, %bb.ba ], [ %.0248427, %bb.bc ]
  %.not290424.ph = phi i1 [ true, %bb.ba ], [ %.not290425, %bb.bc ]
  %.0249422.ph = phi i16 [ %.0249, %bb.ba ], [ %.0249423, %bb.bc ]
  %.0250420.ph = phi i32 [ %.0250, %bb.ba ], [ %.0250421, %bb.bc ]
  %.ph = phi i1 [ %i.cf, %bb.ba ], [ %i.cm, %bb.bc ]
  %.0251418.ph = phi i16 [ %.0251, %bb.ba ], [ %.0251419, %bb.bc ]
  %.0252416.ph = phi i16 [ %.0252, %bb.ba ], [ %.0252417, %bb.bc ]
  %.1254414.ph = phi i16 [ %.1254, %bb.ba ], [ %.1254415, %bb.bc ]
  %i.di = zext nneg i8 %.lcssa.sink to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @.str, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !71
  %i.dl = sext i8 %i.dk to i16
  %i.dm = add nsw i16 %i.dl, -48
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2028
  store i16 %i.dm, ptr %i.dn, align 4, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %.loopexit.sink.split, %bb.bb, %.critedge.thread
  %.0243438 = phi i16 [ %.0243439, %bb.bb ], [ %.0243438.ph, %.loopexit.sink.split ], [ %.0243439, %.critedge.thread ], [ %.0243439, %bb.bd ] ; 2 uses
  %.not286436 = phi i1 [ %.not286437, %bb.bb ], [ %.not286436.ph, %.loopexit.sink.split ], [ %.not286437, %.critedge.thread ], [ %.not286437, %bb.bd ]
  %.0244434 = phi i16 [ %.0244435, %bb.bb ], [ %.0244434.ph, %.loopexit.sink.split ], [ %.0244435, %.critedge.thread ], [ %.0244435, %bb.bd ] ; 2 uses
  %.not289432 = phi i1 [ %.not289433, %bb.bb ], [ %.not289432.ph, %.loopexit.sink.split ], [ %.not289433, %.critedge.thread ], [ %.not289433, %bb.bd ]
  %.0245430 = phi i64 [ %.0245431, %bb.bb ], [ %.0245430.ph, %.loopexit.sink.split ], [ %.0245431, %.critedge.thread ], [ %.0245431, %bb.bd ]
  %.not287428 = phi i1 [ %.not287429, %bb.bb ], [ %.not287428.ph, %.loopexit.sink.split ], [ %.not287429, %.critedge.thread ], [ %.not287429, %bb.bd ]
  %.0248426 = phi i16 [ %.0248427, %bb.bb ], [ %.0248426.ph, %.loopexit.sink.split ], [ %.0248427, %.critedge.thread ], [ %.0248427, %bb.bd ] ; 2 uses
  %.not290424 = phi i1 [ %.not290425, %bb.bb ], [ %.not290424.ph, %.loopexit.sink.split ], [ %.not290425, %.critedge.thread ], [ %.not290425, %bb.bd ]
  %.0249422 = phi i16 [ %.0249423, %bb.bb ], [ %.0249422.ph, %.loopexit.sink.split ], [ %.0249423, %.critedge.thread ], [ %.0249423, %bb.bd ] ; 3 uses
  %.0250420 = phi i32 [ %.0250421, %bb.bb ], [ %.0250420.ph, %.loopexit.sink.split ], [ %.0250421, %.critedge.thread ], [ %.0250421, %bb.bd ] ; 2 uses
  %i.do = phi i1 [ %i.cm, %bb.bb ], [ %.ph, %.loopexit.sink.split ], [ %i.cm, %.critedge.thread ], [ %i.cm, %bb.bd ]
  %.0251418 = phi i16 [ %.0251419, %bb.bb ], [ %.0251418.ph, %.loopexit.sink.split ], [ %.0251419, %.critedge.thread ], [ %.0251419, %bb.bd ] ; 3 uses
  %.0252416 = phi i16 [ %.0252417, %bb.bb ], [ %.0252416.ph, %.loopexit.sink.split ], [ %.0252417, %.critedge.thread ], [ %.0252417, %bb.bd ] ; 3 uses
  %.1254414 = phi i16 [ %.1254415, %bb.bb ], [ %.1254414.ph, %.loopexit.sink.split ], [ %.1254415, %.critedge.thread ], [ %.1254415, %bb.bd ] ; 3 uses
  %i.dp = zext nneg i16 %.0243438 to i32
  %i.dq = icmp ule i32 %3, %i.dp
  %or.cond321.not = select i1 %.not286436, i1 true, i1 %i.dq
  br i1 %or.cond321.not, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.dr = zext nneg i16 %.0243438 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !71  ; 2 uses
  %i.du = icmp ult i8 %i.dt, 3
  br i1 %i.du, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dv = zext nneg i8 %i.dt to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2030
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !97
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %.loopexit
  br i1 %.not287428, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.0245430
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !71  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ea = icmp ugt i8 %i.dy, 5
  %narrow = select i1 %i.ea, i8 0, i8 %i.dy       ; 3 uses
  %spec.store.select324 = zext i8 %narrow to i32
  store i32 %spec.store.select324, ptr %i.dz, align 8, !tbaa !77
  %.not288 = icmp eq i8 %narrow, 0
  br i1 %.not288, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eb = uitofp i8 %narrow to float
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4988 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !78
  %i.ee = fsub float %i.ed, %i.eb
  store float %i.ee, ptr %i.ec, align 4, !tbaa !78
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.ef = zext nneg i16 %.0244434 to i32
  %i.eg = icmp ule i32 %3, %i.ef
  %or.cond323.not = select i1 %.not289432, i1 true, i1 %i.eg
  br i1 %or.cond323.not, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eh = zext nneg i16 %.0244434 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !71
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %narrow444 = tail call i8 @llvm.umin.i8(i8 %i.ej, i8 3)
  %spec.store.select325 = zext nneg i8 %narrow444 to i32
  store i32 %spec.store.select325, ptr %i.ek, align 4, !tbaa !79
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %.not290424, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.el = zext nneg i16 %.0248426 to i32
  %.not291 = icmp ugt i32 %3, %i.el
  br i1 %.not291, label %bb.bn, label %bb.cm

bb.bn:                                            ; preds = %bb.bm
  %i.em = zext nneg i16 %.0248426 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !71
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1420
  %narrow445 = tail call i8 @llvm.umax.i8(i8 %i.eo, i8 1)
  %spec.store.select = zext i8 %narrow445 to i16
  store i16 %spec.store.select, ptr %i.ep, align 4, !tbaa !80
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !73
  %i.et = fcmp oeq float %i.es, 0.000000e+00
  %i.eu = icmp ne i16 %.0249422, 0
  %or.cond26 = and i1 %i.eu, %i.et
  br i1 %or.cond26, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ev = zext nneg i16 %.0249422 to i32
  %.not293 = icmp ugt i32 %3, %i.ev
  br i1 %.not293, label %bb.bq, label %bb.cm

bb.bq:                                            ; preds = %bb.bp
  %i.ew = zext nneg i16 %.0249422 to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  %i.ey = tail call noundef zeroext i16 @_ZN6LibRaw8sget2RevEPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ex)
  %i.ez = uitofp i16 %i.ey to float
  store float %i.ez, ptr %i.er, align 8, !tbaa !73
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.fa = load i64, ptr %i.eq, align 8, !tbaa !81
  %i.fb = icmp eq i64 %i.fa, 0
  %i.fc = icmp ne i16 %.1254414, 0
  %or.cond28 = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond28, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.fd = zext nneg i16 %.1254414 to i32
  %.not294 = icmp ugt i32 %3, %i.fd
  br i1 %.not294, label %bb.bt, label %bb.cm

bb.bt:                                            ; preds = %bb.bs
  %i.fe = zext i16 %.1254414 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  %i.fg = tail call noundef zeroext i16 @_ZN6LibRaw8sget2RevEPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ff)
  %i.fh = zext i16 %i.fg to i64
  store i64 %i.fh, ptr %i.eq, align 8, !tbaa !81
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !74
  %i.fk = fcmp oeq float %i.fj, 0.000000e+00
  %i.fl = icmp ne i16 %.0251418, 0
  %or.cond30 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond30, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.fm = zext nneg i16 %.0251418 to i32
  %.not295 = icmp ugt i32 %3, %i.fm
  br i1 %.not295, label %bb.bw, label %bb.cm

bb.bw:                                            ; preds = %bb.bv
  %i.fn = zext i16 %.0251418 to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn
  %i.fp = tail call noundef zeroext i16 @_ZN6LibRaw8sget2RevEPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.fo)
  %i.fq = uitofp i16 %i.fp to float
  store float %i.fq, ptr %i.fi, align 8, !tbaa !74
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !75
  %i.ft = fcmp oeq float %i.fs, 0.000000e+00
  %i.fu = icmp ne i16 %.0252416, 0
  %or.cond32 = select i1 %i.ft, i1 %i.fu, i1 false
end_hunk_0
