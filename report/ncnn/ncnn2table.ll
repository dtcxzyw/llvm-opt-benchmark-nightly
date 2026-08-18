inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN8QuantNet11quantize_KLEv.omp_outlined.26:bb.a
  br i1 %.not3.i79, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !45
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  invoke void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef %i.gb)
          to label %_ZN4ncnn3MatD2Ev.exit76 unwind label %bb.bb, !inline_history !117

bb.az:                                            ; preds = %bb.ax
  %.not.i99 = icmp eq ptr %i.gb, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.gb) #20
  br label %_ZN4ncnn3MatD2Ev.exit76

bb.bb:                                            ; preds = %bb.ay
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #40
  unreachable

_ZN4ncnn3MatD2Ev.exit76:                          ; preds = %bb.aw, %bb.av, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit77, %_ZN4ncnn3MatD2Ev.exit76
  %i.gh = load ptr, ptr %i.ap, align 8, !tbaa !105
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !154
  %i.gk = invoke noundef i32 @_ZN4ncnn9Extractor5inputEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.gj, ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gl = load ptr, ptr %i.l, align 8, !tbaa !113 ; 2 uses
  %.not.i82 = icmp eq ptr %i.gl, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gm = atomicrmw add ptr %i.gl, i32 -1 acq_rel, align 4
  %i.gn = icmp eq i32 %i.gm, 1
  br i1 %i.gn, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit75

bb.bf:                                            ; preds = %bb.be
  %i.go = load ptr, ptr %i.o, align 16, !tbaa !115 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.go, null
  %i.gp = load ptr, ptr %10, align 16, !tbaa !116 ; 3 uses
  br i1 %.not3.i83, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !45
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %i.gp)
          to label %_ZN4ncnn3MatD2Ev.exit75 unwind label %bb.bj, !inline_history !117

bb.bh:                                            ; preds = %bb.bf
  %.not.i97 = icmp eq ptr %i.gp, null
  br i1 %.not.i97, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.gp) #20
  br label %_ZN4ncnn3MatD2Ev.exit75

bb.bj:                                            ; preds = %bb.bg
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #40
  unreachable

_ZN4ncnn3MatD2Ev.exit75:                          ; preds = %bb.be, %bb.bd, %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gv = load i32, ptr %6, align 4, !tbaa !154
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %.lr.ph, label %.preheader, !llvm.loop !361

._crit_edge150:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %.preheader
  call void @_ZN4ncnn9ExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %i.gy = load i32, ptr %i.b, align 4, !tbaa !154 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %.not72.not = icmp slt i64 %indvars.iv174, %i.gz
  br i1 %.not72.not, label %.lr.ph153, label %._crit_edge154.loopexit

.lr.ph149:                                        ; preds = %.preheader, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %_ZN4ncnn3MatD2Ev.exit ], [ 0, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i64 0, ptr %i.aw, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.as, i8 0, i64 28, i1 false)
  %i.ha = load ptr, ptr %i.ax, align 8, !tbaa !105
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv171
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !154
  %i.hd = invoke noundef i32 @_ZN4ncnn9Extractor7extractEiRNS_3MatEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef 0)
          to label %bb.bk unwind label %.loopexit ; 0 uses

bb.bk:                                            ; preds = %.lr.ph149
  %i.he = load ptr, ptr %i.ay, align 8, !tbaa !120
  %i.hf = getelementptr inbounds nuw [64 x i8], ptr %i.he, i64 %indvars.iv171
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !348
  %i.hi = invoke noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #39
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %.loopexit ; 11 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %i.hi, i8 0, i64 16384, i1 false), !tbaa !354
  %i.hj = load i32, ptr %i.av, align 8, !tbaa !189 ; 2 uses
  %i.hk = load i32, ptr %i.at, align 4, !tbaa !200
  %i.hl = load i32, ptr %i.au, align 8, !tbaa !342
  %i.hm = mul i32 %i.hl, %i.hk                    ; 2 uses
  %i.hn = icmp sgt i32 %i.hj, 0
  br i1 %i.hn, label %_ZN4ncnn3MatD2Ev.exit74.lr.ph, label %._crit_edge146.split

_ZN4ncnn3MatD2Ev.exit74.lr.ph:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.ho = load ptr, ptr %13, align 8, !tbaa !116, !noalias !362
  %i.hp = load i64, ptr %i.aw, align 8, !tbaa !118, !noalias !362
  %i.hq = load i64, ptr %i.ar, align 8, !tbaa !187, !noalias !362
  %factor.op.mul = mul i64 %i.hp, %i.hq
  %i.hr = icmp sgt i32 %i.hm, 0
  br i1 %i.hr, label %_ZN4ncnn3MatD2Ev.exit74.preheader, label %._crit_edge146.split

_ZN4ncnn3MatD2Ev.exit74.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit74.lr.ph
  %wide.trip.count165 = zext nneg i32 %i.hj to i64
  %wide.trip.count = zext nneg i32 %i.hm to i64
  br label %_ZN4ncnn3MatD2Ev.exit74

._crit_edge146.split:                             ; preds = %._crit_edge, %_ZN4ncnn3MatD2Ev.exit74.lr.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  call void @__kmpc_critical(ptr nonnull @2, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  %i.hs = load ptr, ptr %i.ay, align 8, !tbaa !120
  %i.ht = getelementptr inbounds nuw [64 x i8], ptr %i.hs, i64 %indvars.iv171
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !122 ; 8 uses
  %scevgep = getelementptr i8, ptr %i.hv, i64 16384
  %scevgep220 = getelementptr inbounds nuw i8, ptr %i.hi, i64 16384
  %bound0 = icmp ult ptr %i.hv, %scevgep220
  %bound1 = icmp ult ptr %i.hi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %._crit_edge146.split, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %._crit_edge146.split ] ; 4 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <2 x i64>, ptr %i.hw, align 8, !tbaa !354, !alias.scope !365
  %wide.load221 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !354, !alias.scope !365
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %index ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load222 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  %wide.load223 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  %i.ia = add <2 x i64> %wide.load222, %wide.load
  %i.ib = add <2 x i64> %wide.load223, %wide.load221
  store <2 x i64> %i.ia, ptr %i.hy, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  store <2 x i64> %i.ib, ptr %i.hz, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index.next ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !354, !alias.scope !365
  %wide.load221.1 = load <2 x i64>, ptr %i.id, align 8, !tbaa !354, !alias.scope !365
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %index.next ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %wide.load222.1 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  %wide.load223.1 = load <2 x i64>, ptr %i.if, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  %i.ig = add <2 x i64> %wide.load222.1, %wide.load.1
  %i.ih = add <2 x i64> %wide.load223.1, %wide.load221.1
  store <2 x i64> %i.ig, ptr %i.ie, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  store <2 x i64> %i.ih, ptr %i.if, align 8, !tbaa !354, !alias.scope !368, !noalias !365
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next.1, 2048
  br i1 %i.ii, label %_ZNSt6vectorImSaImEED2Ev.exit, label %vector.body, !llvm.loop !370

_ZN4ncnn3MatD2Ev.exit74:                          ; preds = %_ZN4ncnn3MatD2Ev.exit74.preheader, %._crit_edge
  %indvars.iv162 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit74.preheader ], [ %indvars.iv.next163, %._crit_edge ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv162
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.reass
  br label %bb.bl

._crit_edge:                                      ; preds = %bb.bn
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge146.split, label %_ZN4ncnn3MatD2Ev.exit74, !llvm.loop !371

bb.bl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit74, %bb.bn
  %indvars.iv159 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit74 ], [ %indvars.iv.next160, %bb.bn ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv159
  %i.il = load float, ptr %i.ik, align 4, !tbaa !161 ; 2 uses
  %i.im = fcmp oeq float %i.il, 0.000000e+00
  br i1 %i.im, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.in = call noundef float @llvm.fabs.f32(float %i.il)
  %i.io = fdiv float %i.in, %i.hh
  %i.ip = fmul float %i.io, 2.048000e+03
  %i.iq = fptosi float %i.ip to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.iq, i32 2047)
  %14 = zext nneg i32 %.sroa.speculated to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %14 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !354
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !354
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bl, !llvm.loop !372

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %vector.body, %scalar.ph
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  call void @_ZdlPv(ptr noundef nonnull %i.hi) #37
  %i.iu = load ptr, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %.not.i90 = icmp eq ptr %i.iu, null
  br i1 %.not.i90, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.iv = atomicrmw add ptr %i.iu, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit

bb.bp:                                            ; preds = %bb.bo
  %i.ix = load ptr, ptr %i.as, align 8, !tbaa !115 ; 3 uses
  %.not3.i91 = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %13, align 8, !tbaa !116  ; 3 uses
  br i1 %.not3.i91, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !45
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iy)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bt, !inline_history !117

bb.br:                                            ; preds = %bb.bp
  %.not.i94 = icmp eq ptr %i.iy, null
  br i1 %.not.i94, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.iy) #20
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bt:                                            ; preds = %bb.bq
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #40
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bo, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.je = load i32, ptr %7, align 4, !tbaa !154
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next172, %i.jf
  br i1 %i.jg, label %.lr.ph149, label %._crit_edge150, !llvm.loop !373

scalar.ph:                                        ; preds = %._crit_edge146.split, %scalar.ph
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.3, %scalar.ph ], [ 0, %._crit_edge146.split ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv167
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !354
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv167 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !354
  %i.jl = add i64 %i.jk, %i.ji
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !354
  %indvars.iv.next168 = or disjoint i64 %indvars.iv167, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next168
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !354
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next168 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !354
  %i.jq = add i64 %i.jp, %i.jn
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !354
  %indvars.iv.next168.1 = or disjoint i64 %indvars.iv167, 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next168.1
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !354
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next168.1 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !354
  %i.jv = add i64 %i.ju, %i.js
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !354
  %indvars.iv.next168.2 = or disjoint i64 %indvars.iv167, 3 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next168.2
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !354
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next168.2 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !354
  %i.ka = add i64 %i.jz, %i.jx
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !354
  %indvars.iv.next168.3 = add nuw nsw i64 %indvars.iv167, 4 ; 2 uses
  %exitcond170.not.3 = icmp eq i64 %indvars.iv.next168.3, 2048
  br i1 %exitcond170.not.3, label %_ZNSt6vectorImSaImEED2Ev.exit, label %scalar.ph, !llvm.loop !374

._crit_edge154.loopexit:                          ; preds = %._crit_edge150
  %.pre181 = load i32, ptr %i.a, align 4, !tbaa !154
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %._crit_edge154.loopexit, %.preheader133
  %i.kb = phi i32 [ %i.ba, %.preheader133 ], [ %.pre181, %._crit_edge154.loopexit ]
  %.lcssa = phi i32 [ %i.az, %.preheader133 ], [ %i.gy, %._crit_edge154.loopexit ]
  %i.kc = load i32, ptr %i.c, align 4, !tbaa !154 ; 2 uses
  %i.kd = add nsw i32 %i.kc, %i.kb                ; 3 uses
  store i32 %i.kd, ptr %i.a, align 4, !tbaa !154
  %i.ke = add nsw i32 %i.kc, %.lcssa
  %i.kf = call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.f) ; 3 uses
  store i32 %i.kf, ptr %i.b, align 4, !tbaa !154
  %.not = icmp sgt i32 %i.kd, %i.kf
  br i1 %.not, label %._crit_edge156, label %.preheader133

._crit_edge156:                                   ; preds = %._crit_edge154, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge156, %bb.a
  ret void

.loopexit:                                        ; preds = %.lr.ph149, %bb.bk
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.ac, %bb.as, %bb.bc, %bb.am, %_ZN4ncnn3MatD2Ev.exit77
  %lpad.loopexit130 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN2cv3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cx, %_ZN2cv3MatD2Ev.exit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ]
  %i.kg = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.kg) #40
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8QuantNet11quantize_KLEv.omp_outlined.28(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !154    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !154
  %i.h = load i32, ptr %0, align 4, !tbaa !154    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !154
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !154
  %i.k = load i32, ptr %i.a, align 4, !tbaa !154  ; 2 uses
  %.not284 = icmp sgt i32 %i.k, %i.j
  br i1 %.not284, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 2 uses
  %i.n = sext i32 %i.k to i64
  br label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph287, %bb.y
  %indvars.iv345 = phi i64 [ %i.n, %.lr.ph287 ], [ %indvars.iv.next346, %bb.y ] ; 5 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %indvars.iv345 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122  ; 6 uses
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph445
  %index447 = phi i64 [ 0, %vector.ph445 ], [ %index.next451.3, %vector.body446 ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph445 ], [ %i.aj, %vector.body446 ]
  %vec.phi448 = phi <2 x i64> [ zeroinitializer, %vector.ph445 ], [ %i.ak, %vector.body446 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index447 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.s, align 8, !tbaa !354
  %wide.load450 = load <2 x i64>, ptr %i.t, align 8, !tbaa !354
  %i.u = add <2 x i64> %wide.load449, %vec.phi
  %i.v = add <2 x i64> %wide.load450, %vec.phi448
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index447 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %wide.load449.1 = load <2 x i64>, ptr %i.x, align 8, !tbaa !354
  %wide.load450.1 = load <2 x i64>, ptr %i.y, align 8, !tbaa !354
end_hunk_0
