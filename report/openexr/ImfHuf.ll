Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfHuf?download=true
inline.NumInlined: 142
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7Imf_3_413hufUncompressEPKciPti:bb.a
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_ZdaPv(ptr noundef nonnull %i.ff) #12
  store ptr null, ptr %i.fe, align 8, !tbaa !62
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16384
  br i1 %exitcond.not.i, label %_ZN7Imf_3_412_GLOBAL__N_115hufFreeDecTableEPNS0_6HufDecE.exit, label %bb.au, !llvm.loop !38

_ZN7Imf_3_412_GLOBAL__N_115hufFreeDecTableEPNS0_6HufDecE.exit: ; preds = %bb.aw
  invoke void @__cxa_rethrow() #14
          to label %bb.ec unwind label %bb.dv

bb.ax:                                            ; preds = %bb.ap
  br i1 %.not69.i, label %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit, label %.lr.ph65.preheader.i

.lr.ph65.preheader.i:                             ; preds = %bb.ax
  %i.fg = zext nneg i32 %i.f to i64
  %i.fh = add nuw nsw i32 %i.h, 1
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.loopexit.i, %.lr.ph65.preheader.i
  %indvars.iv68.i = phi i64 [ %i.fg, %.lr.ph65.preheader.i ], [ %indvars.iv.next69.i, %.loopexit.i ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv68.i
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !13 ; 2 uses
  %i.fk = lshr i64 %i.fj, 6                       ; 3 uses
  %i.fl = and i64 %i.fj, 63                       ; 6 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32          ; 2 uses
  %i.fn = lshr i64 %i.fk, %i.fl
  %.not49.i = icmp eq i64 %i.fn, 0
  br i1 %.not49.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph65.i
  %i.fo = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef nonnull @.str.5)
          to label %.invoke215 unwind label %bb.az

common.resume.i80:                                ; preds = %bb.bn, %bb.bd, %bb.az
  %.sink.i81 = phi ptr [ %i.ic, %bb.bn ], [ %i.fv, %bb.bd ], [ %i.fo, %bb.az ]
  %common.resume.op.i82 = phi { ptr, i32 } [ %i.id, %bb.bn ], [ %i.fw, %bb.bd ], [ %i.fp, %bb.az ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink.i81) #13
  br label %.body78

bb.az:                                            ; preds = %bb.ay
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i80

bb.ba:                                            ; preds = %.lr.ph65.i
  %i.fq = icmp samesign ugt i64 %i.fl, 14
  br i1 %i.fq, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fr = add nsw i64 %i.fl, -14
  %i.fs = lshr i64 %i.fk, %i.fr
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.fs ; 5 uses
  %i.fu = load i32, ptr %i.ft, align 8            ; 2 uses
  %.mask55.i = and i32 %i.fu, 255
  %.not54.i = icmp eq i32 %.mask55.i, 0
  br i1 %.not54.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fv = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull @.str.5)
          to label %.invoke215 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i80

bb.be:                                            ; preds = %bb.bb
  %i.fx = add i32 %i.fu, 256                      ; 2 uses
  store i32 %i.fx, ptr %i.ft, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !62 ; 9 uses
  %i.ga = ptrtoaddr ptr %i.fz to i64
  %.not56.i = icmp eq ptr %i.fz, null
  br i1 %.not56.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gb = ashr exact i32 %i.fx, 8                 ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i32 %i.gb, 0
  %i.ge = shl nsw i64 %i.gc, 2
  %i.gf = select i1 %i.gd, i64 -1, i64 %i.ge
  %i.gg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gf) #11
          to label %.noexc91 unwind label %.loopexit ; 8 uses

.noexc91:                                         ; preds = %bb.bf
  store ptr %i.gg, ptr %i.fy, align 8, !tbaa !62
  %i.gh = load i32, ptr %i.ft, align 8
  %i.gi = ashr i32 %i.gh, 8                       ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %.lr.ph.preheader.i, label %._crit_edge.i83

.lr.ph.preheader.i:                               ; preds = %.noexc91
  %i.gk = ptrtoaddr ptr %i.gg to i64
  %i.gl = add nsw i32 %i.gi, -1
  %wide.trip.count.i = zext i32 %i.gl to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.gi, 9
  %i.gm = sub i64 %i.ga, %i.gk
  %diff.check = icmp ugt i64 %i.gm, -32
  %or.cond321 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond321, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load = load <4 x i32>, ptr %i.gn, align 4, !tbaa !16
  %wide.load233 = load <4 x i32>, ptr %i.go, align 4, !tbaa !16
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> %wide.load, ptr %i.gp, align 4, !tbaa !16
  store <4 x i32> %wide.load233, ptr %i.gq, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i83, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i84.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i84.prol = phi i64 [ %indvars.iv.next.i85.prol, %.lr.ph.i.prol ], [ %indvars.iv.i84.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i84.prol
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !16
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i84.prol
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !16
  %indvars.iv.next.i85.prol = add nuw nsw i64 %indvars.iv.i84.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !40

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i84.unr = phi i64 [ %indvars.iv.i84.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i85.prol, %.lr.ph.i.prol ]
  %i.gv = sub nsw i64 %indvars.iv.i84.ph, %wide.trip.count.i
  %i.gw = icmp ugt i64 %i.gv, -4
  br i1 %i.gw, label %._crit_edge.i83, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i85.3, %.lr.ph.i ], [ %indvars.iv.i84.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i84
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !16
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i84
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !16
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i85
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !16
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i85
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !16
  %indvars.iv.next.i85.1 = add nuw nsw i64 %indvars.iv.i84, 2 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i85.1
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !16
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i85.1
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !16
  %indvars.iv.next.i85.2 = add nuw nsw i64 %indvars.iv.i84, 3 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i85.2
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !16
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i85.2
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !16
  %indvars.iv.next.i85.3 = add nuw nsw i64 %indvars.iv.i84, 4 ; 2 uses
  %exitcond.not.i86.3 = icmp eq i64 %indvars.iv.next.i85.3, %wide.trip.count.i
  br i1 %exitcond.not.i86.3, label %._crit_edge.i83, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i83:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.noexc91
  tail call void @_ZdaPv(ptr noundef nonnull %i.fz) #12
  %.pre.i = load ptr, ptr %i.fy, align 8, !tbaa !62
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hj = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #11
          to label %.noexc92 unwind label %.loopexit ; 2 uses

.noexc92:                                         ; preds = %bb.bg
  store ptr %i.hj, ptr %i.fy, align 8, !tbaa !62
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc92, %._crit_edge.i83
  %i.hk = phi ptr [ %i.hj, %.noexc92 ], [ %.pre.i, %._crit_edge.i83 ]
  %i.hl = load i32, ptr %i.ft, align 8
  %i.hm = ashr i32 %i.hl, 8
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr [4 x i8], ptr %i.hk, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 -4
  %i.hq = trunc nuw nsw i64 %indvars.iv68.i to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !16
  br label %.loopexit.i

bb.bi:                                            ; preds = %bb.ba
  %.not50.i = icmp eq i64 %i.fl, 0
  br i1 %.not50.i, label %.loopexit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hr = sub nuw nsw i64 14, %i.fl
  %i.hs = shl i64 %i.fk, %i.hr
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.hs
  %i.hu = lshr exact i32 16384, %i.fm
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = trunc nuw nsw i64 %indvars.iv68.i to i32
  %i.hx = shl nuw nsw i32 %i.hw, 8
  %i.hy = or disjoint i32 %i.hx, %i.fm
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bo, %bb.bj
  %.060.i = phi i64 [ %i.hv, %bb.bj ], [ %i.ie, %bb.bo ]
  %.04459.i = phi ptr [ %i.ht, %bb.bj ], [ %i.if, %bb.bo ] ; 4 uses
  %i.hz = load i32, ptr %.04459.i, align 8
  %.mask.i = and i32 %i.hz, 255
  %.not52.i = icmp eq i32 %.mask.i, 0
  br i1 %.not52.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ia = getelementptr inbounds nuw i8, ptr %.04459.i, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !62
  %.not53.i = icmp eq ptr %i.ib, null
  br i1 %.not53.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ic = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ic, ptr noundef nonnull @.str.5)
          to label %.invoke215 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i80

bb.bo:                                            ; preds = %bb.bl
  store i32 %i.hy, ptr %.04459.i, align 8
  %i.ie = add nsw i64 %.060.i, -1                 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.04459.i, i64 16
  %.not51.i = icmp eq i64 %i.ie, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.bk, !llvm.loop !42

.loopexit.i:                                      ; preds = %bb.bo, %bb.bi, %bb.bh
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next69.i to i32
  %exitcond71.not.i = icmp eq i32 %i.fh, %lftr.wideiv.i
  br i1 %exitcond71.not.i, label %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit, label %.lr.ph65.i, !llvm.loop !43

_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit: ; preds = %.loopexit.i, %bb.ax
  %i.ig = sext i32 %3 to i64                      ; 2 uses
  %i.ih = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ig ; 6 uses
  %i.ii = add nsw i32 %i.j, 7
  %i.ij = sdiv i32 %i.ii, 8
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %i.dc, i64 %i.ik ; 3 uses
  %i.im = icmp sgt i32 %i.j, 0
  br i1 %i.im, label %.lr.ph339.i, label %._crit_edge340.i

.loopexit210.i:                                   ; preds = %.loopexit209.i, %.lr.ph339.i
  %.1159.lcssa.i = phi ptr [ %i.ip, %.lr.ph339.i ], [ %.9167.i, %.loopexit209.i ] ; 3 uses
  %.1147.lcssa.i = phi ptr [ %.0146335.i, %.lr.ph339.i ], [ %.8154.i, %.loopexit209.i ] ; 2 uses
  %.1134.lcssa.i = phi i64 [ %i.is, %.lr.ph339.i ], [ %.9142.i, %.loopexit209.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.it, %.lr.ph339.i ], [ %.9.i, %.loopexit209.i ] ; 2 uses
  %i.in = icmp ult ptr %.1159.lcssa.i, %i.il
  br i1 %i.in, label %.lr.ph339.i, label %._crit_edge340.i, !llvm.loop !44

.lr.ph339.i:                                      ; preds = %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit, %.loopexit210.i
  %.0132337.i = phi i32 [ %.1.lcssa.i, %.loopexit210.i ], [ 0, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ] ; 2 uses
  %.0133336.i = phi i64 [ %.1134.lcssa.i, %.loopexit210.i ], [ 0, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ]
  %.0146335.i = phi ptr [ %.1147.lcssa.i, %.loopexit210.i ], [ %2, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ] ; 2 uses
  %.0158334.i = phi ptr [ %.1159.lcssa.i, %.loopexit210.i ], [ %i.dc, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ] ; 2 uses
  %i.io = shl i64 %.0133336.i, 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.0158334.i, i64 1 ; 2 uses
  %i.iq = load i8, ptr %.0158334.i, align 1, !tbaa !18
  %i.ir = zext i8 %i.iq to i64
  %i.is = or disjoint i64 %i.io, %i.ir            ; 2 uses
  %i.it = add nsw i32 %.0132337.i, 8              ; 2 uses
  %i.iu = icmp sgt i32 %.0132337.i, 5
  br i1 %i.iu, label %.lr.ph329.i, label %.loopexit210.i

.lr.ph329.i:                                      ; preds = %.lr.ph339.i, %.loopexit209.i
  %.1327.i = phi i32 [ %.9.i, %.loopexit209.i ], [ %i.it, %.lr.ph339.i ] ; 4 uses
  %.1134326.i = phi i64 [ %.9142.i, %.loopexit209.i ], [ %i.is, %.lr.ph339.i ] ; 6 uses
  %.1147325.i = phi ptr [ %.8154.i, %.loopexit209.i ], [ %.0146335.i, %.lr.ph339.i ] ; 23 uses
  %.1159324.i = phi ptr [ %.9167.i, %.loopexit209.i ], [ %i.ip, %.lr.ph339.i ] ; 6 uses
  %i.iv = add nsw i32 %.1327.i, -14
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 %.1134326.i, %i.iw
  %i.iy = and i64 %i.ix, 16383
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.iy ; 2 uses
  %.sroa.027.0.copyload.i = load i32, ptr %i.iz, align 8, !tbaa !18 ; 3 uses
  %.sroa.933.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.933.0.copyload.i = load ptr, ptr %.sroa.933.0..sroa_idx.i, align 8, !tbaa !65 ; 2 uses
  %i.ja = shl i32 %.sroa.027.0.copyload.i, 24     ; 2 uses
  %.not186.i = icmp eq i32 %i.ja, 0
  br i1 %.not186.i, label %bb.cg, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph329.i
  %i.jb = ashr exact i32 %i.ja, 24
  %i.jc = sub nsw i32 %.1327.i, %i.jb             ; 5 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.je = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.je, ptr noundef nonnull @.str.6)
          to label %.invoke215 unwind label %bb.br

common.resume.i95:                                ; preds = %bb.du, %bb.ds, %bb.dq, %bb.dl, %bb.di, %bb.dc, %bb.cz, %bb.cx, %bb.cs, %bb.cp, %bb.ci, %bb.cf, %bb.ca, %bb.bx, %bb.br
  %.sink.i96 = phi ptr [ %i.qo, %bb.du ], [ %i.qh, %bb.ds ], [ %i.qf, %bb.dq ], [ %i.pj, %bb.dl ], [ %i.pf, %bb.di ], [ %i.on, %bb.dc ], [ %i.nv, %bb.cz ], [ %i.ns, %bb.cx ], [ %i.mw, %bb.cs ], [ %i.ms, %bb.cp ], [ %i.la, %bb.ci ], [ %i.kw, %bb.cf ], [ %i.ka, %bb.ca ], [ %i.jw, %bb.bx ], [ %i.je, %bb.br ]
  %common.resume.op.i97 = phi { ptr, i32 } [ %i.qp, %bb.du ], [ %i.qi, %bb.ds ], [ %i.qg, %bb.dq ], [ %i.pk, %bb.dl ], [ %i.pg, %bb.di ], [ %i.oo, %bb.dc ], [ %i.nw, %bb.cz ], [ %i.nt, %bb.cx ], [ %i.mx, %bb.cs ], [ %i.mt, %bb.cp ], [ %i.lb, %bb.ci ], [ %i.kx, %bb.cf ], [ %i.kb, %bb.ca ], [ %i.jx, %bb.bx ], [ %i.jf, %bb.br ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink.i96) #13
  br label %.body78

bb.br:                                            ; preds = %bb.bq
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.bs:                                            ; preds = %bb.bp
  %i.jg = ashr i32 %.sroa.027.0.copyload.i, 8     ; 2 uses
  %i.jh = icmp eq i32 %i.jg, %i.h
  br i1 %i.jh, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.ji = icmp samesign ult i32 %i.jc, 8
  br i1 %i.ji, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jj = shl i64 %.1134326.i, 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.1159324.i, i64 1
  %i.jl = load i8, ptr %.1159324.i, align 1, !tbaa !18
  %i.jm = zext i8 %i.jl to i64
  %i.jn = or disjoint i64 %i.jj, %i.jm
  %i.jo = or disjoint i32 %i.jc, 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.2160.i = phi ptr [ %i.jk, %bb.bu ], [ %.1159324.i, %bb.bt ] ; 4 uses
  %.2135.i = phi i64 [ %i.jn, %bb.bu ], [ %.1134326.i, %bb.bt ] ; 5 uses
  %.2.i = phi i32 [ %i.jo, %bb.bu ], [ %i.jc, %bb.bt ]
  %i.jp = add nsw i32 %.2.i, -8                   ; 5 uses
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = lshr i64 %.2135.i, %i.jq                ; 5 uses
  %i.js = trunc i64 %i.jr to i8                   ; 4 uses
  %i.jt = and i64 %i.jr, 255                      ; 5 uses
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %.1147325.i, i64 %i.jt
  %i.jv = icmp ugt ptr %i.ju, %i.ih
  br i1 %i.jv, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.jw = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jw, ptr noundef nonnull @.str.7)
          to label %.invoke215 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.by:                                            ; preds = %bb.bv
  %i.jy = getelementptr inbounds i8, ptr %.1147325.i, i64 -2 ; 2 uses
  %i.jz = icmp ult ptr %i.jy, %2
  br i1 %i.jz, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ka = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ka, ptr noundef nonnull @.str)
          to label %.invoke215 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.cb:                                            ; preds = %bb.by
  %i.kc = load i16, ptr %i.jy, align 2, !tbaa !11 ; 3 uses
  %.not190297.i = icmp eq i8 %i.js, 0
  br i1 %.not190297.i, label %.loopexit209.i, label %iter.check272

iter.check272:                                    ; preds = %bb.cb
  %min.iters.check256 = icmp samesign ult i64 %i.jt, 4
  br i1 %min.iters.check256, label %.lr.ph.i99.preheader, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %iter.check272
  %min.iters.check258 = icmp samesign ult i64 %i.jt, 16
  br i1 %min.iters.check258, label %vec.epilog.ph276, label %vector.ph259

vector.ph259:                                     ; preds = %vector.main.loop.iter.check257
  %i.kd = and i64 %i.jr, 12
  %n.vec260 = and i64 %i.jr, 240                  ; 5 uses
  %i.ke = trunc nuw i64 %n.vec260 to i8
  %i.kf = sub i8 %i.js, %i.ke
  %i.kg = shl nuw nsw i64 %n.vec260, 1
  %i.kh = getelementptr i8, ptr %.1147325.i, i64 %i.kg ; 2 uses
  %broadcast.splatinsert261 = insertelement <8 x i16> poison, i16 %i.kc, i64 0
  %broadcast.splat262 = shufflevector <8 x i16> %broadcast.splatinsert261, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph259
  %index264 = phi i64 [ 0, %vector.ph259 ], [ %index.next266, %vector.body263 ] ; 2 uses
  %i.ki = shl i64 %index264, 1
  %next.gep265 = getelementptr i8, ptr %.1147325.i, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep265, i64 16
  store <8 x i16> %broadcast.splat262, ptr %next.gep265, align 2, !tbaa !11
  store <8 x i16> %broadcast.splat262, ptr %i.kj, align 2, !tbaa !11
  %index.next266 = add nuw i64 %index264, 16      ; 2 uses
  %i.kk = icmp eq i64 %index.next266, %n.vec260
  br i1 %i.kk, label %middle.block267, label %vector.body263, !llvm.loop !45

middle.block267:                                  ; preds = %vector.body263
  %cmp.n268 = icmp eq i64 %i.jt, %n.vec260
  br i1 %cmp.n268, label %.loopexit209.i, label %vec.epilog.iter.check274

vec.epilog.iter.check274:                         ; preds = %middle.block267
  %min.epilog.iters.check275 = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check275, label %.lr.ph.i99.preheader, label %vec.epilog.ph276, !prof !66

vec.epilog.ph276:                                 ; preds = %vector.main.loop.iter.check257, %vec.epilog.iter.check274
  %vec.epilog.resume.val269 = phi i64 [ %n.vec260, %vec.epilog.iter.check274 ], [ 0, %vector.main.loop.iter.check257 ]
  %n.vec277 = and i64 %i.jr, 252                  ; 4 uses
  %i.kl = trunc nuw i64 %n.vec277 to i8
  %i.km = sub i8 %i.js, %i.kl
  %i.kn = shl nuw nsw i64 %n.vec277, 1
  %i.ko = getelementptr i8, ptr %.1147325.i, i64 %i.kn ; 2 uses
  %broadcast.splatinsert278 = insertelement <4 x i16> poison, i16 %i.kc, i64 0
  %broadcast.splat279 = shufflevector <4 x i16> %broadcast.splatinsert278, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body280

vec.epilog.vector.body280:                        ; preds = %vec.epilog.vector.body280, %vec.epilog.ph276
  %index281 = phi i64 [ %vec.epilog.resume.val269, %vec.epilog.ph276 ], [ %index.next283, %vec.epilog.vector.body280 ] ; 2 uses
  %i.kp = shl i64 %index281, 1
  %next.gep282 = getelementptr i8, ptr %.1147325.i, i64 %i.kp
  store <4 x i16> %broadcast.splat279, ptr %next.gep282, align 2, !tbaa !11
  %index.next283 = add nuw i64 %index281, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next283, %n.vec277
  br i1 %i.kq, label %vec.epilog.middle.block284, label %vec.epilog.vector.body280, !llvm.loop !46

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body280
  %cmp.n285 = icmp eq i64 %i.jt, %n.vec277
  br i1 %cmp.n285, label %.loopexit209.i, label %.lr.ph.i99.preheader

.lr.ph.i99.preheader:                             ; preds = %iter.check272, %vec.epilog.iter.check274, %vec.epilog.middle.block284
  %.0131299.i.ph = phi i8 [ %i.js, %iter.check272 ], [ %i.kf, %vec.epilog.iter.check274 ], [ %i.km, %vec.epilog.middle.block284 ]
  %.2148298.i.ph = phi ptr [ %.1147325.i, %iter.check272 ], [ %i.kh, %vec.epilog.iter.check274 ], [ %i.ko, %vec.epilog.middle.block284 ]
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.preheader, %.lr.ph.i99
  %.0131299.i = phi i8 [ %i.kr, %.lr.ph.i99 ], [ %.0131299.i.ph, %.lr.ph.i99.preheader ]
  %.2148298.i = phi ptr [ %i.ks, %.lr.ph.i99 ], [ %.2148298.i.ph, %.lr.ph.i99.preheader ] ; 2 uses
  %i.kr = add i8 %.0131299.i, -1                  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.2148298.i, i64 2 ; 2 uses
  store i16 %i.kc, ptr %.2148298.i, align 2, !tbaa !11
  %.not190.i = icmp eq i8 %i.kr, 0
  br i1 %.not190.i, label %.loopexit209.i, label %.lr.ph.i99, !llvm.loop !47

bb.cc:                                            ; preds = %bb.bs
  %i.kt = icmp ult ptr %.1147325.i, %i.ih
  br i1 %i.kt, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ku = trunc i32 %i.jg to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %.1147325.i, i64 2
  store i16 %i.ku, ptr %.1147325.i, align 2, !tbaa !11
  br label %.loopexit209.i

bb.ce:                                            ; preds = %bb.cc
  %i.kw = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.kw, ptr noundef nonnull @.str.7)
          to label %.invoke215 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.cg:                                            ; preds = %.lr.ph329.i
  %.not187.i = icmp eq ptr %.sroa.933.0.copyload.i, null
  br i1 %.not187.i, label %bb.ch, label %.preheader.i

.preheader.i:                                     ; preds = %bb.cg
  %i.ky = ashr exact i32 %.sroa.027.0.copyload.i, 8 ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 0
  br i1 %i.kz, label %.lr.ph312.preheader.i, label %.thread.i

.lr.ph312.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count.i100 = zext nneg i32 %i.ky to i64
  br label %.lr.ph312.i

bb.ch:                                            ; preds = %bb.cg
  %i.la = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.la, ptr noundef nonnull @.str.6)
          to label %.invoke215 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

.lr.ph312.i:                                      ; preds = %bb.cy, %.lr.ph312.preheader.i
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph312.preheader.i ], [ %indvars.iv.next.i103, %bb.cy ] ; 3 uses
  %.3310.i = phi i32 [ %.1327.i, %.lr.ph312.preheader.i ], [ %.4.lcssa.i, %bb.cy ] ; 3 uses
  %.3136309.i = phi i64 [ %.1134326.i, %.lr.ph312.preheader.i ], [ %.4137.lcssa.i, %bb.cy ] ; 2 uses
  %.3161308.i = phi ptr [ %.1159324.i, %.lr.ph312.preheader.i ], [ %.4162.lcssa.i, %bb.cy ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.933.0.copyload.i, i64 %indvars.iv.i101
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !16 ; 3 uses
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !13 ; 2 uses
  %i.lh = and i64 %i.lg, 63                       ; 2 uses
  %i.li = trunc nuw nsw i64 %i.lh to i32          ; 3 uses
  %i.lj = icmp slt i32 %.3310.i, %i.li            ; 2 uses
  %i.lk = icmp ult ptr %.3161308.i, %i.il
  %i.ll = select i1 %i.lj, i1 %i.lk, i1 false
  br i1 %i.ll, label %.lr.ph303.i, label %._crit_edge.i102

.lr.ph303.i:                                      ; preds = %.lr.ph312.i, %.lr.ph303.i
  %.4302.i = phi i32 [ %i.lr, %.lr.ph303.i ], [ %.3310.i, %.lr.ph312.i ]
  %.4137301.i = phi i64 [ %i.lq, %.lr.ph303.i ], [ %.3136309.i, %.lr.ph312.i ]
  %.4162300.i = phi ptr [ %i.ln, %.lr.ph303.i ], [ %.3161308.i, %.lr.ph312.i ] ; 2 uses
  %i.lm = shl i64 %.4137301.i, 8
  %i.ln = getelementptr inbounds nuw i8, ptr %.4162300.i, i64 1 ; 3 uses
  %i.lo = load i8, ptr %.4162300.i, align 1, !tbaa !18
  %i.lp = zext i8 %i.lo to i64
  %i.lq = or disjoint i64 %i.lm, %i.lp            ; 2 uses
  %i.lr = add nsw i32 %.4302.i, 8                 ; 3 uses
  %i.ls = icmp slt i32 %i.lr, %i.li               ; 2 uses
  %i.lt = icmp ult ptr %i.ln, %i.il
  %i.lu = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %i.lu, label %.lr.ph303.i, label %._crit_edge.i102, !llvm.loop !48

._crit_edge.i102:                                 ; preds = %.lr.ph303.i, %.lr.ph312.i
  %.4162.lcssa.i = phi ptr [ %.3161308.i, %.lr.ph312.i ], [ %i.ln, %.lr.ph303.i ] ; 5 uses
  %.4137.lcssa.i = phi i64 [ %.3136309.i, %.lr.ph312.i ], [ %i.lq, %.lr.ph303.i ] ; 5 uses
  %.4.lcssa.i = phi i32 [ %.3310.i, %.lr.ph312.i ], [ %i.lr, %.lr.ph303.i ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.lj, %.lr.ph312.i ], [ %i.ls, %.lr.ph303.i ]
  br i1 %.lcssa.i, label %bb.cy, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.i102
  %i.lv = lshr i64 %i.lg, 6
  %i.lw = sub nuw nsw i32 %.4.lcssa.i, %i.li      ; 5 uses
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = lshr i64 %.4137.lcssa.i, %i.lx
  %notmask.i = shl nsw i64 -1, %i.lh
  %i.lz = xor i64 %notmask.i, -1
  %i.ma = and i64 %i.ly, %i.lz
  %i.mb = icmp eq i64 %i.lv, %i.ma
  br i1 %i.mb, label %bb.ck, label %bb.cy

bb.ck:                                            ; preds = %bb.cj
  %i.mc = trunc nuw nsw i64 %indvars.iv.i101 to i32 ; 5 uses
  %i.md = icmp eq i32 %i.ld, %i.h
  br i1 %i.md, label %bb.cl, label %bb.cu

bb.cl:                                            ; preds = %bb.ck
  %i.me = icmp slt i32 %i.lw, 8
  br i1 %i.me, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.mf = shl i64 %.4137.lcssa.i, 8
  %i.mg = getelementptr inbounds nuw i8, ptr %.4162.lcssa.i, i64 1
  %i.mh = load i8, ptr %.4162.lcssa.i, align 1, !tbaa !18
  %i.mi = zext i8 %i.mh to i64
  %i.mj = or disjoint i64 %i.mf, %i.mi
  %i.mk = add nuw nsw i32 %i.lw, 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.5163.i = phi ptr [ %i.mg, %bb.cm ], [ %.4162.lcssa.i, %bb.cl ] ; 4 uses
  %.5138.i = phi i64 [ %i.mj, %bb.cm ], [ %.4137.lcssa.i, %bb.cl ] ; 5 uses
  %.5.i = phi i32 [ %i.mk, %bb.cm ], [ %i.lw, %bb.cl ]
  %i.ml = add nsw i32 %.5.i, -8                   ; 5 uses
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 %.5138.i, %i.mm                ; 5 uses
  %i.mo = trunc i64 %i.mn to i8                   ; 4 uses
  %i.mp = and i64 %i.mn, 255                      ; 5 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.1147325.i, i64 %i.mp
  %i.mr = icmp ugt ptr %i.mq, %i.ih
  br i1 %i.mr, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.ms = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ms, ptr noundef nonnull @.str.7)
          to label %.invoke215 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.cq:                                            ; preds = %bb.cn
  %i.mu = getelementptr inbounds i8, ptr %.1147325.i, i64 -2 ; 2 uses
  %i.mv = icmp ult ptr %i.mu, %2
  br i1 %i.mv, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.mw = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.mw, ptr noundef nonnull @.str)
          to label %.invoke215 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.ct:                                            ; preds = %bb.cq
  %i.my = load i16, ptr %i.mu, align 2, !tbaa !11 ; 3 uses
  %.not189318.i = icmp eq i8 %i.mo, 0
  br i1 %.not189318.i, label %.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.ct
  %min.iters.check235 = icmp samesign ult i64 %i.mp, 4
  br i1 %min.iters.check235, label %.lr.ph322.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check236 = icmp samesign ult i64 %i.mp, 16
  br i1 %min.iters.check236, label %vec.epilog.ph, label %vector.ph237

vector.ph237:                                     ; preds = %vector.main.loop.iter.check
  %i.mz = and i64 %i.mn, 12
  %n.vec238 = and i64 %i.mn, 240                  ; 5 uses
  %i.na = trunc nuw i64 %n.vec238 to i8
  %i.nb = sub i8 %i.mo, %i.na
  %i.nc = shl nuw nsw i64 %n.vec238, 1
  %i.nd = getelementptr i8, ptr %.1147325.i, i64 %i.nc ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.my, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph237
  %index240 = phi i64 [ 0, %vector.ph237 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %i.ne = shl i64 %index240, 1
  %next.gep = getelementptr i8, ptr %.1147325.i, i64 %i.ne ; 2 uses
  %i.nf = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !11
  store <8 x i16> %broadcast.splat, ptr %i.nf, align 2, !tbaa !11
  %index.next241 = add nuw i64 %index240, 16      ; 2 uses
  %i.ng = icmp eq i64 %index.next241, %n.vec238
  br i1 %i.ng, label %middle.block242, label %vector.body239, !llvm.loop !49

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %i.mp, %n.vec238
  br i1 %cmp.n243, label %.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block242
  %min.epilog.iters.check = icmp eq i64 %i.mz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph322.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec238, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec246 = and i64 %i.mn, 252                  ; 4 uses
  %i.nh = trunc nuw i64 %n.vec246 to i8
  %i.ni = sub i8 %i.mo, %i.nh
  %i.nj = shl nuw nsw i64 %n.vec246, 1
  %i.nk = getelementptr i8, ptr %.1147325.i, i64 %i.nj ; 2 uses
  %broadcast.splatinsert247 = insertelement <4 x i16> poison, i16 %i.my, i64 0
  %broadcast.splat248 = shufflevector <4 x i16> %broadcast.splatinsert247, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index249 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next251, %vec.epilog.vector.body ] ; 2 uses
  %i.nl = shl i64 %index249, 1
  %next.gep250 = getelementptr i8, ptr %.1147325.i, i64 %i.nl
  store <4 x i16> %broadcast.splat248, ptr %next.gep250, align 2, !tbaa !11
  %index.next251 = add nuw i64 %index249, 4       ; 2 uses
  %i.nm = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.nm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n252 = icmp eq i64 %i.mp, %n.vec246
  br i1 %cmp.n252, label %.thread.i, label %.lr.ph322.i.preheader

.lr.ph322.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0129320.i.ph = phi i8 [ %i.mo, %iter.check ], [ %i.nb, %vec.epilog.iter.check ], [ %i.ni, %vec.epilog.middle.block ]
  %.4150319.i.ph = phi ptr [ %.1147325.i, %iter.check ], [ %i.nd, %vec.epilog.iter.check ], [ %i.nk, %vec.epilog.middle.block ]
  br label %.lr.ph322.i

.lr.ph322.i:                                      ; preds = %.lr.ph322.i.preheader, %.lr.ph322.i
  %.0129320.i = phi i8 [ %i.nn, %.lr.ph322.i ], [ %.0129320.i.ph, %.lr.ph322.i.preheader ]
  %.4150319.i = phi ptr [ %i.no, %.lr.ph322.i ], [ %.4150319.i.ph, %.lr.ph322.i.preheader ] ; 2 uses
  %i.nn = add i8 %.0129320.i, -1                  ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.4150319.i, i64 2 ; 2 uses
  store i16 %i.my, ptr %.4150319.i, align 2, !tbaa !11
  %.not189.i = icmp eq i8 %i.nn, 0
  br i1 %.not189.i, label %.thread.i, label %.lr.ph322.i, !llvm.loop !51

bb.cu:                                            ; preds = %bb.ck
  %i.np = icmp ult ptr %.1147325.i, %i.ih
  br i1 %i.np, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.nq = trunc i32 %i.ld to i16
  %i.nr = getelementptr inbounds nuw i8, ptr %.1147325.i, i64 2
  store i16 %i.nq, ptr %.1147325.i, align 2, !tbaa !11
  br label %.thread.i

bb.cw:                                            ; preds = %bb.cu
  %i.ns = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ns, ptr noundef nonnull @.str.7)
          to label %.invoke215 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.cy:                                            ; preds = %bb.cj, %._crit_edge.i102
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %wide.trip.count.i100
  br i1 %exitcond.not.i104, label %.thread.thread.i, label %.lr.ph312.i, !llvm.loop !52

.thread.i:                                        ; preds = %.lr.ph322.i, %middle.block242, %vec.epilog.middle.block, %bb.cv, %bb.ct, %.preheader.i
  %.0130219.i = phi i32 [ %i.mc, %bb.ct ], [ %i.mc, %bb.cv ], [ 0, %.preheader.i ], [ %i.mc, %middle.block242 ], [ %i.mc, %vec.epilog.middle.block ], [ %i.mc, %.lr.ph322.i ]
  %.8166.i = phi ptr [ %.5163.i, %bb.ct ], [ %.4162.lcssa.i, %bb.cv ], [ %.1159324.i, %.preheader.i ], [ %.5163.i, %middle.block242 ], [ %.5163.i, %vec.epilog.middle.block ], [ %.5163.i, %.lr.ph322.i ]
  %.7153.i = phi ptr [ %.1147325.i, %bb.ct ], [ %i.nr, %bb.cv ], [ %.1147325.i, %.preheader.i ], [ %i.nd, %middle.block242 ], [ %i.nk, %vec.epilog.middle.block ], [ %i.no, %.lr.ph322.i ]
  %.8141.i = phi i64 [ %.5138.i, %bb.ct ], [ %.4137.lcssa.i, %bb.cv ], [ %.1134326.i, %.preheader.i ], [ %.5138.i, %middle.block242 ], [ %.5138.i, %vec.epilog.middle.block ], [ %.5138.i, %.lr.ph322.i ]
  %.8.i = phi i32 [ %i.ml, %bb.ct ], [ %i.lw, %bb.cv ], [ %.1327.i, %.preheader.i ], [ %i.ml, %middle.block242 ], [ %i.ml, %vec.epilog.middle.block ], [ %i.ml, %.lr.ph322.i ]
  %i.nu = icmp eq i32 %.0130219.i, %i.ky
  br i1 %i.nu, label %.thread.thread.i, label %.loopexit209.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.cy
  %i.nv = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.nv, ptr noundef nonnull @.str.6)
          to label %.invoke215 unwind label %bb.cz

bb.cz:                                            ; preds = %.thread.thread.i
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

.loopexit209.i:                                   ; preds = %.lr.ph.i99, %middle.block267, %vec.epilog.middle.block284, %.thread.i, %bb.cd, %bb.cb
  %.9167.i = phi ptr [ %.8166.i, %.thread.i ], [ %.1159324.i, %bb.cd ], [ %.2160.i, %bb.cb ], [ %.2160.i, %middle.block267 ], [ %.2160.i, %vec.epilog.middle.block284 ], [ %.2160.i, %.lr.ph.i99 ] ; 2 uses
  %.8154.i = phi ptr [ %.7153.i, %.thread.i ], [ %i.kv, %bb.cd ], [ %.1147325.i, %bb.cb ], [ %i.kh, %middle.block267 ], [ %i.ko, %vec.epilog.middle.block284 ], [ %i.ks, %.lr.ph.i99 ] ; 2 uses
  %.9142.i = phi i64 [ %.8141.i, %.thread.i ], [ %.1134326.i, %bb.cd ], [ %.2135.i, %bb.cb ], [ %.2135.i, %middle.block267 ], [ %.2135.i, %vec.epilog.middle.block284 ], [ %.2135.i, %.lr.ph.i99 ] ; 2 uses
  %.9.i = phi i32 [ %.8.i, %.thread.i ], [ %i.jc, %bb.cd ], [ %i.jp, %bb.cb ], [ %i.jp, %middle.block267 ], [ %i.jp, %vec.epilog.middle.block284 ], [ %i.jp, %.lr.ph.i99 ] ; 3 uses
  %i.nx = icmp sgt i32 %.9.i, 13
  br i1 %i.nx, label %.lr.ph329.i, label %.loopexit210.i, !llvm.loop !53

._crit_edge340.i:                                 ; preds = %.loopexit210.i, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit
  %.0158.lcssa.i = phi ptr [ %i.dc, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ], [ %.1159.lcssa.i, %.loopexit210.i ]
  %.0146.lcssa.i = phi ptr [ %2, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ], [ %.1147.lcssa.i, %.loopexit210.i ] ; 2 uses
end_hunk_0
