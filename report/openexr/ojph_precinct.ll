Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE:bb.a
  store <2 x ptr> %wide.gep836, ptr %i.ey, align 8, !tbaa !36
  %index.next837 = add nuw i64 %index832, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next837, %n.vec830
  br i1 %i.ez, label %middle.block838, label %vector.body831, !llvm.loop !71

middle.block838:                                  ; preds = %vector.body831
  %cmp.n839 = icmp eq i64 %n.vec830, %wide.trip.count.i
  br i1 %cmp.n839, label %.preheader.i303, label %scalar.ph827.preheader

scalar.ph827.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298, %middle.block838
  %indvars.iv.i300.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298 ], [ %n.vec830, %middle.block838 ]
  br label %scalar.ph827

.preheader.i303:                                  ; preds = %scalar.ph827, %middle.block838
  br i1 %i.ar, label %.lr.ph.i310, label %.lr.ph29.i305

scalar.ph827:                                     ; preds = %scalar.ph827.preheader, %scalar.ph827
  %indvars.iv.i300 = phi i64 [ %indvars.iv.next.i301, %scalar.ph827 ], [ %indvars.iv.i300.ph, %scalar.ph827.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i300
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !35
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i300
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !36
  %indvars.iv.next.i301 = add nuw nsw i64 %indvars.iv.i300, 1 ; 2 uses
  %exitcond.i302 = icmp eq i64 %indvars.iv.next.i301, %wide.trip.count.i
  br i1 %exitcond.i302, label %.preheader.i303, label %scalar.ph827, !llvm.loop !72

.lr.ph29.i305:                                    ; preds = %.lr.ph.i310, %.preheader.i303
  store i64 %.sroa.0183.0.copyload, ptr %6, align 8
  %i.ff = trunc i64 %.sroa.0183.0.copyload to i32 ; 5 uses
  %umax879 = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %xtraiter880 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.fg = icmp samesign ult i64 %umax879, 3
  br i1 %i.fg, label %.epil.preheader878, label %.lr.ph29.i305.new

.lr.ph29.i305.new:                                ; preds = %.lr.ph29.i305
  %unroll_iter884 = and i64 %wide.trip.count40.i, 124
  br label %bb.k

.lr.ph.i310:                                      ; preds = %.preheader.i303, %.lr.ph.i310
  %indvars.iv33.i311 = phi i64 [ %indvars.iv.next34.i312, %.lr.ph.i310 ], [ %wide.trip.count.i, %.preheader.i303 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv33.i311
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.fh, align 8, !tbaa !36
  %indvars.iv.next34.i312 = add nuw nsw i64 %indvars.iv33.i311, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next34.i312, 4294967295
  %exitcond36.not.i313 = icmp eq i64 %i.fi, 16
  br i1 %exitcond36.not.i313, label %.lr.ph29.i305, label %.lr.ph.i310, !llvm.loop !0

bb.k:                                             ; preds = %bb.k, %.lr.ph29.i305.new
  %indvars.iv37.i307 = phi i64 [ 0, %.lr.ph29.i305.new ], [ %indvars.iv.next38.i308.3, %bb.k ] ; 6 uses
  %niter885 = phi i64 [ 0, %.lr.ph29.i305.new ], [ %niter885.next.3, %bb.k ]
  %i.fj = trunc nuw i64 %indvars.iv37.i307 to i32
  %i.fk = sub nuw i32 %spec.select, %i.fj
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv37.i307
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !36
  %i.fp = zext nneg i32 %i.fm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, i8 -1, i64 %i.fp, i1 false)
  %indvars.iv.next38.i308 = or disjoint i64 %indvars.iv37.i307, 1 ; 2 uses
  %i.fq = trunc nuw i64 %indvars.iv.next38.i308 to i32
  %i.fr = sub nuw i32 %spec.select, %i.fq
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = shl nuw i32 1, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !36
  %i.fw = zext nneg i32 %i.ft to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fv, i8 -1, i64 %i.fw, i1 false)
  %indvars.iv.next38.i308.1 = or disjoint i64 %indvars.iv37.i307, 2 ; 2 uses
  %i.fx = trunc nuw i64 %indvars.iv.next38.i308.1 to i32
  %i.fy = sub nuw i32 %spec.select, %i.fx
  %i.fz = shl nuw nsw i32 %i.fy, 1
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308.1
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !36
  %i.gd = zext nneg i32 %i.ga to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gc, i8 -1, i64 %i.gd, i1 false)
  %indvars.iv.next38.i308.2 = or disjoint i64 %indvars.iv37.i307, 3 ; 2 uses
  %i.ge = trunc nuw i64 %indvars.iv.next38.i308.2 to i32
  %i.gf = sub nuw i32 %spec.select, %i.ge
  %i.gg = shl nuw nsw i32 %i.gf, 1
  %i.gh = shl nuw i32 1, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308.2
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !36
  %i.gk = zext nneg i32 %i.gh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gj, i8 -1, i64 %i.gk, i1 false)
  %indvars.iv.next38.i308.3 = add nuw nsw i64 %indvars.iv37.i307, 4 ; 2 uses
  %niter885.next.3 = add i64 %niter885, 4         ; 2 uses
  %niter885.ncmp.3 = icmp eq i64 %niter885.next.3, %unroll_iter884
  br i1 %niter885.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa, label %bb.k, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa: ; preds = %bb.k
  %lcmp.mod882.not = icmp eq i64 %xtraiter880, 0
  br i1 %lcmp.mod882.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, label %.epil.preheader878

.epil.preheader878:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa, %.lr.ph29.i305
  %indvars.iv37.i307.epil.init = phi i64 [ 0, %.lr.ph29.i305 ], [ %indvars.iv.next38.i308.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa ]
  %lcmp.mod883 = icmp ne i64 %xtraiter880, 0
  call void @llvm.assume(i1 %lcmp.mod883)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader878
  %indvars.iv37.i307.epil = phi i64 [ %indvars.iv37.i307.epil.init, %.epil.preheader878 ], [ %indvars.iv.next38.i308.epil, %bb.l ] ; 3 uses
  %epil.iter881 = phi i64 [ 0, %.epil.preheader878 ], [ %epil.iter881.next, %bb.l ]
  %i.gl = trunc nuw i64 %indvars.iv37.i307.epil to i32
  %i.gm = sub nuw i32 %spec.select, %i.gl
  %i.gn = shl nuw nsw i32 %i.gm, 1
  %i.go = shl nuw i32 1, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv37.i307.epil
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36
  %i.gr = zext nneg i32 %i.go to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i8 -1, i64 %i.gr, i1 false)
  %indvars.iv.next38.i308.epil = add nuw nsw i64 %indvars.iv37.i307.epil, 1
  %epil.iter881.next = add i64 %epil.iter881, 1   ; 2 uses
  %epil.iter881.cmp.not = icmp eq i64 %epil.iter881.next, %xtraiter880
  br i1 %epil.iter881.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, label %bb.l, !llvm.loop !73

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315: ; preds = %bb.l, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %wide.trip.count40.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.gt, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !43
  %i.gu = load ptr, ptr %0, align 8, !tbaa !34
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.j
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.f ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8, !tbaa !35 ; 2 uses
  %min.iters.check817 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check817, label %scalar.ph.preheader, label %vector.ph818

vector.ph818:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315
  %n.vec819 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body820

vector.body820:                                   ; preds = %vector.body820, %vector.ph818
  %index821 = phi i64 [ 0, %vector.ph818 ], [ %index.next824, %vector.body820 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index821 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %wide.load = load <2 x i32>, ptr %i.gx, align 4, !tbaa !35
  %wide.load822 = load <2 x i32>, ptr %i.gy, align 4, !tbaa !35
  %i.gz = zext <2 x i32> %wide.load to <2 x i64>
  %i.ha = zext <2 x i32> %wide.load822 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.gw, <2 x i64> %i.gz
  %wide.gep823 = getelementptr inbounds nuw i8, ptr %i.gw, <2 x i64> %i.ha
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index821 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x ptr> %wide.gep, ptr %i.hb, align 8, !tbaa !36
  store <2 x ptr> %wide.gep823, ptr %i.hc, align 8, !tbaa !36
  %index.next824 = add nuw i64 %index821, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next824, %n.vec819
  br i1 %i.hd, label %middle.block825, label %vector.body820, !llvm.loop !74

middle.block825:                                  ; preds = %vector.body820
  %cmp.n = icmp eq i64 %n.vec819, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i320, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, %middle.block825
  %indvars.iv.i317.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315 ], [ %n.vec819, %middle.block825 ]
  br label %scalar.ph

.preheader.i320:                                  ; preds = %scalar.ph, %middle.block825
  br i1 %i.ar, label %.lr.ph.i327, label %.lr.ph29.i322

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i317 = phi i64 [ %indvars.iv.next.i318, %scalar.ph ], [ %indvars.iv.i317.ph, %scalar.ph.preheader ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i317
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !35
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i317
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !36
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i317, 1 ; 2 uses
  %exitcond.i319 = icmp eq i64 %indvars.iv.next.i318, %wide.trip.count.i
  br i1 %exitcond.i319, label %.preheader.i320, label %scalar.ph, !llvm.loop !75

.lr.ph29.i322:                                    ; preds = %.lr.ph.i327, %.preheader.i320
  store i64 %.sroa.0.0.copyload, ptr %7, align 8
  %i.hj = trunc i64 %.sroa.0.0.copyload to i32    ; 2 uses
  %umax887 = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %xtraiter888 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.hk = icmp samesign ult i64 %umax887, 3
  br i1 %i.hk, label %.epil.preheader886, label %.lr.ph29.i322.new

.lr.ph29.i322.new:                                ; preds = %.lr.ph29.i322
  %unroll_iter892 = and i64 %wide.trip.count40.i, 124
  br label %bb.m

.lr.ph.i327:                                      ; preds = %.preheader.i320, %.lr.ph.i327
  %indvars.iv33.i328 = phi i64 [ %indvars.iv.next34.i329, %.lr.ph.i327 ], [ %wide.trip.count.i, %.preheader.i320 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv33.i328
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.hl, align 8, !tbaa !36
  %indvars.iv.next34.i329 = add nuw nsw i64 %indvars.iv33.i328, 1 ; 2 uses
  %i.hm = and i64 %indvars.iv.next34.i329, 4294967295
  %exitcond36.not.i330 = icmp eq i64 %i.hm, 16
  br i1 %exitcond36.not.i330, label %.lr.ph29.i322, label %.lr.ph.i327, !llvm.loop !0

bb.m:                                             ; preds = %bb.m, %.lr.ph29.i322.new
  %indvars.iv37.i324 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %indvars.iv.next38.i325.3, %bb.m ] ; 6 uses
  %niter893 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %niter893.next.3, %bb.m ]
  %i.hn = trunc nuw i64 %indvars.iv37.i324 to i32
  %i.ho = sub nuw i32 %spec.select, %i.hn
  %i.hp = shl nuw nsw i32 %i.ho, 1
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !36
  %i.ht = zext nneg i32 %i.hq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hs, i8 0, i64 %i.ht, i1 false)
  %indvars.iv.next38.i325 = or disjoint i64 %indvars.iv37.i324, 1 ; 2 uses
  %i.hu = trunc nuw i64 %indvars.iv.next38.i325 to i32
  %i.hv = sub nuw i32 %spec.select, %i.hu
  %i.hw = shl nuw nsw i32 %i.hv, 1
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !36
  %i.ia = zext nneg i32 %i.hx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hz, i8 0, i64 %i.ia, i1 false)
  %indvars.iv.next38.i325.1 = or disjoint i64 %indvars.iv37.i324, 2 ; 2 uses
  %i.ib = trunc nuw i64 %indvars.iv.next38.i325.1 to i32
  %i.ic = sub nuw i32 %spec.select, %i.ib
  %i.id = shl nuw nsw i32 %i.ic, 1
  %i.ie = shl nuw i32 1, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.1
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !36
  %i.ih = zext nneg i32 %i.ie to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ig, i8 0, i64 %i.ih, i1 false)
  %indvars.iv.next38.i325.2 = or disjoint i64 %indvars.iv37.i324, 3 ; 2 uses
  %i.ii = trunc nuw i64 %indvars.iv.next38.i325.2 to i32
  %i.ij = sub nuw i32 %spec.select, %i.ii
  %i.ik = shl nuw nsw i32 %i.ij, 1
  %i.il = shl nuw i32 1, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.2
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !36
  %i.io = zext nneg i32 %i.il to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.in, i8 0, i64 %i.io, i1 false)
  %indvars.iv.next38.i325.3 = add nuw nsw i64 %indvars.iv37.i324, 4 ; 2 uses
  %niter893.next.3 = add i64 %niter893, 4         ; 2 uses
  %niter893.ncmp.3 = icmp eq i64 %niter893.next.3, %unroll_iter892
  br i1 %niter893.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, label %bb.m, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa: ; preds = %bb.m
  %lcmp.mod890.not = icmp eq i64 %xtraiter888, 0
  br i1 %lcmp.mod890.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %.epil.preheader886

.epil.preheader886:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, %.lr.ph29.i322
  %indvars.iv37.i324.epil.init = phi i64 [ 0, %.lr.ph29.i322 ], [ %indvars.iv.next38.i325.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa ]
  %lcmp.mod891 = icmp ne i64 %xtraiter888, 0
  call void @llvm.assume(i1 %lcmp.mod891)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader886
  %indvars.iv37.i324.epil = phi i64 [ %indvars.iv37.i324.epil.init, %.epil.preheader886 ], [ %indvars.iv.next38.i325.epil, %bb.n ] ; 3 uses
  %epil.iter889 = phi i64 [ 0, %.epil.preheader886 ], [ %epil.iter889.next, %bb.n ]
  %i.ip = trunc nuw i64 %indvars.iv37.i324.epil to i32
  %i.iq = sub nuw i32 %spec.select, %i.ip
  %i.ir = shl nuw nsw i32 %i.iq, 1
  %i.is = shl nuw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324.epil
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !36
  %i.iv = zext nneg i32 %i.is to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iu, i8 0, i64 %i.iv, i1 false)
  %indvars.iv.next38.i325.epil = add nuw nsw i64 %indvars.iv37.i324.epil, 1
  %epil.iter889.next = add i64 %epil.iter889, 1   ; 2 uses
  %epil.iter889.cmp.not = icmp eq i64 %epil.iter889.next, %xtraiter888
  br i1 %epil.iter889.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %bb.n, !llvm.loop !76

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332: ; preds = %bb.n, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %wide.trip.count40.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.ix, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !43
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.iz = getelementptr inbounds nuw [120 x i8], ptr %i.iy, i64 %indvars.iv605 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !44 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.jd = load i32, ptr %i.y, align 4, !tbaa !33  ; 2 uses
  %.not582 = icmp eq i32 %i.jd, 0
  br i1 %.not582, label %.preheader533, label %.preheader530.lr.ph

.preheader530.lr.ph:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 104
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !45
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !46
  %i.jh = mul i32 %i.jg, %i.jb
  %i.ji = load i32, ptr %i.u, align 8, !tbaa !47
  %i.jj = add i32 %i.jh, %i.ji
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jf, i64 %i.jk
  %i.jm = load ptr, ptr %i.d, align 8
  %i.jn = load ptr, ptr %i.k, align 8
  %i.jo = zext i32 %i.jb to i64
  %.pre = load i32, ptr %i.v, align 8, !tbaa !32
  br label %.preheader530

.preheader533:                                    ; preds = %._crit_edge, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %.not273542 = icmp eq i32 %spec.select, 0
  br i1 %.not273542, label %._crit_edge545, label %.lr.ph544

.preheader530:                                    ; preds = %.preheader530.lr.ph, %._crit_edge
  %i.jp = phi i32 [ %i.jd, %.preheader530.lr.ph ], [ %i.jt, %._crit_edge ]
  %i.jq = phi i32 [ %.pre, %.preheader530.lr.ph ], [ %i.ju, %._crit_edge ]
  %.0266536 = phi i32 [ 0, %.preheader530.lr.ph ], [ %i.jw, %._crit_edge ] ; 3 uses
  %.0267535 = phi ptr [ %i.jl, %.preheader530.lr.ph ], [ %i.jv, %._crit_edge ] ; 2 uses
  %.not583 = icmp eq i32 %i.jq, 0
  br i1 %.not583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader530
  %i.jr = mul i32 %.0266536, %i.ax
  %i.js = mul i32 %.0266536, %i.ff
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre609 = load i32, ptr %i.y, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader530
  %i.jt = phi i32 [ %.pre609, %._crit_edge.loopexit ], [ %i.jp, %.preheader530 ] ; 2 uses
  %i.ju = phi i32 [ %i.kn, %._crit_edge.loopexit ], [ 0, %.preheader530 ]
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %i.jo
  %i.jw = add nuw i32 %.0266536, 1                ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.jt
  br i1 %i.jx, label %.preheader530, label %.preheader533, !llvm.loop !77

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %indvars.iv ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !102
  %i.kb = icmp eq ptr %i.ka, null
  %i.kc = zext i1 %i.kb to i8
  %i.kd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ke = add i32 %i.jr, %i.kd
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kf
  store i8 %i.kc, ptr %i.kg, align 1, !tbaa !41
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !49
  %i.kj = trunc i32 %i.ki to i8
  %i.kk = add i32 %i.js, %i.kd
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.kl
  store i8 %i.kj, ptr %i.km, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = load i32, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %i.ko = zext i32 %i.kn to i64
  %i.kp = icmp samesign ult i64 %indvars.iv.next, %i.ko
  br i1 %i.kp, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge545:                                   ; preds = %._crit_edge541.split, %.preheader533
  store i8 0, ptr %i.cn, align 1, !tbaa !41
  store i8 0, ptr %i.eq, align 1, !tbaa !41
  store i8 0, ptr %i.gt, align 1, !tbaa !41
  store i8 0, ptr %i.ix, align 1, !tbaa !41
  %i.kq = zext nneg i32 %spec.select to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !36
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !41
  %.not274 = icmp eq i8 %i.kt, 0
  %i.ku = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.kv = icmp eq ptr %i.ku, null                 ; 2 uses
  br i1 %.not274, label %bb.t, label %bb.p

.lr.ph544:                                        ; preds = %.preheader533, %._crit_edge541.split
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %._crit_edge541.split ], [ 1, %.preheader533 ] ; 7 uses
  %i.kw = load i32, ptr %i.y, align 4, !tbaa !33
  %i.kx = trunc nuw nsw i64 %indvars.iv594 to i32 ; 8 uses
  %notmask = shl nsw i32 -1, %i.kx
  %i.ky = xor i32 %notmask, -1                    ; 2 uses
  %i.kz = add i32 %i.kw, %i.ky
  %i.la = lshr i32 %i.kz, %i.kx                   ; 2 uses
  %i.lb = load i32, ptr %i.v, align 8, !tbaa !32
  %i.lc = add i32 %i.lb, %i.ky
  %i.ld = lshr i32 %i.lc, %i.kx                   ; 4 uses
  %.not584 = icmp eq i32 %i.la, 0
  br i1 %.not584, label %._crit_edge541.split, label %.preheader529.lr.ph

.preheader529.lr.ph:                              ; preds = %.lr.ph544
  %.not585 = icmp eq i32 %i.ld, 0
  %i.le = add nsw i64 %indvars.iv594, -1          ; 3 uses
  %i.lf = trunc nuw nsw i64 %i.le to i32          ; 3 uses
  %notmask.i337 = shl nsw i32 -1, %i.lf
  %i.lg = xor i32 %notmask.i337, -1               ; 2 uses
  %i.lh = add i32 %i.ax, %i.lg
  %i.li = lshr i32 %i.lh, %i.lf                   ; 8 uses
  %notmask.i345 = shl nsw i32 -1, %i.kx
  %i.lj = xor i32 %notmask.i345, -1               ; 4 uses
  %i.lk = add i32 %i.ax, %i.lj
  %i.ll = lshr i32 %i.lk, %i.kx                   ; 2 uses
  %i.lm = add i32 %i.dc, %i.lj
  %i.ln = lshr i32 %i.lm, %i.kx                   ; 2 uses
  %i.lo = add i32 %i.ff, %i.lg
  %i.lp = lshr i32 %i.lo, %i.lf                   ; 8 uses
  %i.lq = add i32 %i.ff, %i.lj
  %i.lr = lshr i32 %i.lq, %i.kx                   ; 2 uses
  %i.ls = add i32 %i.hj, %i.lj
  %i.lt = lshr i32 %i.ls, %i.kx                   ; 2 uses
  br i1 %.not585, label %._crit_edge541.split, label %.preheader529.lr.ph.split

.preheader529.lr.ph.split:                        ; preds = %.preheader529.lr.ph
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv594
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv594
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.le
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv594
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv594
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.le
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !36 ; 106 uses
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !36 ; 5 uses
  %i.mc = load ptr, ptr %i.lx, align 8, !tbaa !36 ; 5 uses
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !36 ; 106 uses
  %i.me = load ptr, ptr %i.lv, align 8, !tbaa !36 ; 5 uses
  %i.mf = load ptr, ptr %i.lu, align 8, !tbaa !36 ; 5 uses
  %wide.trip.count = zext i32 %i.ld to i64        ; 11 uses
  %i.mg = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.mh = shl i32 %i.li, 1
  %i.mi = shl i32 %i.lp, 1
  %scevgep665 = getelementptr i8, ptr %i.mb, i64 %wide.trip.count
  %scevgep668 = getelementptr i8, ptr %i.mc, i64 %wide.trip.count
  %scevgep671 = getelementptr i8, ptr %i.me, i64 %wide.trip.count
  %scevgep674 = getelementptr i8, ptr %i.mf, i64 %wide.trip.count
  %i.mj = add i32 %i.li, 1
  %i.mk = shl i32 %i.li, 1
  %scevgep677 = getelementptr i8, ptr %i.ma, i64 -1
  %i.ml = shl nuw nsw i64 %wide.trip.count, 1     ; 6 uses
  %scevgep678 = getelementptr i8, ptr %scevgep677, i64 %i.ml
  %scevgep681 = getelementptr i8, ptr %i.ma, i64 -1
  %scevgep682 = getelementptr i8, ptr %scevgep681, i64 %i.ml
  %scevgep685 = getelementptr i8, ptr %i.ma, i64 %i.ml
  %i.mm = add i32 %i.lp, 1
  %i.mn = shl i32 %i.lp, 1
  %scevgep688 = getelementptr i8, ptr %i.md, i64 -1
  %scevgep689 = getelementptr i8, ptr %scevgep688, i64 %i.ml
  %scevgep692 = getelementptr i8, ptr %i.md, i64 -1
  %scevgep693 = getelementptr i8, ptr %scevgep692, i64 %i.ml
  %scevgep696 = getelementptr i8, ptr %i.md, i64 %i.ml
  %min.iters.check = icmp ult i32 %i.ld, 9
  %i.mo = trunc i64 %i.mg to i32                  ; 4 uses
  %i.mp = icmp ugt i64 %i.mg, 4294967295
  %i.mq = trunc i64 %i.mg to i32
  %mul.result = shl i32 %i.mq, 1                  ; 8 uses
  %i.mr = icmp ugt i64 %i.mg, 2147483647
  %min.iters.check813 = icmp ult i32 %i.ld, 17
  %i.ms = and i64 %wide.trip.count, 15            ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  %i.mu = select i1 %i.mt, i64 16, i64 %i.ms      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.mu    ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.mu, 9
  %i.mv = and i64 %wide.trip.count, 7             ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = select i1 %i.mw, i64 8, i64 %i.mv
  %n.vec814 = sub nsw i64 %wide.trip.count, %i.mx ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader529.lr.ph.split, %._crit_edge539
  %.0262540 = phi i32 [ 0, %.preheader529.lr.ph.split ], [ %i.bex, %._crit_edge539 ] ; 14 uses
  %i.my = mul i32 %i.ll, %.0262540
end_hunk_0
begin_hunk_1_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  store <2 x ptr> %wide.gep669, ptr %i.if, align 8, !tbaa !36
  %index.next670 = add nuw i64 %index665, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.ig, label %middle.block671, label %vector.body664, !llvm.loop !130

middle.block671:                                  ; preds = %vector.body664
  %cmp.n672 = icmp eq i64 %n.vec663, %wide.trip.count.i
  br i1 %cmp.n672, label %.preheader.i246, label %scalar.ph660.preheader

scalar.ph660.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, %middle.block671
  %indvars.iv.i243.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240 ], [ %n.vec663, %middle.block671 ]
  br label %scalar.ph660

.preheader.i246:                                  ; preds = %scalar.ph660, %middle.block671
  br i1 %i.dy, label %.lr.ph.i253, label %.lr.ph29.i248

scalar.ph660:                                     ; preds = %scalar.ph660.preheader, %scalar.ph660
  %indvars.iv.i243 = phi i64 [ %indvars.iv.next.i244, %scalar.ph660 ], [ %indvars.iv.i243.ph, %scalar.ph660.preheader ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i243
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !35
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i243
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !36
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %exitcond.i245 = icmp eq i64 %indvars.iv.next.i244, %wide.trip.count.i
  br i1 %exitcond.i245, label %.preheader.i246, label %scalar.ph660, !llvm.loop !131

.lr.ph29.i248:                                    ; preds = %.lr.ph.i253, %.preheader.i246
  store i64 %.sroa.0122.0.copyload, ptr %10, align 8
  %i.im = trunc i64 %.sroa.0122.0.copyload to i32 ; 2 uses
  %umax724 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter725 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.in = icmp samesign ult i64 %umax724, 3
  br i1 %i.in, label %.epil.preheader723, label %.lr.ph29.i248.new

.lr.ph29.i248.new:                                ; preds = %.lr.ph29.i248
  %unroll_iter729 = and i64 %wide.trip.count40.i, 124
  br label %bb.af

.lr.ph.i253:                                      ; preds = %.preheader.i246, %.lr.ph.i253
  %indvars.iv33.i254 = phi i64 [ %indvars.iv.next34.i255, %.lr.ph.i253 ], [ %wide.trip.count.i, %.preheader.i246 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv33.i254
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.io, align 8, !tbaa !36
  %indvars.iv.next34.i255 = add nuw nsw i64 %indvars.iv33.i254, 1 ; 2 uses
  %i.ip = and i64 %indvars.iv.next34.i255, 4294967295
  %exitcond36.not.i256 = icmp eq i64 %i.ip, 16
  br i1 %exitcond36.not.i256, label %.lr.ph29.i248, label %.lr.ph.i253, !llvm.loop !0

bb.af:                                            ; preds = %bb.af, %.lr.ph29.i248.new
  %indvars.iv37.i250 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %indvars.iv.next38.i251.3, %bb.af ] ; 6 uses
  %niter730 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %niter730.next.3, %bb.af ]
  %i.iq = trunc nuw i64 %indvars.iv37.i250 to i32
  %i.ir = sub nuw i32 %spec.select, %i.iq
  %i.is = shl nuw nsw i32 %i.ir, 1
  %i.it = shl nuw i32 1, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !36
  %i.iw = zext nneg i32 %i.it to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iv, i8 0, i64 %i.iw, i1 false)
  %indvars.iv.next38.i251 = or disjoint i64 %indvars.iv37.i250, 1 ; 2 uses
  %i.ix = trunc nuw i64 %indvars.iv.next38.i251 to i32
  %i.iy = sub nuw i32 %spec.select, %i.ix
  %i.iz = shl nuw nsw i32 %i.iy, 1
  %i.ja = shl nuw i32 1, %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !36
  %i.jd = zext nneg i32 %i.ja to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jc, i8 0, i64 %i.jd, i1 false)
  %indvars.iv.next38.i251.1 = or disjoint i64 %indvars.iv37.i250, 2 ; 2 uses
  %i.je = trunc nuw i64 %indvars.iv.next38.i251.1 to i32
  %i.jf = sub nuw i32 %spec.select, %i.je
  %i.jg = shl nuw nsw i32 %i.jf, 1
  %i.jh = shl nuw i32 1, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.1
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !36
  %i.jk = zext nneg i32 %i.jh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jj, i8 0, i64 %i.jk, i1 false)
  %indvars.iv.next38.i251.2 = or disjoint i64 %indvars.iv37.i250, 3 ; 2 uses
  %i.jl = trunc nuw i64 %indvars.iv.next38.i251.2 to i32
  %i.jm = sub nuw i32 %spec.select, %i.jl
  %i.jn = shl nuw nsw i32 %i.jm, 1
  %i.jo = shl nuw i32 1, %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.2
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !36
  %i.jr = zext nneg i32 %i.jo to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jq, i8 0, i64 %i.jr, i1 false)
  %indvars.iv.next38.i251.3 = add nuw nsw i64 %indvars.iv37.i250, 4 ; 2 uses
  %niter730.next.3 = add i64 %niter730, 4         ; 2 uses
  %niter730.ncmp.3 = icmp eq i64 %niter730.next.3, %unroll_iter729
  br i1 %niter730.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, label %bb.af, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa: ; preds = %bb.af
  %lcmp.mod727.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod727.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %.epil.preheader723

.epil.preheader723:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, %.lr.ph29.i248
  %indvars.iv37.i250.epil.init = phi i64 [ 0, %.lr.ph29.i248 ], [ %indvars.iv.next38.i251.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa ]
  %lcmp.mod728 = icmp ne i64 %xtraiter725, 0
  call void @llvm.assume(i1 %lcmp.mod728)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader723
  %indvars.iv37.i250.epil = phi i64 [ %indvars.iv37.i250.epil.init, %.epil.preheader723 ], [ %indvars.iv.next38.i251.epil, %bb.ag ] ; 3 uses
  %epil.iter726 = phi i64 [ 0, %.epil.preheader723 ], [ %epil.iter726.next, %bb.ag ]
  %i.js = trunc nuw i64 %indvars.iv37.i250.epil to i32
  %i.jt = sub nuw i32 %spec.select, %i.js
  %i.ju = shl nuw nsw i32 %i.jt, 1
  %i.jv = shl nuw i32 1, %i.ju
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250.epil
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !36
  %i.jy = zext nneg i32 %i.jv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jx, i8 0, i64 %i.jy, i1 false)
  %indvars.iv.next38.i251.epil = add nuw nsw i64 %indvars.iv37.i250.epil, 1
  %epil.iter726.next = add i64 %epil.iter726, 1   ; 2 uses
  %epil.iter726.cmp.not = icmp eq i64 %epil.iter726.next, %xtraiter725
  br i1 %epil.iter726.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %bb.ag, !llvm.loop !132

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258: ; preds = %bb.ag, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %wide.trip.count40.i
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bu, align 8, !tbaa !43
  store i8 0, ptr %i.ka, align 1, !tbaa !41
  %i.kb = load ptr, ptr %0, align 8, !tbaa !34
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.bs
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.bo ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %wide.load = load <2 x i32>, ptr %i.ke, align 4, !tbaa !35
  %wide.load658 = load <2 x i32>, ptr %i.kf, align 4, !tbaa !35
  %i.kg = zext <2 x i32> %wide.load to <2 x i64>
  %i.kh = zext <2 x i32> %wide.load658 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.kd, <2 x i64> %i.kg
  %wide.gep659 = getelementptr inbounds nuw i8, ptr %i.kd, <2 x i64> %i.kh
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ki, align 8, !tbaa !36
  store <2 x ptr> %wide.gep659, ptr %i.kj, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i264, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, %middle.block
  %indvars.iv.i261.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader.i264:                                  ; preds = %scalar.ph, %middle.block
  br i1 %i.dy, label %.lr.ph.i271, label %.lr.ph29.i266

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i261 = phi i64 [ %indvars.iv.next.i262, %scalar.ph ], [ %indvars.iv.i261.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i261
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !35
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i261
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !36
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.i263 = icmp eq i64 %indvars.iv.next.i262, %wide.trip.count.i
  br i1 %exitcond.i263, label %.preheader.i264, label %scalar.ph, !llvm.loop !134

.lr.ph29.i266:                                    ; preds = %.lr.ph.i271, %.preheader.i264
  store i64 %.sroa.0.0.copyload, ptr %11, align 8
  %i.kq = trunc i64 %.sroa.0.0.copyload to i32
  %umax732 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter733 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.kr = icmp samesign ult i64 %umax732, 3
  br i1 %i.kr, label %.epil.preheader731, label %.lr.ph29.i266.new

.lr.ph29.i266.new:                                ; preds = %.lr.ph29.i266
  %unroll_iter737 = and i64 %wide.trip.count40.i, 124
  br label %bb.ah

.lr.ph.i271:                                      ; preds = %.preheader.i264, %.lr.ph.i271
  %indvars.iv33.i272 = phi i64 [ %indvars.iv.next34.i273, %.lr.ph.i271 ], [ %wide.trip.count.i, %.preheader.i264 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv33.i272
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.ks, align 8, !tbaa !36
  %indvars.iv.next34.i273 = add nuw nsw i64 %indvars.iv33.i272, 1 ; 2 uses
  %i.kt = and i64 %indvars.iv.next34.i273, 4294967295
  %exitcond36.not.i274 = icmp eq i64 %i.kt, 16
  br i1 %exitcond36.not.i274, label %.lr.ph29.i266, label %.lr.ph.i271, !llvm.loop !0

bb.ah:                                            ; preds = %bb.ah, %.lr.ph29.i266.new
  %indvars.iv37.i268 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %indvars.iv.next38.i269.3, %bb.ah ] ; 6 uses
  %niter738 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %niter738.next.3, %bb.ah ]
  %i.ku = trunc nuw i64 %indvars.iv37.i268 to i32
  %i.kv = sub nuw i32 %spec.select, %i.ku
  %i.kw = shl nuw nsw i32 %i.kv, 1
  %i.kx = shl nuw i32 1, %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !36
  %i.la = zext nneg i32 %i.kx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kz, i8 0, i64 %i.la, i1 false)
  %indvars.iv.next38.i269 = or disjoint i64 %indvars.iv37.i268, 1 ; 2 uses
  %i.lb = trunc nuw i64 %indvars.iv.next38.i269 to i32
  %i.lc = sub nuw i32 %spec.select, %i.lb
  %i.ld = shl nuw nsw i32 %i.lc, 1
  %i.le = shl nuw i32 1, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !36
  %i.lh = zext nneg i32 %i.le to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i8 0, i64 %i.lh, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.li = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.lj = sub nuw i32 %spec.select, %i.li
  %i.lk = shl nuw nsw i32 %i.lj, 1
  %i.ll = shl nuw i32 1, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !36
  %i.lo = zext nneg i32 %i.ll to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ln, i8 0, i64 %i.lo, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.lp = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.lq = sub nuw i32 %spec.select, %i.lp
  %i.lr = shl nuw nsw i32 %i.lq, 1
  %i.ls = shl nuw i32 1, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !36
  %i.lv = zext nneg i32 %i.ls to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lu, i8 0, i64 %i.lv, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter738.next.3 = add i64 %niter738, 4         ; 2 uses
  %niter738.ncmp.3 = icmp eq i64 %niter738.next.3, %unroll_iter737
  br i1 %niter738.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod735.not = icmp eq i64 %xtraiter733, 0
  br i1 %lcmp.mod735.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %.epil.preheader731

.epil.preheader731:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, %.lr.ph29.i266
  %indvars.iv37.i268.epil.init = phi i64 [ 0, %.lr.ph29.i266 ], [ %indvars.iv.next38.i269.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa ]
  %lcmp.mod736 = icmp ne i64 %xtraiter733, 0
  call void @llvm.assume(i1 %lcmp.mod736)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader731
  %indvars.iv37.i268.epil = phi i64 [ %indvars.iv37.i268.epil.init, %.epil.preheader731 ], [ %indvars.iv.next38.i269.epil, %bb.ai ] ; 3 uses
  %epil.iter734 = phi i64 [ 0, %.epil.preheader731 ], [ %epil.iter734.next, %bb.ai ]
  %i.lw = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lx = sub nuw i32 %spec.select, %i.lw
  %i.ly = shl nuw nsw i32 %i.lx, 1
  %i.lz = shl nuw i32 1, %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !36
  %i.mc = zext nneg i32 %i.lz to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mb, i8 0, i64 %i.mc, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter734.next = add i64 %epil.iter734, 1   ; 2 uses
  %epil.iter734.cmp.not = icmp eq i64 %epil.iter734.next, %xtraiter733
  br i1 %epil.iter734.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !135

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !43
  store i8 0, ptr %i.me, align 1, !tbaa !41
  %i.mf = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mg = getelementptr inbounds nuw [120 x i8], ptr %i.mf, i64 %indvars.iv557
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !44
  %i.mj = load i32, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.mk = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %.not541 = icmp eq i32 %i.mk, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not542 = icmp eq i32 %i.mj, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mx, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.mm = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mn = getelementptr inbounds nuw [120 x i8], ptr %i.mm, i64 %indvars.iv557
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 104
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !45
  %i.mq = load i32, ptr %i.cb, align 8, !tbaa !47
  %i.mr = load i32, ptr %i.ml, align 4, !tbaa !46
  %i.ms = add i32 %i.mr, %.0210524
  %i.mt = mul i32 %i.ms, %i.mi
  %i.mu = add i32 %i.mt, %i.mq
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mp, i64 %i.mv
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aat, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mw, %.preheader480.lr.ph ], [ %i.aau, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mx = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mx, %i.mk
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !136

bb.aj:                                            ; preds = %.preheader480, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480 ], [ %indvars.iv.next, %.thread443 ] ; 2 uses
  %i.my = trunc nuw i64 %indvars.iv to i32
  %i.mz = add nsw i32 %i.my, -1                   ; 7 uses
  %i.na = lshr i32 %.0208522, %i.mz               ; 2 uses
  %i.nb = lshr i32 %.0210524, %i.mz               ; 2 uses
  %i.nc = zext i32 %i.mz to i64                   ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !36
  %notmask.i278 = shl nsw i32 -1, %i.mz
  %i.nf = xor i32 %notmask.i278, -1               ; 2 uses
  %i.ng = add i32 %i.ee, %i.nf
  %i.nh = lshr i32 %i.ng, %i.mz
  %i.ni = mul i32 %i.nh, %i.nb
  %i.nj = add i32 %i.ni, %i.na
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nk ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !41
  %i.nn = icmp eq i8 %i.nm, 1
  br i1 %i.nn, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.nc
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !36
  %i.nq = add i32 %i.gj, %i.nf
  %i.nr = lshr i32 %i.nq, %i.mz
  %i.ns = mul i32 %i.nr, %i.nb
  %i.nt = add i32 %i.ns, %i.na
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nu ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !41
  %i.nx = icmp eq i8 %i.nw, 0
  br i1 %i.nx, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.ny = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.oa = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i284 = icmp eq i32 %i.oa, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.ob = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !57
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = call noundef i64 %i.oe(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !123
  %.not12.i.i285 = icmp eq i64 %i.of, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.og = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.og, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.og, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.oh = load i32, ptr %i.k, align 4, !tbaa !35  ; 3 uses
  store i32 %i.oh, ptr %i.r, align 8, !tbaa !63
  %i.oi = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i286 = sub nuw nsw i8 8, %i.oi
  %i.oj = zext nneg i8 %narrow13.i.i286 to i32
  %i.ok = icmp eq i32 %i.oh, 255
  %i.ol = zext i1 %i.ok to i8
  store i8 %i.ol, ptr %i.s, align 8, !tbaa !64
  %i.om = load i32, ptr %i.q, align 4, !tbaa !62
  %i.on = add i32 %i.om, -1
  store i32 %i.on, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.oo = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i287 = sub nuw nsw i8 8, %i.oo
  %i.op = zext nneg i8 %narrow.i.i287 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.oq = add nsw i32 %i.op, -1
  store i32 %i.oq, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.or = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str, ptr %i.or, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.or, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280
  %.ph = phi i32 [ %i.oj, %bb.ap ], [ %i.ny, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %.ph438 = phi i32 [ %i.oh, %bb.ap ], [ %.pre.i282, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %i.os = add nsw i32 %.ph, -1                    ; 2 uses
  store i32 %i.os, ptr %i.p, align 4, !tbaa !60
  %i.ot = lshr i32 %.ph438, %i.os                 ; 2 uses
  %i.ou = trunc i32 %i.ot to i1
  %i.ov = trunc i32 %i.ot to i8
  %i.ow = and i8 %i.ov, 1
  %i.ox = xor i8 %i.ow, 1
  store i8 %i.ox, ptr %i.nl, align 1, !tbaa !41
  store i8 1, ptr %i.nv, align 1, !tbaa !41
  br i1 %i.ou, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.ar
  %.not218 = icmp eq i32 %i.mz, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not218, label %.preheader479, label %bb.aj, !llvm.loop !137

bb.as:                                            ; preds = %bb.ba
  %i.oy = getelementptr inbounds nuw i8, ptr %.0209521, i64 12
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !152
  %i.pa = icmp ugt i32 %.2202, %i.oz
  br i1 %i.pa, label %bb.bb, label %bb.bc

.preheader479:                                    ; preds = %.thread443, %bb.ba
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %bb.ba ], [ %wide.trip.count40.i, %.thread443 ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, -1 ; 5 uses
  %i.pb = trunc nuw i64 %indvars.iv554 to i32     ; 4 uses
  %i.pc = lshr i32 %.0208522, %i.pb
  %i.pd = lshr i32 %.0210524, %i.pb
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv554
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !36
  %notmask.i291 = shl nsw i32 -1, %i.pb
  %i.pg = xor i32 %notmask.i291, -1
  %i.ph = add i32 %i.im, %i.pg
  %i.pi = lshr i32 %i.ph, %i.pb
  %i.pj = mul i32 %i.pi, %i.pd
  %i.pk = add i32 %i.pj, %i.pc
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !41
  %i.po = zext i8 %i.pn to i32                    ; 2 uses
  %i.pp = trunc nuw i64 %indvars.iv.next555 to i32 ; 5 uses
  %i.pq = lshr i32 %.0208522, %i.pp               ; 2 uses
end_hunk_1
