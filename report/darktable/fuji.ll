Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fuji?download=true
inline.NumInlined: 45
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6LibRaw22parseAdobeRAFMakernoteEv:bb.a
  %i.kz = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ky)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  store i16 %i.kz, ptr %i.cg, align 4, !tbaa !99
  %i.la = add i32 %.0347699, 8
  %i.lb = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.la)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  store i16 %i.lb, ptr %i.ch, align 2, !tbaa !99
  %i.lc = add i32 %.0347699, 10
  %i.ld = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lc)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  store i16 %i.ld, ptr %i.ci, align 8, !tbaa !99
  %i.le = load i16, ptr %i.bt, align 2, !tbaa !99
  %i.lf = icmp eq i16 %i.le, 8
  br i1 %i.lf, label %.preheader653, label %.thread

.preheader653:                                    ; preds = %bb.bh
  %i.lg = add i32 %.0347699, 12
  %i.lh = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lg)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %.preheader653
  store i16 %i.lh, ptr %i.cj, align 2, !tbaa !99
  %i.li = add i32 %.0347699, 14
  %i.lj = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.li)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  store i16 %i.lj, ptr %i.ck, align 4, !tbaa !99
  %i.lk = add i32 %.0347699, 16
  %i.ll = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lk)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  store i16 %i.ll, ptr %i.cl, align 2, !tbaa !99
  %i.lm = add i32 %.0347699, 18
  %i.ln = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lm)
          to label %.thread.loopexit736 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.loopexit736:                              ; preds = %bb.bk
  store i16 %i.ln, ptr %i.cm, align 8, !tbaa !99
  br label %.thread

bb.bl:                                            ; preds = %bb.ai
  %i.lo = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.lp = add i32 %.0347699, 6
  %i.lq = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lp)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.lr = uitofp reassoc nsz arcp contract afn i16 %i.lq to float ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn olt float %i.lr, 1.000000e+00
  %i.lt = select reassoc nsz arcp contract afn i1 %i.ls, float 1.000000e+00, float %i.lr
  %i.lu = sitofp i16 %i.lo to float
  %i.lv = fdiv reassoc nsz arcp contract afn float %i.lu, %i.lt ; 2 uses
  store float %i.lv, ptr %i.ao, align 8, !tbaa !100
  %i.lw = load float, ptr %i.bs, align 4, !tbaa !101
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.lv
  store float %i.lx, ptr %i.bs, align 4, !tbaa !101
  br label %.thread

bb.bo:                                            ; preds = %bb.ai
  %i.ly = icmp eq i16 %i.cr, -16384
  %i.lz = icmp ugt i16 %i.cu, 3
  %or.cond15 = and i1 %i.ly, %i.lz
  br i1 %or.cond15, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo
  store i16 18761, ptr %1, align 8, !tbaa !131
  store i16 18761, ptr %i.m, align 8, !tbaa !76
  %.not367 = icmp eq i16 %i.cu, 4096
  br i1 %.not367, label %bb.lv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ma = add i32 %.0347699, 12
  invoke void @_ZN16checked_buffer_t11checkoffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ma)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.mb = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.mc = zext i32 %i.cw to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc ; 3 uses
  %i.me = invoke noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.md)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.br
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %i.mg = invoke noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.mf)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc533:                                        ; preds = %.noexc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mi = invoke noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.mh)
          to label %.noexc534 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc534:                                        ; preds = %.noexc533
  %i.mj = icmp eq i32 %i.mi, 1398035031
  %i.mk = icmp ne i16 %i.mg, 0                    ; 2 uses
  %i.ml = add i16 %i.me, -10000
  %i.mm = icmp ult i16 %i.ml, -9999
  %or.cond4.not.i = or i1 %i.mm, %i.mk
  br i1 %or.cond4.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc534
  store i32 1, ptr %i.by, align 4, !tbaa !74
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.bt:                                            ; preds = %.noexc534
  %i.mn = icmp ult i16 %i.me, 10001
  %or.cond6.i = or i1 %i.mn, %i.mk
  br i1 %or.cond6.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 2, ptr %i.by, align 4, !tbaa !74
  store i16 %i.me, ptr %i.bz, align 8, !tbaa !75
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i = icmp eq i16 %i.me, 0
  br i1 %.not.i, label %bb.bw, label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.bw:                                            ; preds = %bb.bv
  %spec.select.i = select i1 %i.mj, i32 4, i32 3
  store i32 %spec.select.i, ptr %i.by, align 4, !tbaa !74
  store i16 %i.mg, ptr %i.bz, align 8, !tbaa !75
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

_ZN6LibRaw23guess_RAFDataGenerationEPh.exit:      ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.mo = icmp ugt i16 %i.cu, 16
  br i1 %i.mo, label %.lr.ph.preheader, label %.loopexit639

.lr.ph.preheader:                                 ; preds = %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit
  %i.mp = add nsw i32 %i.cv, -16
  %wide.trip.count764 = zext nneg i32 %i.mp to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ce
  %indvars.iv761 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next762, %bb.ce ] ; 5 uses
  %i.mq = trunc i64 %indvars.iv761 to i32
  %i.mr = add i32 %i.mq, 12                       ; 2 uses
  invoke void @_ZN16checked_buffer_t11checkoffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.mr)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %.lr.ph
  %i.ms = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv761
  %i.mu = load i64, ptr %i.mt, align 1
  %i.mv = icmp ne i64 %i.mu, 6004499323332481876
  %i.mw = zext i1 %i.mv to i32
  %.not369 = icmp eq i32 %i.mw, 0
  br i1 %.not369, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.mx = trunc i64 %indvars.iv761 to i32
  %i.my = add i32 %i.mx, 10                       ; 2 uses
  %i.mz = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.my)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.na = icmp ugt i16 %i.mz, 125
  br i1 %i.na, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.nb = trunc nuw nsw i64 %indvars.iv761 to i32
  %i.nc = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.my)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  %i.nd = zext i16 %i.nc to i32                   ; 2 uses
  store i32 %i.nd, ptr %i.ca, align 4, !tbaa !97
  store i32 %i.nd, ptr %i.cb, align 4, !tbaa !97
  %i.ne = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.mr)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.cb
  %i.nf = zext i16 %i.ne to i32
  store i32 %i.nf, ptr %i.cc, align 8, !tbaa !97
  %i.ng = add nuw nsw i32 %i.nb, 14
  %i.nh = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ng)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  %i.ni = zext i16 %i.nh to i32
  store i32 %i.ni, ptr %i.cd, align 8, !tbaa !97
  br label %.loopexit639

bb.ce:                                            ; preds = %bb.bx, %bb.bz
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next762, %wide.trip.count764
  br i1 %exitcond765.not, label %.loopexit639, label %.lr.ph, !llvm.loop !117

.loopexit639:                                     ; preds = %bb.ce, %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit, %bb.cd
  %i.nj = load i16, ptr %i.bz, align 8, !tbaa !75 ; 3 uses
  switch i16 %i.nj, label %bb.cf [
    i16 608, label %bb.cz
    i16 609, label %bb.cz
    i16 610, label %bb.cz
    i16 611, label %bb.cz
    i16 612, label %bb.cz
    i16 613, label %bb.cz
    i16 614, label %bb.cz
    i16 615, label %bb.cz
    i16 872, label %bb.cz
    i16 873, label %bb.cz
    i16 874, label %bb.cz
    i16 875, label %bb.cz
  ]

bb.cf:                                            ; preds = %.loopexit639
  %i.nk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.8) #11
  %.not370 = icmp eq i32 %i.nk, 0
  br i1 %.not370, label %bb.cz, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(12) @.str.9) #11
  %.not371 = icmp eq i32 %i.nl, 0
  br i1 %.not371, label %bb.cz, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.10) #11
  %.not372 = icmp eq i32 %i.nm, 0
  br i1 %.not372, label %bb.cz, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(9) @.str.11) #11
  %.not373 = icmp eq i32 %i.nn, 0
  br i1 %.not373, label %bb.cz, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.no = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.12) #11
  %.not374 = icmp eq i32 %i.no, 0
  br i1 %.not374, label %bb.cz, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.np = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.13) #11
  %.not375 = icmp eq i32 %i.np, 0
  br i1 %.not375, label %bb.cz, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.14) #11
  %.not376 = icmp eq i32 %i.nq, 0
  br i1 %.not376, label %bb.cz, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.15) #11
  %.not377 = icmp eq i32 %i.nr, 0
  br i1 %.not377, label %bb.cz, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ns = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.16) #11
  %.not378 = icmp eq i32 %i.ns, 0
  br i1 %.not378, label %bb.cz, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.17) #11
  %.not379 = icmp eq i32 %i.nt, 0
  br i1 %.not379, label %bb.cz, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.18) #11
  %.not380 = icmp eq i32 %i.nu, 0
  br i1 %.not380, label %bb.cz, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.19) #11
  %.not381 = icmp eq i32 %i.nv, 0
  br i1 %.not381, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.20) #11
  %.not382 = icmp eq i32 %i.nw, 0
  br i1 %.not382, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.21) #11
  %.not383 = icmp eq i32 %i.nx, 0
  br i1 %.not383, label %bb.cz, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ny = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.22) #11
  %.not384 = icmp eq i32 %i.ny, 0
  br i1 %.not384, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.23) #11
  %.not385 = icmp eq i32 %i.nz, 0
  br i1 %.not385, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.24) #11
  %.not386 = icmp eq i32 %i.oa, 0
  br i1 %.not386, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ob = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.25) #11
  %.not387 = icmp eq i32 %i.ob, 0
  br i1 %.not387, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.oc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(9) @.str.26) #11
  %.not388 = icmp eq i32 %i.oc, 0
  br i1 %.not388, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.od = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.27) #11
  %.not389 = icmp eq i32 %i.od, 0
  br i1 %.not389, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %.loopexit639, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.not468 = phi i1 [ false, %bb.cz ], [ true, %bb.cy ] ; 2 uses
  switch i16 %i.nj, label %bb.eq [
    i16 17664, label %.thread606
    i16 326, label %bb.db
    i16 329, label %bb.db
    i16 585, label %bb.db
    i16 333, label %bb.dc
    i16 334, label %bb.dc
    i16 335, label %bb.dd
    i16 591, label %bb.dd
    i16 605, label %bb.dd
    i16 861, label %bb.dd
    i16 336, label %bb.de
    i16 337, label %bb.df
    i16 593, label %bb.df
    i16 849, label %bb.df
    i16 1105, label %bb.df
    i16 1361, label %bb.df
    i16 338, label %bb.dg
    i16 339, label %bb.dg
    i16 340, label %bb.dh
    i16 341, label %bb.di
    i16 597, label %bb.dj
    i16 1109, label %bb.dj
    i16 600, label %bb.dk
    i16 603, label %bb.dk
    i16 601, label %bb.dl
    i16 602, label %bb.dm
    i16 1114, label %bb.dm
    i16 604, label %bb.dn
    i16 606, label %bb.do
    i16 607, label %bb.dp
    i16 608, label %bb.dw
    i16 609, label %bb.dz
    i16 610, label %bb.ec
    i16 611, label %bb.eg
    i16 612, label %bb.eh
    i16 613, label %bb.ej
    i16 614, label %bb.ej
    i16 615, label %bb.el
    i16 853, label %bb.em
    i16 872, label %bb.en
    i16 873, label %bb.eo
    i16 874, label %bb.ep
  ]

bb.db:                                            ; preds = %bb.da, %bb.da, %bb.da
  br label %.thread606

bb.dc:                                            ; preds = %bb.da, %bb.da
  br label %.thread606

bb.dd:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da
  br label %.thread606

bb.de:                                            ; preds = %bb.da
  br label %.thread606

bb.df:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  br label %.thread606

bb.dg:                                            ; preds = %bb.da, %bb.da
  br label %.thread606

bb.dh:                                            ; preds = %bb.da
  br label %.thread606

bb.di:                                            ; preds = %bb.da
  br label %.thread606

bb.dj:                                            ; preds = %bb.da, %bb.da
  br label %.thread606

bb.dk:                                            ; preds = %bb.da, %bb.da
  br label %.thread606

bb.dl:                                            ; preds = %bb.da
  br label %.thread606

bb.dm:                                            ; preds = %bb.da, %bb.da
  br label %.thread606

bb.dn:                                            ; preds = %bb.da
  br label %.thread606

bb.do:                                            ; preds = %bb.da
  br label %.thread606

bb.dp:                                            ; preds = %bb.da
  %i.oe = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.28) #11
  %.not463 = icmp eq i32 %i.oe, 0
  br i1 %.not463, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.of = add i32 %.0347699, 8380
  %i.og = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.of)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.og, label %.thread606, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.oh = add i32 %.0347699, 8396
  %i.oi = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.oh)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.oi, label %.thread606, label %bb.ki

bb.du:                                            ; preds = %bb.dp
  %i.oj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.29) #11
  %.not464 = icmp eq i32 %i.oj, 0
  br i1 %.not464, label %.thread606, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ok = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.30) #11
  %.not465 = icmp eq i32 %i.ok, 0
  br i1 %.not465, label %.thread606, label %bb.ki

bb.dw:                                            ; preds = %bb.da
  %i.ol = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.8) #11
  %.not460 = icmp eq i32 %i.ol, 0
  br i1 %.not460, label %.thread606, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.om = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(9) @.str.11) #11
  %.not461 = icmp eq i32 %i.om, 0
  br i1 %.not461, label %.thread606, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.on = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.12) #11
  %.not462 = icmp eq i32 %i.on, 0
  br i1 %.not462, label %.thread606, label %bb.ki

bb.dz:                                            ; preds = %bb.da
  %i.oo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.18) #11
  %.not457 = icmp eq i32 %i.oo, 0
  br i1 %.not457, label %.thread606, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.op = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.15) #11
  %.not458 = icmp eq i32 %i.op, 0
  br i1 %.not458, label %.thread606, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.oq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.16) #11
  %.not459 = icmp eq i32 %i.oq, 0
  br i1 %.not459, label %.thread606, label %bb.ki

bb.ec:                                            ; preds = %bb.da
  %i.or = add i32 %.0347699, 8652
  %i.os = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.or)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.os, label %.thread606, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ot = add i32 %.0347699, 8656
  %i.ou = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ot)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.ou, label %.thread606, label %bb.ki

bb.eg:                                            ; preds = %bb.da
  br label %.thread606

bb.eh:                                            ; preds = %bb.da
  %i.ov = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.27) #11
  %.not455 = icmp eq i32 %i.ov, 0
  br i1 %.not455, label %.thread606, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ow = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.19) #11
  %.not456 = icmp eq i32 %i.ow, 0
  br i1 %.not456, label %.thread606, label %bb.ki

bb.ej:                                            ; preds = %bb.da, %bb.da
  %i.ox = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.23) #11
  %.not453 = icmp eq i32 %i.ox, 0
  br i1 %.not453, label %.thread606, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.oy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.31) #11
  %.not454 = icmp eq i32 %i.oy, 0
  %spec.select532 = select i1 %.not454, i32 3186, i32 8652
  br label %.thread606

bb.el:                                            ; preds = %bb.da
  br label %.thread606

bb.em:                                            ; preds = %bb.da
  br label %.thread606

bb.en:                                            ; preds = %bb.da
  br label %.thread606

bb.eo:                                            ; preds = %bb.da
  br label %.thread606

bb.ep:                                            ; preds = %bb.da
  br label %.thread606

bb.eq:                                            ; preds = %bb.da
  %2 = icmp eq i16 %i.nj, 875
  br i1 %2, label %.thread606, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.oz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.32) #11
  %.not390 = icmp eq i32 %i.oz, 0
  br i1 %.not390, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.pa = add i32 %.0347699, 4960
  %i.pb = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.pa)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.et:                                            ; preds = %bb.es
  br i1 %i.pb, label %.thread606, label %bb.ki

bb.eu:                                            ; preds = %bb.er
  %i.pc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.33) #11
  %.not391 = icmp eq i32 %i.pc, 0
  br i1 %.not391, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.pd = add i32 %.0347699, 4980
  %i.pe = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.pd)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.pe, label %.thread606, label %bb.ki

bb.ex:                                            ; preds = %bb.eu
  %i.pf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.34) #11
  %.not392 = icmp eq i32 %i.pf, 0
  br i1 %.not392, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.pg = add i32 %.0347699, 5040
  %i.ph = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.pg)
          to label %bb.ez unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ez:                                            ; preds = %bb.ey
  br i1 %i.ph, label %.thread606, label %bb.ki

bb.fa:                                            ; preds = %bb.ex
  %i.pi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.35) #11
  %.not393 = icmp eq i32 %i.pi, 0
  br i1 %.not393, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.36) #11
  %.not394 = icmp eq i32 %i.pj, 0
  br i1 %.not394, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.pk = add i32 %.0347699, 5088
  %i.pl = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.pk)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.pl, label %.thread606, label %bb.ki

bb.fe:                                            ; preds = %bb.fb
  %i.pm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(4) @.str.37) #11
  %.not395 = icmp eq i32 %i.pm, 0
  br i1 %.not395, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.38) #11
  %.not396 = icmp eq i32 %i.pn, 0
  br i1 %.not396, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.po = add i32 %.0347699, 5140
  %i.pp = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.po)
          to label %bb.fh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.pp, label %.thread606, label %bb.ki

bb.fi:                                            ; preds = %bb.ff
  %i.pq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(4) @.str.39) #11
  %.not397 = icmp eq i32 %i.pq, 0
  br i1 %.not397, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.pr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(4) @.str.40) #11
  %.not398 = icmp eq i32 %i.pr, 0
  br i1 %.not398, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ps = add i32 %.0347699, 5144
  %i.pt = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ps)
          to label %bb.fl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.pt, label %.thread606, label %bb.ki

bb.fm:                                            ; preds = %bb.fj
  %i.pu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.41) #11
  %.not399 = icmp eq i32 %i.pu, 0
  br i1 %.not399, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.pv = add i32 %.0347699, 5152
  %i.pw = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.pv)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.pw, label %.thread606, label %bb.ki

bb.fp:                                            ; preds = %bb.fm
  %i.px = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.42) #11
  %.not400 = icmp eq i32 %i.px, 0
  br i1 %.not400, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.py = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.29) #11
  %.not401 = icmp eq i32 %i.py, 0
  br i1 %.not401, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.pz = add i32 %.0347699, 5160
  %i.qa = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.pz)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.qa, label %.thread606, label %bb.ki

bb.ft:                                            ; preds = %bb.fq
  %i.qb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.15) #11
  %.not402 = icmp eq i32 %i.qb, 0
  br i1 %.not402, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.16) #11
  %.not403 = icmp eq i32 %i.qc, 0
  br i1 %.not403, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.qd = add i32 %.0347699, 8528
  %i.qe = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.qd)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.qe, label %.thread606, label %bb.ki

bb.fx:                                            ; preds = %bb.fu
  %i.qf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(4) @.str.43) #11
  %.not404 = icmp eq i32 %i.qf, 0
  br i1 %.not404, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.44) #11
  %.not405 = icmp eq i32 %i.qg, 0
  br i1 %.not405, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.qh = add i32 %.0347699, 5192
  %i.qi = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.qh)
          to label %bb.ga unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.qi, label %.thread606, label %bb.ki

bb.gb:                                            ; preds = %bb.fy
  %i.qj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.45) #11
  %.not406 = icmp eq i32 %i.qj, 0
  br i1 %.not406, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.qk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.46) #11
  %.not407 = icmp eq i32 %i.qk, 0
  br i1 %.not407, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ql = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.47) #11
  %.not408 = icmp eq i32 %i.ql, 0
  br i1 %.not408, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %bb.gb
  %i.qm = add i32 %.0347699, 5240
  %i.qn = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.qm)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gf:                                            ; preds = %bb.ge
  br i1 %i.qn, label %.thread606, label %bb.ki

bb.gg:                                            ; preds = %bb.gd
  %i.qo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.48) #11
  %.not409 = icmp eq i32 %i.qo, 0
  br i1 %.not409, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.qp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.49) #11
  %.not410 = icmp eq i32 %i.qp, 0
  br i1 %.not410, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.qq = add i32 %.0347699, 5252
  %i.qr = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.qq)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.qr, label %.thread606, label %bb.ki

end_hunk_0
begin_hunk_1_@_ZN6LibRaw22parseAdobeRAFMakernoteEv:bb.a
  %.not431 = icmp eq i32 %i.sy, 0
  br i1 %.not431, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.sz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(10) @.str.14) #11
  %.not432 = icmp eq i32 %i.sz, 0
  br i1 %.not432, label %bb.is, label %bb.iu

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.ta = add i32 %.0347699, 3250
  %i.tb = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ta)
          to label %bb.it unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.it:                                            ; preds = %bb.is
  br i1 %i.tb, label %.thread606, label %bb.ki

bb.iu:                                            ; preds = %bb.ir
  %i.tc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(12) @.str.9) #11
  %.not433 = icmp eq i32 %i.tc, 0
  br i1 %.not433, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.td = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.10) #11
  %.not434 = icmp eq i32 %i.td, 0
  br i1 %.not434, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.te = add i32 %.0347699, 3262
  %i.tf = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.te)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ix:                                            ; preds = %bb.iw
  br i1 %i.tf, label %.thread606, label %bb.ki

bb.iy:                                            ; preds = %bb.iv
  %i.tg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.22) #11
  %.not435 = icmp eq i32 %i.tg, 0
  br i1 %.not435, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %i.th = add i32 %.0347699, 3278
  %i.ti = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.th)
          to label %bb.ja unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ja:                                            ; preds = %bb.iz
  br i1 %i.ti, label %.thread606, label %bb.ki

bb.jb:                                            ; preds = %bb.iy
  %i.tj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.24) #11
  %.not436 = icmp eq i32 %i.tj, 0
  br i1 %.not436, label %bb.jc, label %bb.je

bb.jc:                                            ; preds = %bb.jb
  %i.tk = add i32 %.0347699, 3310
  %i.tl = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.tk)
          to label %bb.jd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jd:                                            ; preds = %bb.jc
  br i1 %i.tl, label %.thread606, label %bb.ki

bb.je:                                            ; preds = %bb.jb
  %i.tm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(13) @.str.55) #11
  %.not437 = icmp eq i32 %i.tm, 0
  br i1 %.not437, label %bb.jf, label %bb.jm

bb.jf:                                            ; preds = %bb.je
  %i.tn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.56) #11
  %.not438 = icmp eq i32 %i.tn, 0
  br i1 %.not438, label %.thread606, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.to = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.57) #11
  %.not439 = icmp eq i32 %i.to, 0
  br i1 %.not439, label %.thread606, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.tp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.58) #11
  %.not440 = icmp eq i32 %i.tp, 0
  br i1 %.not440, label %.thread606, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.tq = add i32 %.0347699, 6636
  %i.tr = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.tq)
          to label %bb.jj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jj:                                            ; preds = %bb.ji
  br i1 %i.tr, label %.thread606, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ts = add i32 %.0347699, 6644
  %i.tt = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ts)
          to label %bb.jl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jl:                                            ; preds = %bb.jk
  br i1 %i.tt, label %.thread606, label %bb.ki

bb.jm:                                            ; preds = %bb.je
  %i.tu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.59) #11
  %.not441 = icmp eq i32 %i.tu, 0
  br i1 %.not441, label %bb.jn, label %bb.js

bb.jn:                                            ; preds = %bb.jm
  %i.tv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.57) #11
  %.not442 = icmp eq i32 %i.tv, 0
  br i1 %.not442, label %.thread606, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.tw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.60) #11
  %.not443 = icmp eq i32 %i.tw, 0
  br i1 %.not443, label %.thread606, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.tx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.61) #11
  %.not444 = icmp eq i32 %i.tx, 0
  br i1 %.not444, label %.thread606, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ty = add i32 %.0347699, 5032
  %i.tz = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ty)
          to label %bb.jr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jr:                                            ; preds = %bb.jq
  br i1 %i.tz, label %.thread606, label %bb.ki

bb.js:                                            ; preds = %bb.jm
  %i.ua = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(4) @.str.62) #11
  %.not445 = icmp eq i32 %i.ua, 0
  br i1 %.not445, label %bb.jt, label %bb.jw

bb.jt:                                            ; preds = %bb.js
  %i.ub = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.57) #11
  %.not446 = icmp eq i32 %i.ub, 0
  br i1 %.not446, label %.thread606, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.uc = add i32 %.0347699, 5008
  %i.ud = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.uc)
          to label %bb.jv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jv:                                            ; preds = %bb.ju
  br i1 %i.ud, label %.thread606, label %bb.ki

bb.jw:                                            ; preds = %bb.js
  %i.ue = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.63) #11
  %.not447 = icmp eq i32 %i.ue, 0
  br i1 %.not447, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.uf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.57) #11
  %.not448 = icmp eq i32 %i.uf, 0
  br i1 %.not448, label %.thread606, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ug = add i32 %.0347699, 4744
  %i.uh = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ug)
          to label %bb.jz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jz:                                            ; preds = %bb.jy
  br i1 %i.uh, label %.thread606, label %bb.ki

bb.ka:                                            ; preds = %bb.jw
  %i.ui = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(4) @.str.64) #11
  %.not449 = icmp eq i32 %i.ui, 0
  br i1 %.not449, label %bb.kb, label %bb.ki

bb.kb:                                            ; preds = %bb.ka
  %i.uj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.57) #11
  %.not450 = icmp eq i32 %i.uj, 0
  br i1 %.not450, label %.thread606, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.uk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.65) #11
  %.not451 = icmp eq i32 %i.uk, 0
  br i1 %.not451, label %.thread606, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ul = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(5) @.str.66) #11
  %.not452 = icmp eq i32 %i.ul, 0
  br i1 %.not452, label %.thread606, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.um = add i32 %.0347699, 4740
  %i.un = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.um)
          to label %bb.kf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kf:                                            ; preds = %bb.ke
  br i1 %i.un, label %.thread606, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.uo = add i32 %.0347699, 4824
  %i.up = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.uo)
          to label %bb.kh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kh:                                            ; preds = %bb.kg
  br i1 %i.up, label %.thread606, label %bb.ki

bb.ki:                                            ; preds = %bb.hm, %bb.fd, %bb.hp, %bb.gj, %bb.ht, %bb.fo, %bb.hy, %bb.gm, %bb.ic, %bb.ez, %bb.if, %bb.gp, %bb.ii, %bb.fs, %bb.il, %bb.gs, %bb.ip, %bb.fh, %bb.it, %bb.gv, %bb.ix, %bb.fw, %bb.ja, %bb.gy, %bb.jd, %bb.ew, %bb.hb, %bb.jl, %bb.ga, %bb.jr, %bb.he, %bb.jv, %bb.fl, %bb.jz, %bb.hj, %bb.kh, %bb.et, %bb.ei, %bb.ef, %bb.dv, %bb.dt, %bb.gf, %bb.ka, %bb.eb, %bb.dy
  %.not466 = icmp eq i32 %.0338700, 0
  br i1 %.not466, label %.thread, label %.thread606

.thread606:                                       ; preds = %bb.hm, %bb.fd, %bb.hp, %bb.gj, %bb.ht, %bb.fo, %bb.hy, %bb.gm, %bb.ic, %bb.ez, %bb.if, %bb.gp, %bb.ii, %bb.fs, %bb.il, %bb.gs, %bb.ip, %bb.fh, %bb.it, %bb.gv, %bb.ix, %bb.fw, %bb.ja, %bb.gy, %bb.jd, %bb.ew, %bb.hb, %bb.jl, %bb.ga, %bb.jr, %bb.he, %bb.jv, %bb.fl, %bb.jz, %bb.hj, %bb.kh, %bb.et, %bb.ei, %bb.ef, %bb.dv, %bb.dt, %bb.gf, %bb.ea, %bb.eb, %bb.dx, %bb.dy, %bb.hw, %bb.jf, %bb.jj, %bb.jg, %bb.jn, %bb.jt, %bb.jx, %bb.kb, %bb.kf, %bb.kd, %bb.eq, %bb.ek, %bb.hh, %bb.ej, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.jh, %bb.eh, %bb.jp, %bb.eg, %bb.jo, %bb.ed, %bb.dz, %bb.dw, %bb.dr, %bb.da, %bb.du, %bb.kc, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.ki
  %.1339609 = phi i32 [ %.0338700, %bb.ki ], [ 5084, %bb.fd ], [ 8424, %bb.hp ], [ 5248, %bb.gj ], [ 8456, %bb.ht ], [ 5148, %bb.fo ], [ 8652, %bb.hy ], [ 5296, %bb.gm ], [ 8652, %bb.ic ], [ 5036, %bb.ez ], [ 8670, %bb.if ], [ 6068, %bb.gp ], [ 2878, %bb.ii ], [ 5156, %bb.fs ], [ 2880, %bb.il ], [ 6180, %bb.gs ], [ 3186, %bb.ip ], [ 5136, %bb.fh ], [ 3246, %bb.it ], [ 6208, %bb.gv ], [ 3258, %bb.ix ], [ 8524, %bb.fw ], [ 3274, %bb.ja ], [ 8212, %bb.gy ], [ 3306, %bb.jd ], [ 4976, %bb.ew ], [ 3162, %bb.hb ], [ 6640, %bb.jl ], [ 5188, %bb.ga ], [ 5028, %bb.jr ], [ 8312, %bb.he ], [ 5004, %bb.jv ], [ 5140, %bb.fl ], [ 4740, %bb.jz ], [ 8392, %bb.hj ], [ 4820, %bb.kh ], [ 4956, %bb.et ], [ 2878, %bb.ei ], [ 8652, %bb.ef ], [ 8420, %bb.dv ], [ 8392, %bb.dt ], [ 5236, %bb.gf ], [ 8524, %bb.ea ], [ 8648, %bb.hw ], [ 6632, %bb.jf ], [ 6632, %bb.jj ], [ 6640, %bb.jg ], [ 5028, %bb.jn ], [ 5004, %bb.jt ], [ 4740, %bb.jx ], [ 4736, %bb.kb ], [ 4736, %bb.kf ], [ 4820, %bb.kd ], [ 3306, %bb.eq ], [ %spec.select532, %bb.ek ], [ 8376, %bb.hh ], [ 3186, %bb.ej ], [ 3274, %bb.ep ], [ 3162, %bb.eo ], [ 3258, %bb.en ], [ 6208, %bb.em ], [ 3246, %bb.el ], [ 6640, %bb.jh ], [ 8670, %bb.eh ], [ 5028, %bb.jp ], [ 2880, %bb.eg ], [ 5028, %bb.jo ], [ 8648, %bb.ed ], [ 8312, %bb.dz ], [ 8424, %bb.dw ], [ 8456, %bb.dx ], [ 5136, %bb.db ], [ 8376, %bb.dr ], [ 5036, %bb.da ], [ 5156, %bb.du ], [ 4736, %bb.kc ], [ 8212, %bb.do ], [ 5148, %bb.dn ], [ 5156, %bb.dm ], [ 4976, %bb.dl ], [ 5084, %bb.dk ], [ 4956, %bb.dj ], [ 6068, %bb.di ], [ 6180, %bb.dh ], [ 5188, %bb.dg ], [ 5296, %bb.df ], [ 5140, %bb.de ], [ 5248, %bb.dd ], [ 5236, %bb.dc ], [ 8456, %bb.dy ], [ 8524, %bb.eb ], [ 8420, %bb.hm ] ; 4 uses
  %i.uq = add i32 %.1339609, %i.cw                ; 5 uses
  %i.ur = invoke noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.uq)
          to label %bb.kj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kj:                                            ; preds = %.thread606
  br i1 %i.ur, label %bb.kk, label %.thread

bb.kk:                                            ; preds = %bb.kj
  %i.us = load i16, ptr %i.bz, align 8, !tbaa !75
  %.not467 = icmp eq i16 %i.us, 0
  br i1 %.not467, label %bb.kl, label %bb.kp

bb.kl:                                            ; preds = %bb.kk
  %i.ut = add i32 %i.uq, -6
  %i.uu = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ut)
          to label %bb.km unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.km:                                            ; preds = %bb.kl
  %i.uv = zext i16 %i.uu to i32                   ; 2 uses
  store i32 %i.uv, ptr %i.ca, align 4, !tbaa !97
  store i32 %i.uv, ptr %i.cb, align 4, !tbaa !97
  %i.uw = add i32 %.1339609, %.0347699
  %i.ux = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.uw)
          to label %bb.kn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kn:                                            ; preds = %bb.km
  %i.uy = zext i16 %i.ux to i32
  store i32 %i.uy, ptr %i.cc, align 8, !tbaa !97
  %i.uz = add i32 %i.uq, -2
  %i.va = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.uz)
          to label %bb.ko unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ko:                                            ; preds = %bb.kn
  %i.vb = zext i16 %i.va to i32
  store i32 %i.vb, ptr %i.cd, align 8, !tbaa !97
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kk
  %i.vc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103
  %i.vd = icmp sgt i32 %i.vc, 0
  br i1 %i.vd, label %.lr.ph686, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK21libraw_static_table_tixEj.exit547, %bb.kp
  %.3335.lcssa = phi i32 [ %i.uq, %bb.kp ], [ %i.xh, %_ZNK21libraw_static_table_tixEj.exit547 ] ; 2 uses
  %i.ve = add nsw i32 %.3335.lcssa, 48
  %spec.select531 = select i1 %.not468, i32 %.3335.lcssa, i32 %i.ve ; 2 uses
  %i.vf = add nsw i32 %spec.select531, 192        ; 2 uses
  %i.vg = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.vf)
          to label %.preheader632 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader632:                                    ; preds = %._crit_edge
  %i.vh = add nsw i32 %spec.select531, 216
  br label %bb.lj

.lr.ph686:                                        ; preds = %bb.kp, %_ZNK21libraw_static_table_tixEj.exit547
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %_ZNK21libraw_static_table_tixEj.exit547 ], [ 0, %bb.kp ] ; 9 uses
  %.3335684 = phi i32 [ %i.xh, %_ZNK21libraw_static_table_tixEj.exit547 ], [ %i.uq, %bb.kp ] ; 4 uses
  %i.vi = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.3335684)
          to label %bb.kq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kq:                                            ; preds = %.lr.ph686
  %i.vj = zext i16 %i.vi to i32                   ; 2 uses
  %i.vk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.vl = zext i32 %i.vk to i64
  %i.vm = icmp samesign ult i64 %indvars.iv766, %i.vl
  br i1 %i.vm, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.vn = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv766
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.ks:                                            ; preds = %bb.kq
  %.not.i535 = icmp eq i32 %i.vk, 0
  br i1 %.not.i535, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.vq = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i = icmp eq ptr %i.vq, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.kr, %bb.ks, %bb.kt, %bb.ku
  %.0.i = phi i32 [ %i.vp, %bb.kr ], [ %i.vr, %bb.ku ], [ 0, %bb.kt ], [ 0, %bb.ks ]
  %i.vs = sext i32 %.0.i to i64
  %i.vt = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  store i32 %i.vj, ptr %i.vu, align 4, !tbaa !97
  %i.vv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.vw = zext i32 %i.vv to i64
  %i.vx = icmp samesign ult i64 %indvars.iv766, %i.vw
  br i1 %i.vx, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.vy = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %indvars.iv766
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit539

bb.kw:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %.not.i536 = icmp eq i32 %i.vv, 0
  br i1 %.not.i536, label %_ZNK21libraw_static_table_tixEj.exit539, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.wb = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i537 = icmp eq ptr %i.wb, null
  br i1 %.not6.i537, label %_ZNK21libraw_static_table_tixEj.exit539, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit539

_ZNK21libraw_static_table_tixEj.exit539:          ; preds = %bb.kv, %bb.kw, %bb.kx, %bb.ky
  %.0.i538 = phi i32 [ %i.wa, %bb.kv ], [ %i.wc, %bb.ky ], [ 0, %bb.kx ], [ 0, %bb.kw ]
  %i.wd = sext i32 %.0.i538 to i64
  %i.we = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  store i32 %i.vj, ptr %i.wf, align 4, !tbaa !97
  %i.wg = add nsw i32 %.3335684, 2
  %i.wh = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.wg)
          to label %bb.kz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kz:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit539
  %i.wi = zext i16 %i.wh to i32
  %i.wj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.wk = zext i32 %i.wj to i64
  %i.wl = icmp samesign ult i64 %indvars.iv766, %i.wk
  br i1 %i.wl, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.wm = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv766
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit543

bb.lb:                                            ; preds = %bb.kz
  %.not.i540 = icmp eq i32 %i.wj, 0
  br i1 %.not.i540, label %_ZNK21libraw_static_table_tixEj.exit543, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.wp = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i541 = icmp eq ptr %i.wp, null
  br i1 %.not6.i541, label %_ZNK21libraw_static_table_tixEj.exit543, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit543

_ZNK21libraw_static_table_tixEj.exit543:          ; preds = %bb.la, %bb.lb, %bb.lc, %bb.ld
  %.0.i542 = phi i32 [ %i.wo, %bb.la ], [ %i.wq, %bb.ld ], [ 0, %bb.lc ], [ 0, %bb.lb ]
  %i.wr = sext i32 %.0.i542 to i64
  %i.ws = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.wr
  store i32 %i.wi, ptr %i.ws, align 8, !tbaa !97
  %i.wt = add nsw i32 %.3335684, 4
  %i.wu = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.wt)
          to label %bb.le unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.le:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit543
  %i.wv = zext i16 %i.wu to i32
  %i.ww = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.wx = zext i32 %i.ww to i64
  %i.wy = icmp samesign ult i64 %indvars.iv766, %i.wx
  br i1 %i.wy, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.wz = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv766
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit547

bb.lg:                                            ; preds = %bb.le
  %.not.i544 = icmp eq i32 %i.ww, 0
  br i1 %.not.i544, label %_ZNK21libraw_static_table_tixEj.exit547, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.xc = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i545 = icmp eq ptr %i.xc, null
  br i1 %.not6.i545, label %_ZNK21libraw_static_table_tixEj.exit547, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit547

_ZNK21libraw_static_table_tixEj.exit547:          ; preds = %bb.lf, %bb.lg, %bb.lh, %bb.li
  %.0.i546 = phi i32 [ %i.xb, %bb.lf ], [ %i.xd, %bb.li ], [ 0, %bb.lh ], [ 0, %bb.lg ]
  %i.xe = sext i32 %.0.i546 to i64
  %i.xf = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  store i32 %i.wv, ptr %i.xg, align 8, !tbaa !97
  %i.xh = add nsw i32 %.3335684, 6                ; 2 uses
  %indvars.iv.next767 = add nuw nsw i64 %indvars.iv766, 1 ; 2 uses
  %i.xi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103
  %i.xj = sext i32 %i.xi to i64
  %i.xk = icmp slt i64 %indvars.iv.next767, %i.xj
  br i1 %i.xk, label %.lr.ph686, label %._crit_edge, !llvm.loop !118

end_hunk_1
