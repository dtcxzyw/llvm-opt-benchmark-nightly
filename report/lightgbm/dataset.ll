Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8LightGBM19FastFeatureBundlingERKSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS2_EESaIS5_EEPPiPPdPKiiiRKS0_IiSaIiEEibbPS0_IaSaIaEE:.noexc.i
  %i.hx = load ptr, ptr %16, align 8, !tbaa !184  ; 4 uses
  %i.hy = load ptr, ptr %i.gu, align 8, !tbaa !184
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 4 uses
  %i.ic = icmp sgt i64 %i.ib, 4
  br i1 %i.ic, label %bb.ax, label %bb.ay, !prof !188

bb.ax:                                            ; preds = %.noexc135
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ht, ptr align 4 %i.hx, i64 %i.ib, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ay:                                            ; preds = %.noexc135
  %i.id = icmp eq i64 %i.ib, 4
  br i1 %i.id, label %bb.az, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.ie = load i32, ptr %i.hx, align 4, !tbaa !138
  store i32 %i.ie, ptr %i.ht, align 4, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.az, %bb.ay, %bb.ax
  %i.if = getelementptr inbounds i8, ptr %i.ht, i64 %i.ib
  store ptr %i.if, ptr %i.hu, align 8, !tbaa !205
  %i.ig = load ptr, ptr %i.gv, align 8, !tbaa !274
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 2 uses
  store ptr %i.ih, ptr %i.gv, align 8, !tbaa !274
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.ba:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ba
  %.pre297 = load ptr, ptr %16, align 8, !tbaa !200 ; 2 uses
  %.pre298 = load ptr, ptr %i.gv, align 8, !tbaa !288
  %.pre311 = ptrtoint ptr %.pre297 to i64
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %.pre-phi312 = phi i64 [ %.pre311, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.ia, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ]
  %i.ii = phi ptr [ %.pre298, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.ih, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ]
  %i.ij = phi ptr [ %.pre297, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.hx, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ]
  %i.ik = load ptr, ptr %i.gu, align 8, !tbaa !205
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = sub i64 %i.il, %.pre-phi312
  %i.in = lshr exact i64 %i.im, 2
  %i.io = trunc i64 %i.in to i32
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0179.0, i64 %i.ha
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !138
  %i.iq = getelementptr inbounds i8, ptr %i.ii, i64 -24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !200
  store ptr %i.ir, ptr %i.hg, align 8, !tbaa !184
  br label %bb.bf

bb.bb:                                            ; preds = %bb.at
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.it = load ptr, ptr %16, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iu = load ptr, ptr %i.gx, align 8, !tbaa !201
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.ix) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.be:                                            ; preds = %bb.au
  %i.iy = load i32, ptr %i.he, align 4, !tbaa !138
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0179.0, i64 %i.ha
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !138
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.ja = phi ptr [ %i.hk, %bb.be ], [ %i.ij, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIiSaIiEED2Ev.exit139, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jb = load ptr, ptr %i.gx, align 8, !tbaa !201
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.je) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit139

_ZNSt6vectorIiSaIiEED2Ev.exit139:                 ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit139
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0175.0275, i64 4 ; 2 uses
  %.not227 = icmp eq ptr %i.jf, %i.gt
  br i1 %.not227, label %._crit_edge277, label %bb.as

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bd, %bb.bc, %bb.bb
  %.pn82 = phi { ptr, i32 } [ %i.is, %bb.bb ], [ %lpad.phi, %bb.bc ], [ %lpad.phi, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.ch

bb.bi:                                            ; preds = %._crit_edge277
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZN8LightGBM10FindGroupsERKSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS2_EESaIS5_EERKS0_IiSaIiEEPPiPKiiiibbPS0_IaSaIaEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.120") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef %2, ptr noundef %.sroa.0179.0, i32 noundef %5, i32 noundef %6, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr noundef nonnull %18)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !274
  %i.ji = load ptr, ptr %0, align 8, !tbaa !273
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !274
  %i.jo = load ptr, ptr %19, align 8, !tbaa !273
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = icmp ugt i64 %i.jl, %i.jr
  br i1 %i.js, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.jt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.bl unwind label %bb.bo     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ju = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIaSaIaEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %._crit_edge299 unwind label %bb.bo ; 0 uses

._crit_edge299:                                   ; preds = %bb.bl
  %.pre300 = load ptr, ptr %i.jg, align 8, !tbaa !274
  %.pre301 = load ptr, ptr %0, align 8, !tbaa !273
  %.pre305 = ptrtoint ptr %.pre300 to i64
  %.pre307 = ptrtoint ptr %.pre301 to i64
  %.pre309 = sub i64 %.pre305, %.pre307
  br label %bb.bp

bb.bm:                                            ; preds = %._crit_edge277
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bn:                                            ; preds = %bb.bi
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bp:                                            ; preds = %._crit_edge299, %bb.bj
  %.pre-phi310 = phi i64 [ %.pre309, %._crit_edge299 ], [ %i.jl, %bb.bj ]
  %i.jy = sdiv exact i64 %.pre-phi310, 24         ; 3 uses
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = icmp sgt i32 %i.jz, 1
  br i1 %i.ka, label %.lr.ph281.preheader, label %._crit_edge282

.lr.ph281.preheader:                              ; preds = %bb.bp
  %i.kb = add nsw i64 %i.jy, 4294967295
  %wide.trip.count = and i64 %i.kb, 4294967295
  br label %.lr.ph281

._crit_edge282:                                   ; preds = %.lr.ph281, %bb.bp
  %i.kc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIaSaIaEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.br unwind label %bb.bq     ; 0 uses

bb.bq:                                            ; preds = %._crit_edge282
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %.lr.ph281
  %indvars.iv = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next, %.lr.ph281 ] ; 3 uses
  %.sroa.0.0278 = phi i32 [ %8, %.lr.ph281.preheader ], [ %i.kf, %.lr.ph281 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ke = mul i32 %.sroa.0.0278, 214013
  %i.kf = add i32 %i.ke, 2531011                  ; 2 uses
  %i.kg = lshr i32 %i.kf, 16
  %i.kh = and i32 %i.kg, 32767
  %i.ki = sub i64 %i.jy, %indvars.iv.next
  %i.kj = trunc i64 %i.ki to i32
  %20 = urem i32 %i.kh, %i.kj
  %i.kk = zext nneg i32 %20 to i64
  %i.kl = add nuw nsw i64 %indvars.iv.next, %i.kk ; 2 uses
  %i.km = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %indvars.iv ; 3 uses
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %i.kl ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !201
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !201
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !201
  %i.kt = load <2 x ptr>, ptr %i.kn, align 8, !tbaa !184
  %i.ku = load <2 x ptr>, ptr %i.ko, align 8, !tbaa !184
  store <2 x ptr> %i.ku, ptr %i.kn, align 8, !tbaa !184
  store <2 x ptr> %i.kt, ptr %i.ko, align 8, !tbaa !184
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !201
  %i.kv = load ptr, ptr %17, align 8, !tbaa !207  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %indvars.iv ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kl ; 2 uses
  %i.ky = load i8, ptr %i.kw, align 1, !tbaa !48
  %i.kz = load i8, ptr %i.kx, align 1, !tbaa !48
  store i8 %i.kz, ptr %i.kw, align 1, !tbaa !48
  store i8 %i.ky, ptr %i.kx, align 1, !tbaa !48
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !507

bb.br:                                            ; preds = %._crit_edge282
  %i.la = load ptr, ptr %19, align 8, !tbaa !273  ; 3 uses
  %i.lb = load ptr, ptr %i.jm, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.la, %i.lb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.li, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.la, %bb.br ] ; 3 uses
  %i.lc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !201
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #35
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.bs, %.lr.ph.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.li, %i.lb
  br i1 %.not.i.i.i140, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !273
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.br
  %i.lj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.la, %bb.br ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.lk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !275
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #35
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.lp = load ptr, ptr %18, align 8, !tbaa !207  ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !293
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lu) #35
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.lv = load ptr, ptr %17, align 8, !tbaa !207  ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIaSaIaEED2Ev.exit143, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !293
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lv to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.ma) #35
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit143

_ZNSt6vectorIaSaIaEED2Ev.exit143:                 ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %.not.i.i.i144 = icmp eq ptr %.sroa.0179.0, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIiSaIiEED2Ev.exit145, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit143
  %i.mb = ptrtoint ptr %.sroa.0179.0 to i64
  %i.mc = sub i64 %.sroa.13.0, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0, i64 noundef %i.mc) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit145

_ZNSt6vectorIiSaIiEED2Ev.exit145:                 ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit143, %bb.bw
  %i.md = load ptr, ptr %15, align 8, !tbaa !273  ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i146 = icmp eq ptr %i.md, %i.mf
  br i1 %.not4.i.i.i146, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i154, label %.lr.ph.i.i.i147

.lr.ph.i.i.i147:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit145, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i150
  %.05.i.i.i148 = phi ptr [ %i.mm, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i150 ], [ %i.md, %_ZNSt6vectorIiSaIiEED2Ev.exit145 ] ; 3 uses
  %i.mg = load ptr, ptr %.05.i.i.i148, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i.i.i.i149 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i.i.i149, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i150, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i147
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i148, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !201
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #35
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i150

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i150: ; preds = %bb.bx, %.lr.ph.i.i.i147
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i.i.i148, i64 24 ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %i.mm, %i.mf
  br i1 %.not.i.i.i151, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i152, label %.lr.ph.i.i.i147, !llvm.loop !12

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i152: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i150
  %.pr.i153 = load ptr, ptr %15, align 8, !tbaa !273
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i154

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i154: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i152, %_ZNSt6vectorIiSaIiEED2Ev.exit145
  %i.mn = phi ptr [ %.pr.i153, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i152 ], [ %i.md, %_ZNSt6vectorIiSaIiEED2Ev.exit145 ] ; 3 uses
  %.not.i.i1.i155 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i1.i155, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit156, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i154
  %i.mo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !275
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = ptrtoint ptr %i.mn to i64
  %i.ms = sub i64 %i.mq, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.ms) #35
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit156

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit156:      ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i154, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.mt = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIiSaIiEED2Ev.exit158, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit156
  %i.mu = load ptr, ptr %i.fd, align 8, !tbaa !201
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mx) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit158

_ZNSt6vectorIiSaIiEED2Ev.exit158:                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit156, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %.not.i.i.i159 = icmp eq ptr %.sroa.0193.0.lcssa391, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIiSaIiEED2Ev.exit160, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit158
  %i.my = ptrtoint ptr %.sroa.23.0.lcssa403 to i64
  %i.mz = sub i64 %i.my, %.pre-phi316
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0193.0.lcssa391, i64 noundef %i.mz) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit160

_ZNSt6vectorIiSaIiEED2Ev.exit160:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit158, %bb.ca
  %i.na = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit160
  %i.nb = load ptr, ptr %i.t, align 8, !tbaa !249
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.ne) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit160, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret void

bb.cc:                                            ; preds = %bb.bq, %bb.bo
  %.pn = phi { ptr, i32 } [ %i.kd, %bb.bq ], [ %i.jx, %bb.bo ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #18
end_hunk_0
