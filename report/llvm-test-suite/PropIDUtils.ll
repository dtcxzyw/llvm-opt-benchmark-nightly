Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PropIDUtils?download=true
inline.NumInlined: 41
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb:bb.a
  %i.gs = add nuw nsw i32 %.152.10, 1
  %i.gt = zext nneg i32 %.152.10 to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gt
  store i32 67, ptr %i.gu, align 4, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.152.11 = phi i32 [ %i.gs, %bb.ah ], [ %.152.10, %bb.ag ] ; 3 uses
  %i.gv = and i32 %i.ea, 4096
  %.not253 = icmp eq i32 %i.gv, 0
  br i1 %.not253, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gw = add nuw nsw i32 %.152.11, 1
  %i.gx = zext nneg i32 %.152.11 to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gx
  store i32 79, ptr %i.gy, align 4, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.152.12 = phi i32 [ %i.gw, %bb.aj ], [ %.152.11, %bb.ai ] ; 3 uses
  %i.gz = and i32 %i.ea, 8192
  %.not254 = icmp eq i32 %i.gz, 0
  br i1 %.not254, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = add nuw nsw i32 %.152.12, 1
  %i.hb = zext nneg i32 %.152.12 to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hb
  store i32 110, ptr %i.hc, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.152.13 = phi i32 [ %i.ha, %bb.al ], [ %.152.12, %bb.ak ] ; 3 uses
  %i.hd = and i32 %i.ea, 16384
  %.not255 = icmp eq i32 %i.hd, 0
  br i1 %.not255, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.he = add nuw nsw i32 %.152.13, 1
  %i.hf = zext nneg i32 %.152.13 to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hf
  store i32 69, ptr %i.hg, align 4, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.152.14 = phi i32 [ %i.he, %bb.an ], [ %.152.13, %bb.am ] ; 3 uses
  %i.hh = and i32 %i.ea, 32768
  %.not256 = icmp eq i32 %i.hh, 0
  br i1 %.not256, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = add nuw nsw i32 %.152.14, 1
  %i.hj = zext nneg i32 %.152.14 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hj
  store i32 95, ptr %i.hk, align 4, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.152.15 = phi i32 [ %i.hi, %bb.ap ], [ %.152.14, %bb.ao ]
  %i.hl = zext nneg i32 %.152.15 to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hl
  store i32 0, ptr %i.hm, align 4, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i84 = call i64 @wcslen(ptr nonnull %i.b)
  %i.hp = trunc i64 %wcslen.i.i84 to i32          ; 3 uses
  %i.hq = add nsw i32 %i.hp, 1                    ; 3 uses
  %i.hr = icmp ne i32 %i.hq, 0
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = zext nneg i32 %i.hq to i64
  %i.ht = icmp slt i32 %i.hp, -1
  %i.hu = shl nuw nsw i64 %i.hs, 2
  %i.hv = select i1 %i.ht, i64 -1, i64 %i.hu
  %i.hw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hv) #11 ; 10 uses
  %i.hx = ptrtoaddr ptr %i.hw to i64
  %i.hy = load i32, ptr %i.ho, align 4, !tbaa !42
  %i.hz = icmp sgt i32 %i.hy, 0
  %.pre4.i85 = load i32, ptr %i.hn, align 8, !tbaa !43 ; 5 uses
  br i1 %i.hz, label %.preheader.i.i90, label %bb.m

bb.ar:                                            ; preds = %bb.a
  %i.ia = load i16, ptr %1, align 8, !tbaa !37
  %.not = icmp eq i16 %i.ia, 19
  br i1 %.not, label %bb.as, label %bb.ch

bb.as:                                            ; preds = %bb.ar
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.id = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #11 ; 11 uses
  %i.ie = ptrtoaddr ptr %i.id to i64
  %i.if = load i32, ptr %i.ic, align 4, !tbaa !42
  %i.ig = icmp sgt i32 %i.if, 0
  %.pre1.i101 = load i32, ptr %i.ib, align 8, !tbaa !43 ; 5 uses
  br i1 %i.ig, label %.preheader.i.i103, label %_ZN11CStringBaseIwEC2Ev.exit113

.preheader.i.i103:                                ; preds = %bb.as
  %i.ih = icmp sgt i32 %.pre1.i101, 0
  %.pre.i.i104 = load ptr, ptr %0, align 8, !tbaa !44 ; 9 uses
  br i1 %i.ih, label %.lr.ph.i.i108, label %._crit_edge.i.i105

.lr.ph.i.i108:                                    ; preds = %.preheader.i.i103
  %.pre.i.i104257 = ptrtoaddr ptr %.pre.i.i104 to i64
  %wide.trip.count.i.i109 = zext nneg i32 %.pre1.i101 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre1.i101, 8
  %i.ii = sub i64 %.pre.i.i104257, %i.ie
  %diff.check = icmp ugt i64 %i.ii, -32
  %or.cond348 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond348, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i108
  %n.vec = and i64 %wide.trip.count.i.i109, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i104, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load = load <4 x i32>, ptr %i.ij, align 4, !tbaa !9
  %wide.load258 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !9
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <4 x i32> %wide.load, ptr %i.il, align 4, !tbaa !9
  store <4 x i32> %wide.load258, ptr %i.im, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i109
  br i1 %cmp.n, label %._crit_edge.thread.i.i106, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i108, %middle.block
  %indvars.iv.i.i110.ph = phi i64 [ 0, %.lr.ph.i.i108 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i109, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i110.prol = phi i64 [ %indvars.iv.next.i.i111.prol, %scalar.ph.prol ], [ %indvars.iv.i.i110.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i104, i64 %indvars.iv.i.i110.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !9
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.i110.prol
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !9
  %indvars.iv.next.i.i111.prol = add nuw nsw i64 %indvars.iv.i.i110.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !21

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i110.unr = phi i64 [ %indvars.iv.i.i110.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i111.prol, %scalar.ph.prol ]
  %i.ir = sub nsw i64 %indvars.iv.i.i110.ph, %wide.trip.count.i.i109
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %._crit_edge.thread.i.i106, label %scalar.ph

._crit_edge.i.i105:                               ; preds = %.preheader.i.i103
  %i.it = icmp eq ptr %.pre.i.i104, null
  br i1 %i.it, label %_ZN11CStringBaseIwEC2Ev.exit113, label %._crit_edge.thread.i.i106

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i110 = phi i64 [ %indvars.iv.next.i.i111.3, %scalar.ph ], [ %indvars.iv.i.i110.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i104, i64 %indvars.iv.i.i110
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !9
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.i110
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !9
  %indvars.iv.next.i.i111 = add nuw nsw i64 %indvars.iv.i.i110, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i104, i64 %indvars.iv.next.i.i111
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !9
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.i111
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !9
  %indvars.iv.next.i.i111.1 = add nuw nsw i64 %indvars.iv.i.i110, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i104, i64 %indvars.iv.next.i.i111.1
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !9
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.i111.1
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !9
  %indvars.iv.next.i.i111.2 = add nuw nsw i64 %indvars.iv.i.i110, 3 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i104, i64 %indvars.iv.next.i.i111.2
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !9
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.i111.2
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !9
  %indvars.iv.next.i.i111.3 = add nuw nsw i64 %indvars.iv.i.i110, 4 ; 2 uses
  %exitcond.not.i.i112.3 = icmp eq i64 %indvars.iv.next.i.i111.3, %wide.trip.count.i.i109
  br i1 %exitcond.not.i.i112.3, label %._crit_edge.thread.i.i106, label %scalar.ph, !llvm.loop !22

._crit_edge.thread.i.i106:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i105
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i104) #12
  %.pre.i107 = load i32, ptr %i.ib, align 8, !tbaa !43
  br label %_ZN11CStringBaseIwEC2Ev.exit113

_ZN11CStringBaseIwEC2Ev.exit113:                  ; preds = %bb.as, %._crit_edge.i.i105, %._crit_edge.thread.i.i106
  %i.jg = phi i32 [ %.pre1.i101, %bb.as ], [ %.pre1.i101, %._crit_edge.i.i105 ], [ %.pre.i107, %._crit_edge.thread.i.i106 ]
  store ptr %i.id, ptr %0, align 8, !tbaa !44
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.jh
  store i32 0, ptr %i.ji, align 4, !tbaa !9
  store i32 4, ptr %i.ic, align 4, !tbaa !42
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !38 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.jl = lshr i32 %i.jk, 12
  %i.jm = and i32 %i.jl, 15
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr @_ZL11kPosixTypes, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !38
  %i.jq = sext i8 %i.jp to i32
  store i32 %i.jq, ptr %i.c, align 16, !tbaa !9
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ju = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %i.jv = shufflevector <4 x i32> %i.ju, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jw = and <4 x i32> %i.jv, <i32 256, i32 128, i32 64, i32 32>
  %i.jx = icmp eq <4 x i32> %i.jw, zeroinitializer
  %i.jy = select <4 x i1> %i.jx, <4 x i32> splat (i32 45), <4 x i32> <i32 114, i32 119, i32 120, i32 114>
  store <4 x i32> %i.jy, ptr %i.jr, align 4, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.kc = and <4 x i32> %i.jv, <i32 16, i32 8, i32 4, i32 2>
  %i.kd = icmp eq <4 x i32> %i.kc, zeroinitializer
  %i.ke = select <4 x i1> %i.kd, <4 x i32> splat (i32 45), <4 x i32> <i32 119, i32 120, i32 114, i32 119>
  store <4 x i32> %i.ke, ptr %i.jz, align 4, !tbaa !9
  %i.kf = and i32 %i.jk, 1
  %.not67.2 = icmp eq i32 %i.kf, 0
  %i.kg = select i1 %.not67.2, i32 45, i32 120
  %i.kh = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !9
  %i.ki = and i32 %i.jk, 2048
  %.not54 = icmp eq i32 %i.ki, 0
  br i1 %.not54, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN11CStringBaseIwEC2Ev.exit113
  %5 = lshr i32 %i.jk, 1
  %6 = and i32 %5, 32
  %7 = or disjoint i32 %6, 83
  store i32 %7, ptr %i.js, align 4, !tbaa !9
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN11CStringBaseIwEC2Ev.exit113
  %i.kj = and i32 %i.jk, 1024
  %.not56 = icmp eq i32 %i.kj, 0
  br i1 %.not56, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %8 = shl i32 %i.jk, 2
  %9 = and i32 %8, 32
  %10 = or disjoint i32 %9, 83
  store i32 %10, ptr %i.ka, align 8, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kk = and i32 %i.jk, 512
  %.not58 = icmp eq i32 %i.kk, 0
  br i1 %.not58, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %11 = shl i32 %i.jk, 5
  %12 = and i32 %11, 32
  %13 = or disjoint i32 %12, 84
  store i32 %13, ptr %i.kh, align 4, !tbaa !9
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.kl, align 8, !tbaa !9
  store i32 0, ptr %i.ib, align 8, !tbaa !43
  store i32 0, ptr %i.id, align 4, !tbaa !9
  %wcslen.i.i114 = call i64 @wcslen(ptr nonnull %i.c)
  %i.km = trunc i64 %wcslen.i.i114 to i32         ; 3 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 3 uses
  %i.ko = icmp eq i32 %i.kn, 4
  br i1 %i.ko, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kp = zext nneg i32 %i.kn to i64
  %i.kq = icmp slt i32 %i.km, -1
  %i.kr = shl nuw nsw i64 %i.kp, 2
  %i.ks = select i1 %i.kq, i64 -1, i64 %i.kr
  %i.kt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ks) #11
          to label %.noexc unwind label %bb.bz    ; 10 uses

.noexc:                                           ; preds = %bb.az
  %i.ku = ptrtoaddr ptr %i.kt to i64
  %i.kv = load i32, ptr %i.ic, align 4, !tbaa !42
  %i.kw = icmp sgt i32 %i.kv, 0
  %.pre4.i115 = load i32, ptr %i.ib, align 8, !tbaa !43 ; 5 uses
  br i1 %i.kw, label %.preheader.i.i120, label %bb.ba

.preheader.i.i120:                                ; preds = %.noexc
  %i.kx = icmp sgt i32 %.pre4.i115, 0
  %.pre.i.i121 = load ptr, ptr %0, align 8, !tbaa !44 ; 9 uses
  br i1 %i.kx, label %.lr.ph.i.i125, label %._crit_edge.i.i122

.lr.ph.i.i125:                                    ; preds = %.preheader.i.i120
  %.pre.i.i121260 = ptrtoaddr ptr %.pre.i.i121 to i64
  %wide.trip.count.i.i126 = zext nneg i32 %.pre4.i115 to i64 ; 5 uses
  %min.iters.check263 = icmp ult i32 %.pre4.i115, 8
  %i.ky = sub i64 %.pre.i.i121260, %i.ku
  %diff.check261 = icmp ugt i64 %i.ky, -32
  %or.cond349 = select i1 %min.iters.check263, i1 true, i1 %diff.check261
  br i1 %or.cond349, label %scalar.ph262.preheader, label %vector.ph264

vector.ph264:                                     ; preds = %.lr.ph.i.i125
  %n.vec265 = and i64 %wide.trip.count.i.i126, 2147483640 ; 3 uses
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next270, %vector.body266 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i121, i64 %index267 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load268 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !9
  %wide.load269 = load <4 x i32>, ptr %i.la, align 4, !tbaa !9
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index267 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <4 x i32> %wide.load268, ptr %i.lb, align 4, !tbaa !9
  store <4 x i32> %wide.load269, ptr %i.lc, align 4, !tbaa !9
  %index.next270 = add nuw i64 %index267, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next270, %n.vec265
  br i1 %i.ld, label %middle.block271, label %vector.body266, !llvm.loop !23

middle.block271:                                  ; preds = %vector.body266
  %cmp.n272 = icmp eq i64 %n.vec265, %wide.trip.count.i.i126
  br i1 %cmp.n272, label %._crit_edge.thread.i.i123, label %scalar.ph262.preheader

scalar.ph262.preheader:                           ; preds = %.lr.ph.i.i125, %middle.block271
  %indvars.iv.i.i127.ph = phi i64 [ 0, %.lr.ph.i.i125 ], [ %n.vec265, %middle.block271 ] ; 3 uses
  %xtraiter351 = and i64 %wide.trip.count.i.i126, 3 ; 2 uses
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %scalar.ph262.prol.loopexit, label %scalar.ph262.prol

scalar.ph262.prol:                                ; preds = %scalar.ph262.preheader, %scalar.ph262.prol
  %indvars.iv.i.i127.prol = phi i64 [ %indvars.iv.next.i.i128.prol, %scalar.ph262.prol ], [ %indvars.iv.i.i127.ph, %scalar.ph262.preheader ] ; 3 uses
  %prol.iter353 = phi i64 [ %prol.iter353.next, %scalar.ph262.prol ], [ 0, %scalar.ph262.preheader ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i121, i64 %indvars.iv.i.i127.prol
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !9
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i.i127.prol
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !9
  %indvars.iv.next.i.i128.prol = add nuw nsw i64 %indvars.iv.i.i127.prol, 1 ; 2 uses
  %prol.iter353.next = add i64 %prol.iter353, 1   ; 2 uses
  %prol.iter353.cmp.not = icmp eq i64 %prol.iter353.next, %xtraiter351
  br i1 %prol.iter353.cmp.not, label %scalar.ph262.prol.loopexit, label %scalar.ph262.prol, !llvm.loop !24

scalar.ph262.prol.loopexit:                       ; preds = %scalar.ph262.prol, %scalar.ph262.preheader
  %indvars.iv.i.i127.unr = phi i64 [ %indvars.iv.i.i127.ph, %scalar.ph262.preheader ], [ %indvars.iv.next.i.i128.prol, %scalar.ph262.prol ]
  %i.lh = sub nsw i64 %indvars.iv.i.i127.ph, %wide.trip.count.i.i126
  %i.li = icmp ugt i64 %i.lh, -4
  br i1 %i.li, label %._crit_edge.thread.i.i123, label %scalar.ph262

._crit_edge.i.i122:                               ; preds = %.preheader.i.i120
  %i.lj = icmp eq ptr %.pre.i.i121, null
  br i1 %i.lj, label %bb.ba, label %._crit_edge.thread.i.i123

scalar.ph262:                                     ; preds = %scalar.ph262.prol.loopexit, %scalar.ph262
  %indvars.iv.i.i127 = phi i64 [ %indvars.iv.next.i.i128.3, %scalar.ph262 ], [ %indvars.iv.i.i127.unr, %scalar.ph262.prol.loopexit ] ; 6 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i121, i64 %indvars.iv.i.i127
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i.i127
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !9
  %indvars.iv.next.i.i128 = add nuw nsw i64 %indvars.iv.i.i127, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i121, i64 %indvars.iv.next.i.i128
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !9
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i128
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !9
  %indvars.iv.next.i.i128.1 = add nuw nsw i64 %indvars.iv.i.i127, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i121, i64 %indvars.iv.next.i.i128.1
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i128.1
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !9
  %indvars.iv.next.i.i128.2 = add nuw nsw i64 %indvars.iv.i.i127, 3 ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i121, i64 %indvars.iv.next.i.i128.2
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !9
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i128.2
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !9
  %indvars.iv.next.i.i128.3 = add nuw nsw i64 %indvars.iv.i.i127, 4 ; 2 uses
  %exitcond.not.i.i129.3 = icmp eq i64 %indvars.iv.next.i.i128.3, %wide.trip.count.i.i126
  br i1 %exitcond.not.i.i129.3, label %._crit_edge.thread.i.i123, label %scalar.ph262, !llvm.loop !25

._crit_edge.thread.i.i123:                        ; preds = %scalar.ph262.prol.loopexit, %scalar.ph262, %middle.block271, %._crit_edge.i.i122
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i121) #12
  %.pre.i124 = load i32, ptr %i.ib, align 8, !tbaa !43
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i.i123, %._crit_edge.i.i122, %.noexc
  %i.lw = phi i32 [ %.pre.i124, %._crit_edge.thread.i.i123 ], [ %.pre4.i115, %._crit_edge.i.i122 ], [ %.pre4.i115, %.noexc ]
  store ptr %i.kt, ptr %0, align 8, !tbaa !44
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.lx
  store i32 0, ptr %i.ly, align 4, !tbaa !9
  store i32 %i.kn, ptr %i.ic, align 4, !tbaa !42
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.preheader: ; preds = %bb.ba, %bb.ay
  %.04.i.i117.ph = phi ptr [ %i.kt, %bb.ba ], [ %i.id, %bb.ay ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116

_ZN11CStringBaseIwE11SetCapacityEi.exit.i116:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116
  %.04.i.i117 = phi ptr [ %i.mb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116 ], [ %.04.i.i117.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.preheader ] ; 2 uses
  %.0.i.i118 = phi ptr [ %i.lz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116 ], [ %i.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.preheader ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i.i118, i64 4
  %i.ma = load i32, ptr %.0.i.i118, align 4, !tbaa !9 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.04.i.i117, i64 4
  store i32 %i.ma, ptr %.04.i.i117, align 4, !tbaa !9
  %.not.i.i119 = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i119, label %bb.bb, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116, !llvm.loop !16

bb.bb:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116
  store i32 %i.km, ptr %i.ib, align 8, !tbaa !43
  %.not60 = icmp ult i32 %i.jk, 65536
  br i1 %.not60, label %_ZN11CStringBaseIwED2Ev.exit174, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mc = lshr i32 %i.jk, 16
  store <4 x i32> splat (i32 48), ptr %i.jt, align 16, !tbaa !9
  %i.md = and i32 %i.mc, 15                       ; 3 uses
  %i.me = lshr i32 %i.jk, 20
  %i.mf = icmp samesign ult i32 %i.md, 10
  %i.mg = or disjoint i32 %i.md, 48
  %i.mh = add nuw nsw i32 %i.md, 55
  %i.mi = select i1 %i.mf, i32 %i.mg, i32 %i.mh
  store i32 %i.mi, ptr %i.js, align 4, !tbaa !9
  %i.mj = lshr i32 %i.jk, 24
  %i.mk = lshr i32 %i.jk, 28                      ; 2 uses
  %i.ml = insertelement <2 x i32> poison, i32 %i.mj, i64 0
  %i.mm = insertelement <2 x i32> %i.ml, i32 %i.me, i64 1
  %i.mn = and <2 x i32> %i.mm, splat (i32 15)     ; 3 uses
  %i.mo = icmp samesign ult <2 x i32> %i.mn, splat (i32 10)
  %i.mp = or disjoint <2 x i32> %i.mn, splat (i32 48)
  %i.mq = add nuw nsw <2 x i32> %i.mn, splat (i32 55)
  %i.mr = select <2 x i1> %i.mo, <2 x i32> %i.mp, <2 x i32> %i.mq
  store <2 x i32> %i.mr, ptr %i.jr, align 4, !tbaa !9
  %i.ms = icmp ult i32 %i.jk, -1610612736
  %i.mt = or disjoint i32 %i.mk, 48
  %i.mu = add nuw nsw i32 %i.mk, 55
  %i.mv = select i1 %i.ms, i32 %i.mt, i32 %i.mu
  store i32 %i.mv, ptr %i.c, align 16, !tbaa !9
  store i32 0, ptr %i.kb, align 16, !tbaa !9
  %wcslen.i.i130 = call i64 @wcslen(ptr nonnull %i.c) ; 4 uses
  %i.mw = trunc i64 %wcslen.i.i130 to i32         ; 14 uses
  %i.mx = add nsw i32 %i.mw, 1                    ; 9 uses
  %i.my = icmp eq i32 %i.mx, 0                    ; 2 uses
  br i1 %i.my, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mz = zext nneg i32 %i.mx to i64
  %i.na = icmp slt i32 %i.mw, -1
  %i.nb = shl nuw nsw i64 %i.mz, 2
  %i.nc = select i1 %i.na, i64 -1, i64 %i.nb
  %i.nd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nc) #11
          to label %.noexc146 unwind label %bb.ca ; 2 uses

.noexc146:                                        ; preds = %bb.bd
  store i32 0, ptr %i.nd, align 4, !tbaa !9
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132

_ZN11CStringBaseIwE11SetCapacityEi.exit.i132:     ; preds = %.noexc146, %bb.bc
  %.sroa.0.0 = phi ptr [ null, %bb.bc ], [ %i.nd, %.noexc146 ] ; 6 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132
  %.04.i.i133 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i132 ], [ %i.ng, %bb.be ] ; 2 uses
end_hunk_0
