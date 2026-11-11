Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_frameheader?download=true
inline.NumInlined: 237
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@writeFrameHeaderV3orMore:bb.a
  %i.jn = extractvalue { i32, ptr } %i.jm, 0      ; 2 uses
  %i.jo = extractvalue { i32, ptr } %i.jm, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jn, ptr %i.jo, ptr noundef nonnull @.str.46) #12
  %i.jp = ptrtoint ptr %i.jo to i64
  br label %writeFrameHeader_internal.exit

bb.ai:                                            ; preds = %bb.ag
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !70
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !72 ; 2 uses
  %i.jt = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.js)
  %i.ju = icmp eq i32 %i.jt, 1
  %i.jv = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.js, i1 true) ; 2 uses
  %i.jw = icmp samesign ult i32 %i.jv, 4
  %switch.idx.cast.i303.i = trunc nuw nsw i32 %i.jv to i8
  %i.jx = select i1 %i.ju, i1 %i.jw, i1 false
  %.0.i304.i = select i1 %i.jx, i8 %switch.idx.cast.i303.i, i8 0
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.8.1354.i, i64 1
  store i8 %.0.i304.i, ptr %.sroa.8.1354.i, align 1, !tbaa !39
  %.pr380.pre.i = load i64, ptr %i.c, align 8, !tbaa !65
  br label %thread-pre-split379.i

bb.aj:                                            ; preds = %bb.af
  br i1 %i.jl, label %bb.al, label %bb.ak, !prof !26

bb.ak:                                            ; preds = %bb.aj
  %i.jz = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeFrameHeader_internal.__zl_static_error_info.47, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, i32 noundef 669, i32 noundef 33, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.45, i64 noundef %i.jk, i64 noundef 1) #12 ; 2 uses
  %i.ka = extractvalue { i32, ptr } %i.jz, 0      ; 2 uses
  %i.kb = extractvalue { i32, ptr } %i.jz, 1      ; 2 uses
  %i.kc = load i32, ptr %i.af, align 8, !tbaa !17
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ka, ptr %i.kb, ptr noundef nonnull @.str.49, i32 noundef %i.kc) #12
  %i.kd = ptrtoint ptr %i.kb to i64
  br label %writeFrameHeader_internal.exit

bb.al:                                            ; preds = %bb.aj
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !70
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !72 ; 2 uses
  %i.kh = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kg)
  %i.ki = icmp ne i32 %i.kh, 1
  %i.kj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kg, i1 true) ; 2 uses
  %i.kk = add nsw i32 %i.kj, -4
  %i.kl = icmp ult i32 %i.kk, -3
  %.not277.i = select i1 %i.ki, i1 true, i1 %i.kl
  br i1 %.not277.i, label %thread-pre-split379.i, label %bb.am, !prof !26

bb.am:                                            ; preds = %bb.al
  %i.km = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeFrameHeader_internal.__zl_static_error_info.50, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, i32 noundef 675, i32 noundef 74, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.38, i32 noundef %i.kj, i32 noundef 0) #12 ; 2 uses
  %i.kn = extractvalue { i32, ptr } %i.km, 0      ; 2 uses
  %i.ko = extractvalue { i32, ptr } %i.km, 1      ; 2 uses
  %i.kp = load i32, ptr %i.af, align 8, !tbaa !17
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kn, ptr %i.ko, ptr noundef nonnull @.str.49, i32 noundef %i.kp) #12
  %i.kq = ptrtoint ptr %i.ko to i64
  br label %writeFrameHeader_internal.exit

thread-pre-split379.i:                            ; preds = %bb.al, %bb.ai, %._crit_edge424.i, %thread-pre-split366.i, %._crit_edge.i, %._crit_edge437.i, %._crit_edge449.i
  %i.kr = phi i64 [ %i.de, %._crit_edge449.i ], [ %.pr380488.i, %._crit_edge437.i ], [ %.pr380.pre.i, %bb.ai ], [ %i.ij, %thread-pre-split366.i ], [ %i.jh, %._crit_edge424.i ], [ %i.jk, %bb.al ], [ %i.fw, %._crit_edge.i ]
  %.sroa.8.5.i = phi ptr [ %i.dh, %._crit_edge449.i ], [ %i.eh, %._crit_edge437.i ], [ %i.jy, %bb.ai ], [ %.sroa.8.4.i, %thread-pre-split366.i ], [ %i.in, %._crit_edge424.i ], [ %.sroa.8.1354.i, %bb.al ], [ %i.fv, %._crit_edge.i ] ; 8 uses
  %i.ks = freeze i64 %i.kr                        ; 8 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !70 ; 7 uses
  %i.kv = load i32, ptr %i.af, align 8, !tbaa !17
  %i.kw = icmp ult i32 %i.kv, 21
  br i1 %i.kw, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %thread-pre-split379.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.kx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %7, align 8, !tbaa !23
  %i.ky = ptrtoint ptr %i.ar to i64
  %i.kz = ptrtoint ptr %.sroa.8.5.i to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 2 uses
  %i.lb = shl i64 %i.ks, 2                        ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.la, %i.lb
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %.preheader.i.i.i, !prof !36

.preheader.i.i.i:                                 ; preds = %bb.an
  %.not3042.not.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not3042.not.i.i.i, label %EFH_encodeInputSizes_v20.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %xtraiter = and i64 %i.ks, 3                    ; 3 uses
  %i.lc = icmp ult i64 %i.ks, 4
  br i1 %i.lc, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ks, -4
  br label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.an
  %i.ld = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EFH_encodeInputSizes_v20.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.61, i32 noundef 433, i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.63, i64 noundef %i.la, i64 noundef %i.lb) #12
  br label %.loopexit.sink.split.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i.preheader.new
  %.sroa.8.14.i = phi ptr [ %.sroa.8.5.i, %.lr.ph.i.i.i.preheader.new ], [ %i.mc, %bb.ao ] ; 6 uses
  %.043.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.md, %bb.ao ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %bb.ao ]
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.043.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !73 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 4294967295
  br i1 %i.lh, label %.lr.ph.i.i.i.1, label %.thread39.i.i.i, !prof !26

.thread39.i.i.i:                                  ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3
  %.sroa.8.14.i.lcssa = phi ptr [ %i.lw, %.lr.ph.i.i.i.3 ], [ %.sroa.8.14.i, %.lr.ph.i.i.i ], [ %i.lk, %.lr.ph.i.i.i.1 ], [ %i.lq, %.lr.ph.i.i.i.2 ], [ %.sroa.8.14.i.epil, %.lr.ph.i.i.i.epil ]
  %.lcssa = phi i64 [ %i.lz, %.lr.ph.i.i.i.3 ], [ %i.lg, %.lr.ph.i.i.i ], [ %i.ln, %.lr.ph.i.i.i.1 ], [ %i.lt, %.lr.ph.i.i.i.2 ], [ %i.mj, %.lr.ph.i.i.i.epil ]
  %i.li = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EFH_encodeInputSizes_v20.__zl_static_error_info.64, ptr noundef nonnull %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.61, i32 noundef 435, i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %.lcssa, i64 noundef 4294967295) #12
  br label %.loopexit.sink.split.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.lj = trunc nuw i64 %i.lg to i32
  store i32 %i.lj, ptr %.sroa.8.14.i, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.8.14.i, i64 4 ; 2 uses
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.043.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !73 ; 3 uses
  %i.lo = icmp ult i64 %i.ln, 4294967295
  br i1 %i.lo, label %.lr.ph.i.i.i.2, label %.thread39.i.i.i, !prof !26

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.lp = trunc nuw i64 %i.ln to i32
  store i32 %i.lp, ptr %i.lk, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.8.14.i, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.043.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 56
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !73 ; 3 uses
  %i.lu = icmp ult i64 %i.lt, 4294967295
  br i1 %i.lu, label %.lr.ph.i.i.i.3, label %.thread39.i.i.i, !prof !26

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.lv = trunc nuw i64 %i.lt to i32
  store i32 %i.lv, ptr %i.lq, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.8.14.i, i64 12 ; 2 uses
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.043.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 80
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !73 ; 3 uses
  %i.ma = icmp ult i64 %i.lz, 4294967295
  br i1 %i.ma, label %bb.ao, label %.thread39.i.i.i, !prof !26

bb.ao:                                            ; preds = %.lr.ph.i.i.i.3
  %i.mb = trunc nuw i64 %i.lz to i32
  store i32 %i.mb, ptr %i.lw, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.8.14.i, i64 16 ; 3 uses
  %i.md = add nuw i64 %.043.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !60

.loopexit.sink.split.i.i.i:                       ; preds = %.thread39.i.i.i, %.thread.i.i.i
  %.sroa.8.15.i = phi ptr [ %.sroa.8.5.i, %.thread.i.i.i ], [ %.sroa.8.14.i.lcssa, %.thread39.i.i.i ]
  %.sink.i.i.i = phi { i32, ptr } [ %i.ld, %.thread.i.i.i ], [ %i.li, %.thread39.i.i.i ] ; 2 uses
  %i.me = extractvalue { i32, ptr } %.sink.i.i.i, 0 ; 2 uses
  %i.mf = extractvalue { i32, ptr } %.sink.i.i.i, 1 ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.me, ptr %i.mf, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #12
  %i.mg = ptrtoint ptr %i.mf to i64
  br label %EFH_encodeInputSizes_v20.exit.i.i

EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EFH_encodeInputSizes_v20.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.8.14.i.epil.init = phi ptr [ %.sroa.8.5.i, %.lr.ph.i.i.i.preheader ], [ %i.mc, %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa ]
  %.043.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.md, %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod182 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %bb.ap, %.lr.ph.i.i.i.epil.preheader
  %.sroa.8.14.i.epil = phi ptr [ %i.mm, %bb.ap ], [ %.sroa.8.14.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.043.i.i.i.epil = phi i64 [ %i.mn, %bb.ap ], [ %.043.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.ap ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.043.i.i.i.epil
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !73 ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 4294967295
  br i1 %i.mk, label %bb.ap, label %.thread39.i.i.i, !prof !26

bb.ap:                                            ; preds = %.lr.ph.i.i.i.epil
  %i.ml = trunc nuw i64 %i.mj to i32
  store i32 %i.ml, ptr %.sroa.8.14.i.epil, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.8.14.i.epil, i64 4 ; 2 uses
  %i.mn = add nuw i64 %.043.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %EFH_encodeInputSizes_v20.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !61

EFH_encodeInputSizes_v20.exit.i.i:                ; preds = %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa, %bb.ap, %.loopexit.sink.split.i.i.i, %.preheader.i.i.i
  %.sroa.8.16.i = phi ptr [ %.sroa.8.15.i, %.loopexit.sink.split.i.i.i ], [ %.sroa.8.5.i, %.preheader.i.i.i ], [ %i.mc, %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa ], [ %i.mm, %bb.ap ]
  %.sroa.025.4.i.i.i = phi i32 [ %i.me, %.loopexit.sink.split.i.i.i ], [ 0, %.preheader.i.i.i ], [ 0, %bb.ap ], [ 0, %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.6.4.i.i.i = phi i64 [ %i.mg, %.loopexit.sink.split.i.i.i ], [ 0, %.preheader.i.i.i ], [ %i.lb, %bb.ap ], [ %i.lb, %EFH_encodeInputSizes_v20.exit.i.i.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %EFH_encodeInputSizes.exit.i

bb.aq:                                            ; preds = %thread-pre-split379.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mo, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %6, align 8, !tbaa !23
  %i.mp = ptrtoint ptr %.sroa.8.5.i to i64        ; 2 uses
  %.not4388.not.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not4388.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i7.i.i

.lr.ph.i7.i.i:                                    ; preds = %bb.aq
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mr = ptrtoint ptr %i.ar to i64               ; 2 uses
  br label %bb.ar

.lr.ph92.i.i.i:                                   ; preds = %bb.at
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.au

bb.ar:                                            ; preds = %bb.at, %.lr.ph.i7.i.i
  %.sroa.8.8.i = phi ptr [ %.sroa.8.5.i, %.lr.ph.i7.i.i ], [ %.sroa.8.10.i, %bb.at ] ; 6 uses
  %.089.i.i.i = phi i64 [ 0, %.lr.ph.i7.i.i ], [ %i.ns, %bb.at ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.089.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mq, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %5, align 8, !tbaa !23
  %i.mw = ptrtoint ptr %.sroa.8.8.i to i64        ; 2 uses
  %i.mx = sub i64 %i.mr, %i.mw                    ; 2 uses
  %i.my = icmp ugt i64 %i.mx, 9
  br i1 %i.my, label %bb.as, label %EFH_writeVarint.exit.i.i.i, !prof !26

bb.as:                                            ; preds = %bb.ar
  %i.mz = add i64 %i.mv, 1                        ; 3 uses
  %i.na = icmp ugt i64 %i.mz, 127
  br i1 %i.na, label %.lr.ph.i.i.i.i.i, label %EFH_writeVarint.exit.thread.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.as, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i ], [ %.sroa.8.8.i, %bb.as ] ; 2 uses
  %.089.i.i.i.i.i = phi i64 [ %i.ne, %.lr.ph.i.i.i.i.i ], [ %i.mz, %bb.as ] ; 3 uses
  %i.nb = trunc i64 %.089.i.i.i.i.i to i8
  %i.nc = or i8 %i.nb, -128
  %i.nd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 1 ; 2 uses
  store i8 %i.nc, ptr %.010.i.i.i.i.i, align 1, !tbaa !39
  %i.ne = lshr i64 %.089.i.i.i.i.i, 7             ; 2 uses
  %i.nf = icmp ugt i64 %.089.i.i.i.i.i, 16383
  br i1 %i.nf, label %.lr.ph.i.i.i.i.i, label %EFH_writeVarint.exit.thread.i.i.i, !llvm.loop !0

EFH_writeVarint.exit.thread.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i, %bb.as
  %.08.lcssa.i.i.i.i.i = phi i64 [ %i.mz, %bb.as ], [ %i.ne, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.8.8.i, %bb.as ], [ %i.nd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ng = trunc nuw nsw i64 %.08.lcssa.i.i.i.i.i to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 1
  store i8 %i.ng, ptr %.0.lcssa.i.i.i.i.i, align 1, !tbaa !39
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.ni, %i.mw
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.8.8.i, i64 %i.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.at

EFH_writeVarint.exit.i.i.i:                       ; preds = %bb.ar
  %i.nl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EFH_writeVarint.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.72, i32 noundef 447, i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.73, i64 noundef %i.mx, i64 noundef 10) #12 ; 2 uses
  %i.nm = extractvalue { i32, ptr } %i.nl, 0      ; 3 uses
  %i.nn = extractvalue { i32, ptr } %i.nl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.nm, ptr %i.nn, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.not.i8.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not.i8.i.i, label %bb.at, label %.thread.i9.i.i, !prof !74

.thread.i9.i.i:                                   ; preds = %EFH_writeVarint.exit.i.i.i
  %i.no = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.nm, ptr %i.nn, ptr nonnull @EFH_encodeInputSizes_v21.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.69, i32 noundef 460, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12 ; 2 uses
  %i.np = extractvalue { i32, ptr } %i.no, 0
  %i.nq = extractvalue { i32, ptr } %i.no, 1
  %i.nr = ptrtoint ptr %i.nq to i64
  br label %EFH_encodeInputSizes_v21.exit.i.i

bb.at:                                            ; preds = %EFH_writeVarint.exit.i.i.i, %EFH_writeVarint.exit.thread.i.i.i
  %.sroa.8.10.i = phi ptr [ %i.nk, %EFH_writeVarint.exit.thread.i.i.i ], [ %.sroa.8.8.i, %EFH_writeVarint.exit.i.i.i ] ; 2 uses
  %i.ns = add nuw i64 %.089.i.i.i, 1              ; 2 uses
  %exitcond.not.i12.i.i = icmp eq i64 %i.ns, %i.ks
  br i1 %exitcond.not.i12.i.i, label %.lr.ph92.i.i.i, label %bb.ar, !llvm.loop !62

bb.au:                                            ; preds = %bb.ax, %.lr.ph92.i.i.i
  %.sroa.8.11.i = phi ptr [ %.sroa.8.10.i, %.lr.ph92.i.i.i ], [ %.sroa.8.12.i, %bb.ax ] ; 7 uses
  %.03891.i.i.i = phi i64 [ 0, %.lr.ph92.i.i.i ], [ %i.ot, %bb.ax ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.03891.i.i.i ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !72
  %i.nv = icmp eq i32 %i.nu, 8
  br i1 %i.nv, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !75 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %4, align 8, !tbaa !23
  %i.ny = ptrtoint ptr %.sroa.8.11.i to i64       ; 2 uses
  %i.nz = sub i64 %i.mr, %i.ny                    ; 2 uses
  %i.oa = icmp ugt i64 %i.nz, 9
  br i1 %i.oa, label %bb.aw, label %EFH_writeVarint.exit61.i.i.i, !prof !26

bb.aw:                                            ; preds = %bb.av
  %i.ob = icmp ugt i64 %i.nx, 127
  br i1 %i.ob, label %.lr.ph.i.i58.i.i.i, label %EFH_writeVarint.exit61.thread.i.i.i

.lr.ph.i.i58.i.i.i:                               ; preds = %bb.aw, %.lr.ph.i.i58.i.i.i
  %.010.i.i59.i.i.i = phi ptr [ %i.oe, %.lr.ph.i.i58.i.i.i ], [ %.sroa.8.11.i, %bb.aw ] ; 2 uses
  %.089.i.i60.i.i.i = phi i64 [ %i.of, %.lr.ph.i.i58.i.i.i ], [ %i.nx, %bb.aw ] ; 3 uses
  %i.oc = trunc i64 %.089.i.i60.i.i.i to i8
  %i.od = or i8 %i.oc, -128
  %i.oe = getelementptr inbounds nuw i8, ptr %.010.i.i59.i.i.i, i64 1 ; 2 uses
  store i8 %i.od, ptr %.010.i.i59.i.i.i, align 1, !tbaa !39
  %i.of = lshr i64 %.089.i.i60.i.i.i, 7           ; 2 uses
  %i.og = icmp ugt i64 %.089.i.i60.i.i.i, 16383
  br i1 %i.og, label %.lr.ph.i.i58.i.i.i, label %EFH_writeVarint.exit61.thread.i.i.i, !llvm.loop !0

EFH_writeVarint.exit61.thread.i.i.i:              ; preds = %.lr.ph.i.i58.i.i.i, %bb.aw
  %.08.lcssa.i.i56.i.i.i = phi i64 [ %i.nx, %bb.aw ], [ %i.of, %.lr.ph.i.i58.i.i.i ]
  %.0.lcssa.i.i57.i.i.i = phi ptr [ %.sroa.8.11.i, %bb.aw ], [ %i.oe, %.lr.ph.i.i58.i.i.i ] ; 2 uses
  %i.oh = trunc nuw nsw i64 %.08.lcssa.i.i56.i.i.i to i8
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i57.i.i.i, i64 1
  store i8 %i.oh, ptr %.0.lcssa.i.i57.i.i.i, align 1, !tbaa !39
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = sub i64 %i.oj, %i.ny
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.8.11.i, i64 %i.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ax

EFH_writeVarint.exit61.i.i.i:                     ; preds = %bb.av
  %i.om = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EFH_writeVarint.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.72, i32 noundef 447, i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.73, i64 noundef %i.nz, i64 noundef 10) #12 ; 2 uses
  %i.on = extractvalue { i32, ptr } %i.om, 0      ; 3 uses
  %i.oo = extractvalue { i32, ptr } %i.om, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.on, ptr %i.oo, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.not44.i.i.i = icmp eq i32 %i.on, 0
  br i1 %.not44.i.i.i, label %bb.ax, label %.thread76.i.i.i, !prof !74

.thread76.i.i.i:                                  ; preds = %EFH_writeVarint.exit61.i.i.i
  %i.op = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.on, ptr %i.oo, ptr nonnull @EFH_encodeInputSizes_v21.__zl_static_error_info.70, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.69, i32 noundef 465, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12 ; 2 uses
  %i.oq = extractvalue { i32, ptr } %i.op, 0
  %i.or = extractvalue { i32, ptr } %i.op, 1
  %i.os = ptrtoint ptr %i.or to i64
  br label %EFH_encodeInputSizes_v21.exit.i.i

bb.ax:                                            ; preds = %EFH_writeVarint.exit61.i.i.i, %EFH_writeVarint.exit61.thread.i.i.i, %bb.au
  %.sroa.8.12.i = phi ptr [ %i.ol, %EFH_writeVarint.exit61.thread.i.i.i ], [ %.sroa.8.11.i, %EFH_writeVarint.exit61.i.i.i ], [ %.sroa.8.11.i, %bb.au ] ; 3 uses
  %i.ot = add nuw i64 %.03891.i.i.i, 1            ; 2 uses
  %exitcond100.not.i.i.i = icmp eq i64 %i.ot, %i.ks
  br i1 %exitcond100.not.i.i.i, label %._crit_edge.i.loopexit.i.i, label %bb.au, !llvm.loop !63

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.ax
  %.pre.i.i = ptrtoint ptr %.sroa.8.12.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %bb.aq
  %.sroa.8.13.i = phi ptr [ %.sroa.8.5.i, %bb.aq ], [ %.sroa.8.12.i, %._crit_edge.i.loopexit.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.mp, %bb.aq ], [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ]
  %i.ou = sub i64 %.pre-phi.i.i, %i.mp
  br label %EFH_encodeInputSizes_v21.exit.i.i

EFH_encodeInputSizes_v21.exit.i.i:                ; preds = %._crit_edge.i.i.i, %.thread76.i.i.i, %.thread.i9.i.i
  %.sroa.8.9.i = phi ptr [ %.sroa.8.13.i, %._crit_edge.i.i.i ], [ %.sroa.8.11.i, %.thread76.i.i.i ], [ %.sroa.8.8.i, %.thread.i9.i.i ]
  %.sroa.031.5.i.i.i = phi i32 [ 0, %._crit_edge.i.i.i ], [ %i.oq, %.thread76.i.i.i ], [ %i.np, %.thread.i9.i.i ]
  %.sroa.14.5.i.i.i = phi i64 [ %i.ou, %._crit_edge.i.i.i ], [ %i.os, %.thread76.i.i.i ], [ %i.nr, %.thread.i9.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %EFH_encodeInputSizes.exit.i

EFH_encodeInputSizes.exit.i:                      ; preds = %EFH_encodeInputSizes_v21.exit.i.i, %EFH_encodeInputSizes_v20.exit.i.i
  %.sroa.8.17.i = phi ptr [ %.sroa.8.16.i, %EFH_encodeInputSizes_v20.exit.i.i ], [ %.sroa.8.9.i, %EFH_encodeInputSizes_v21.exit.i.i ] ; 7 uses
  %.sroa.025.4.i.pn.i.i = phi i32 [ %.sroa.025.4.i.i.i, %EFH_encodeInputSizes_v20.exit.i.i ], [ %.sroa.031.5.i.i.i, %EFH_encodeInputSizes_v21.exit.i.i ] ; 2 uses
  %.sroa.6.4.i.pn.i.i = phi i64 [ %.sroa.6.4.i.i.i, %EFH_encodeInputSizes_v20.exit.i.i ], [ %.sroa.14.5.i.i.i, %EFH_encodeInputSizes_v21.exit.i.i ]
  %.not279.i = icmp eq i32 %.sroa.025.4.i.pn.i.i, 0
  br i1 %.not279.i, label %bb.az, label %bb.ay, !prof !26

bb.ay:                                            ; preds = %EFH_encodeInputSizes.exit.i
  %i.ov = inttoptr i64 %.sroa.6.4.i.pn.i.i to ptr
  %i.ow = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %.sroa.025.4.i.pn.i.i, ptr %i.ov, ptr nonnull @writeFrameHeader_internal.__zl_static_error_info.55, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, i32 noundef 681, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12 ; 2 uses
  %i.ox = extractvalue { i32, ptr } %i.ow, 0
  %i.oy = extractvalue { i32, ptr } %i.ow, 1
  %i.oz = ptrtoint ptr %i.oy to i64
  br label %writeFrameHeader_internal.exit

bb.az:                                            ; preds = %EFH_encodeInputSizes.exit.i
  %i.pa = load i32, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.pb = icmp ugt i32 %i.pa, 21
  br i1 %i.pb, label %bb.ba, label %thread-pre-split384.i

bb.ba:                                            ; preds = %bb.az
  %i.pc = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 2
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !68, !range !34, !noundef !35
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.bb, label %thread-pre-split384.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.pg = load i64, ptr %i.ab, align 8, !tbaa !66 ; 6 uses
  %i.ph = icmp ult i64 %i.pg, 10001
  br i1 %i.ph, label %bb.bd, label %bb.bc, !prof !26

bb.bc:                                            ; preds = %bb.bb
  %i.pi = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeFrameHeader_internal.__zl_static_error_info.56, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, i32 noundef 689, i32 noundef 30, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.59, i64 noundef %i.pg, i64 noundef 10000) #12 ; 2 uses
  %i.pj = extractvalue { i32, ptr } %i.pi, 0      ; 2 uses
  %i.pk = extractvalue { i32, ptr } %i.pi, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.pj, ptr %i.pk, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #12
  %i.pl = ptrtoint ptr %i.pk to i64
  br label %writeFrameHeader_internal.exit

bb.bd:                                            ; preds = %bb.bb
  %i.pm = icmp samesign ugt i64 %i.pg, 127
  br i1 %i.pm, label %ZL_WC_pushVarint.exit.loopexit.i, label %ZL_WC_pushVarint.exit.i

ZL_WC_pushVarint.exit.loopexit.i:                 ; preds = %bb.bd
  %i.pn = trunc i64 %i.pg to i8
  %i.po = or i8 %i.pn, -128
  store i8 %i.po, ptr %.sroa.8.17.i, align 1, !tbaa !39
  %i.pp = lshr i64 %i.pg, 7
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.8.17.i, i64 1
  br label %ZL_WC_pushVarint.exit.i

ZL_WC_pushVarint.exit.i:                          ; preds = %ZL_WC_pushVarint.exit.loopexit.i, %bb.bd
  %.08.lcssa.i.i.i = phi i64 [ %i.pg, %bb.bd ], [ %i.pp, %ZL_WC_pushVarint.exit.loopexit.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.sroa.8.17.i, %bb.bd ], [ %i.pq, %ZL_WC_pushVarint.exit.loopexit.i ] ; 2 uses
  %i.pr = trunc nuw nsw i64 %.08.lcssa.i.i.i to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 %i.pr, ptr %.0.lcssa.i.i.i, align 1, !tbaa !39
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %.sroa.8.17.i to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.8.17.i, i64 %i.pv ; 2 uses
  %i.px = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.py = load i64, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pw, ptr readonly align 1 %i.px, i64 %i.py, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.py
  %.pr385.pre.i = load i32, ptr %i.af, align 8, !tbaa !17
  br label %thread-pre-split384.i

thread-pre-split384.i:                            ; preds = %ZL_WC_pushVarint.exit.i, %bb.az
  %i.qa = phi i32 [ %i.pa, %bb.az ], [ %.pr385.pre.i, %ZL_WC_pushVarint.exit.i ]
  %.sroa.8.6.i = phi ptr [ %.sroa.8.17.i, %bb.az ], [ %i.pz, %ZL_WC_pushVarint.exit.i ] ; 2 uses
  %i.qb = icmp ugt i32 %i.qa, 20
  br i1 %i.qb, label %thread-pre-split384.i.thread-pre-split384.thread.i_crit_edge, label %bb.bv

thread-pre-split384.i.thread-pre-split384.thread.i_crit_edge: ; preds = %thread-pre-split384.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !67
  br label %thread-pre-split384.thread.i

thread-pre-split384.thread.i:                     ; preds = %thread-pre-split384.i.thread-pre-split384.thread.i_crit_edge, %bb.ba
  %i.qc = phi ptr [ %.pre, %thread-pre-split384.i.thread-pre-split384.thread.i_crit_edge ], [ %i.pc, %bb.ba ]
  %.sroa.8.6539.i = phi ptr [ %.sroa.8.6.i, %thread-pre-split384.i.thread-pre-split384.thread.i_crit_edge ], [ %.sroa.8.17.i, %bb.ba ] ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !38, !range !34, !noundef !35
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.be, label %bb.bv

bb.be:                                            ; preds = %thread-pre-split384.thread.i
  %i.qg = ptrtoint ptr %.sroa.8.6539.i to i64
  %i.qh = ptrtoint ptr %i.n to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 22 uses
  %i.qj = icmp ult i64 %i.qi, 17
  br i1 %i.qj, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.qk = icmp samesign ugt i64 %i.qi, 8
  br i1 %i.qk, label %bb.bg, label %bb.bh, !prof !26

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %.val39.i.i = load i64, ptr %i.n, align 1, !tbaa !42
  %i.ql = xor i64 %.val39.i.i, 7458650908927343033 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.qi
  %i.qn = getelementptr inbounds i8, ptr %i.qm, i64 -8
  %.val40.i.i = load i64, ptr %i.qn, align 1, !tbaa !42
  %i.qo = xor i64 %.val40.i.i, -5812251307325107654 ; 2 uses
  %i.qp = call noundef i64 @llvm.bswap.i64(i64 %i.ql)
  %i.qq = add i64 %i.qp, %i.qi
  %i.qr = add i64 %i.qq, %i.qo
  %i.qs = zext i64 %i.ql to i128
  %i.qt = zext i64 %i.qo to i128
  %i.qu = mul nuw i128 %i.qt, %i.qs               ; 2 uses
  %i.qv = lshr i128 %i.qu, 64
  %i.qw = xor i128 %i.qv, %i.qu
  %i.qx = trunc i128 %i.qw to i64
  %i.qy = add i64 %i.qr, %i.qx                    ; 2 uses
  %i.qz = lshr i64 %i.qy, 37
  %i.ra = xor i64 %i.qz, %i.qy
  %i.rb = mul i64 %i.ra, 1609587791953885689      ; 2 uses
  %i.rc = lshr i64 %i.rb, 32
  %i.rd = xor i64 %i.rc, %i.rb
  br label %XXH_INLINE_XXH3_64bits.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.re = icmp samesign ugt i64 %i.qi, 3
  br i1 %i.re, label %bb.bi, label %bb.bj, !prof !26

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %.val43.i.i = load i32, ptr %i.n, align 1, !tbaa !14
  %i.rf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.qi
  %i.rg = getelementptr inbounds i8, ptr %i.rf, i64 -4
  %.val44.i.i = load i32, ptr %i.rg, align 1, !tbaa !14
  %i.rh = zext i32 %.val44.i.i to i64
  %i.ri = zext i32 %.val43.i.i to i64
  %i.rj = shl nuw i64 %i.ri, 32
  %i.rk = or disjoint i64 %i.rj, %i.rh
  %i.rl = xor i64 %i.rk, -4090762196417718878     ; 5 uses
  %i.rm = call i64 @llvm.fshl.i64(i64 %i.rl, i64 %i.rl, i64 49)
  %i.rn = call i64 @llvm.fshl.i64(i64 %i.rl, i64 %i.rl, i64 24)
  %i.ro = xor i64 %i.rm, %i.rn
  %i.rp = xor i64 %i.ro, %i.rl
  %i.rq = mul i64 %i.rp, -6939452855193903323     ; 2 uses
  %i.rr = lshr i64 %i.rq, 35
  %i.rs = add nuw nsw i64 %i.rr, %i.qi
  %i.rt = xor i64 %i.rs, %i.rq
  %i.ru = mul i64 %i.rt, -6939452855193903323     ; 2 uses
  %i.rv = lshr i64 %i.ru, 28
  %i.rw = xor i64 %i.rv, %i.ru
  br label %XXH_INLINE_XXH3_64bits.exit.i

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i310.i = icmp eq ptr %.sroa.8.6539.i, %i.n
  br i1 %.not.i.i310.i, label %XXH_INLINE_XXH3_64bits.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.rx = load i8, ptr %i.n, align 1, !tbaa !39
  %i.ry = lshr i64 %i.qi, 1
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !39
  %i.sb = getelementptr i8, ptr %i.n, i64 %i.qi
  %i.sc = getelementptr i8, ptr %i.sb, i64 -1
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !39
  %i.se = zext i8 %i.rx to i64
  %i.sf = shl nuw nsw i64 %i.se, 16
  %i.sg = zext i8 %i.sa to i64
  %i.sh = shl nuw nsw i64 %i.sg, 24
  %i.si = or disjoint i64 %i.sh, %i.sf
  %i.sj = zext i8 %i.sd to i64
  %i.sk = or disjoint i64 %i.si, %i.sj
  %i.sl = shl nuw nsw i64 %i.qi, 8
  %i.sm = or disjoint i64 %i.sk, %i.sl
  %i.sn = xor i64 %i.sm, 2267503259
  %i.so = mul i64 %i.sn, -4417276706812531889     ; 2 uses
  %i.sp = lshr i64 %i.so, 29
  %i.sq = xor i64 %i.sp, %i.so
  %i.sr = mul i64 %i.sq, 1609587929392839161      ; 2 uses
  %i.ss = lshr i64 %i.sr, 32
  %i.st = xor i64 %i.ss, %i.sr
  br label %XXH_INLINE_XXH3_64bits.exit.i

bb.bl:                                            ; preds = %bb.be
  %i.su = icmp ult i64 %i.qi, 129
  br i1 %i.su, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.sv = mul i64 %i.qi, -7046029288634856825     ; 4 uses
  %i.sw = icmp samesign ugt i64 %i.qi, 32
  br i1 %i.sw, label %bb.bn, label %XXH3_len_17to128_64b.exit.i.i

end_hunk_0
