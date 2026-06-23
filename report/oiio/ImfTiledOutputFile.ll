inline.NumInlined: 847
inline.NumDeleted: 418
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.18, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 noundef %5)
          to label %bb.o unwind label %bb.s       ; 2 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136: ; preds = %bb.o
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.20, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %bb.p
  %i.ba = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.fp unwind label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.v

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.ba) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.s ], [ %i.bd, %bb.t ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.bb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.fb

_ZNK27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile12isValidLevelEii.exit: ; preds = %bb.l
  %spec.select211 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2) ; 4 uses
  %spec.select212 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2) ; 7 uses
  %.0208 = tail call i32 @llvm.umax.i32(i32 %3, i32 %4) ; 2 uses
  %.0207 = tail call i32 @llvm.umin.i32(i32 %3, i32 %4) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !122
  %i.bg = icmp eq i32 %i.bf, 1                    ; 2 uses
  %spec.select = select i1 %i.bg, i32 -1, i32 1   ; 3 uses
  %.078.sroa.speculated = select i1 %i.bg, i32 %.0208, i32 %.0207 ; 3 uses
  %reass.sub = sub nsw i32 %spec.select211, %spec.select212
  %i.bh = add nsw i32 %reass.sub, 1
  %reass.sub275 = sub nsw i32 %.0208, %.0207
  %i.bi = add nsw i32 %reass.sub275, 1
  %i.bj = mul i32 %i.bi, %i.bh                    ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %.val122 = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bl = getelementptr i8, ptr %i.e, i64 272
  %.val123 = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.bm = ptrtoint ptr %.val123 to i64
  %i.bn = ptrtoint ptr %.val122 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = trunc i64 %i.bp to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bq) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.preheader220 unwind label %bb.aa

.preheader220:                                    ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile12isValidLevelEii.exit
  %i.br = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.br, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader220
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %bb.z
  %i.bs = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader220
  %.092.lcssa = phi i64 [ 0, %.preheader220 ], [ %i.bs, %.preheader.loopexit ]
  %.088.lcssa = phi i32 [ %spec.select212, %.preheader220 ], [ %.189, %.preheader.loopexit ]
  %.084.lcssa = phi i32 [ %.078.sroa.speculated, %.preheader220 ], [ %.185, %.preheader.loopexit ]
  %i.bt = icmp sgt i32 %i.bj, 0
  br i1 %i.bt, label %.lr.ph268.preheader, label %._crit_edge

.lr.ph268.preheader:                              ; preds = %.preheader
  %i.bu = zext nneg i32 %i.bj to i64
  %wide.trip.count310 = zext nneg i32 %i.bj to i64
  br label %.lr.ph268

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %.084253 = phi i32 [ %.078.sroa.speculated, %.lr.ph.preheader ], [ %.185, %bb.z ] ; 2 uses
  %.088252 = phi i32 [ %spec.select212, %.lr.ph.preheader ], [ %.189, %bb.z ] ; 3 uses
  %i.bv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.w unwind label %bb.ab      ; 7 uses

bb.w:                                             ; preds = %.lr.ph
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !107 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull %10)
          to label %.noexc139 unwind label %bb.ac

.noexc139:                                        ; preds = %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %i.bv, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !195
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 264
  %.val.i = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 272
  %.val9.i = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.cb = ptrtoint ptr %.val9.i to i64
  %i.cc = ptrtoint ptr %.val.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3
  %i.cf = urem i64 %indvars.iv, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !65 ; 2 uses
  store ptr %i.ch, ptr %i.by, align 8, !tbaa !199
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ci)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %.noexc139
  %i.cj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.bv) #24
  br label %.body

bb.y:                                             ; preds = %.noexc139
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !199 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i32 %.088252, ptr %i.cl, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 44
  store i32 %.084253, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  store i32 %6, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !3
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.bv)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cm = add nuw nsw i32 %.088252, 1
  %.not111 = icmp slt i32 %.088252, %spec.select211 ; 2 uses
  %.189 = select i1 %.not111, i32 %i.cm, i32 %spec.select212 ; 2 uses
  %i.cn = select i1 %.not111, i32 0, i32 %spec.select
  %.185 = add nsw i32 %i.cn, %.084253             ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !200

bb.aa:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile12isValidLevelEii.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.ew

bb.ab:                                            ; preds = %bb.y, %.lr.ph
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body154

bb.ac:                                            ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body

.body:                                            ; preds = %bb.x, %bb.ac
  %eh.lpad-body = phi { ptr, i32 } [ %i.cq, %bb.ac ], [ %i.cj, %bb.x ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #26
  br label %.body154

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %bb.ev
  %indvars.iv305 = phi i64 [ %.092.lcssa, %.lr.ph268.preheader ], [ %indvars.iv.next306, %bb.ev ] ; 3 uses
  %indvars.iv303 = phi i64 [ 0, %.lr.ph268.preheader ], [ %indvars.iv.next304, %bb.ev ] ; 2 uses
  %.079266 = phi i32 [ %.078.sroa.speculated, %.lr.ph268.preheader ], [ %.180, %bb.ev ] ; 32 uses
  %.081260 = phi i32 [ %spec.select212, %.lr.ph268.preheader ], [ %.182, %bb.ev ] ; 21 uses
  %.286258 = phi i32 [ %.084.lcssa, %.lr.ph268.preheader ], [ %.387, %bb.ev ] ; 2 uses
  %.290257 = phi i32 [ %.088.lcssa, %.lr.ph268.preheader ], [ %.391, %bb.ev ] ; 3 uses
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !107 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 264
  %.val127 = load ptr, ptr %i.cs, align 8, !tbaa !67 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 272
  %.val128 = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cu = ptrtoint ptr %.val128 to i64
  %i.cv = ptrtoint ptr %.val127 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3
  %i.cy = urem i64 %indvars.iv303, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !65 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit unwind label %.loopexit.split-lp.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit: ; preds = %.lr.ph268
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !107 ; 20 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !201 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !202 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 184
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %i.di, i32 noundef %.081260, i32 noundef %.079266, i32 noundef %5, i32 noundef %6)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit

.noexc142:                                        ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !173
  %.not.i141 = icmp eq i64 %i.dk, 0
  br i1 %.not.i141, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %.noexc142
  invoke void @_Z13iex_debugTrapv()
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %.noexc143
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.53, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc144
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 noundef %.081260)
          to label %bb.ae unwind label %bb.aj     ; 2 uses

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85.i: ; preds = %bb.ae
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 noundef %.079266)
          to label %bb.af unwind label %bb.aj     ; 2 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85.i
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i: ; preds = %bb.af
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 noundef %5)
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i: ; preds = %bb.ag
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 noundef %6)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.54, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88.i: ; preds = %bb.ah
  %i.dv = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dv, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88.i
  invoke void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.ep unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85.i, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc144
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.dv) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn67.i = phi { ptr, i32 } [ %i.dw, %bb.aj ], [ %i.dx, %bb.ak ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body154

bb.am:                                            ; preds = %.noexc142
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 136
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !122
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113writeTileDataEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci(ptr noundef %i.dc, ptr noundef nonnull %i.dd, i32 noundef %.081260, i32 noundef %.079266, i32 noundef %5, i32 noundef %6, ptr noundef %i.df, i32 noundef %i.dh)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit unwind label %.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 320 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !59 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 312 ; 13 uses
  %.not3.i.i.i.i = icmp eq ptr %.val.i.i.i, null  ; 3 uses
  br i1 %.not3.i.i.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ao, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i ], [ %.val.i.i.i, %bb.ao ] ; 9 uses
  %.084.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i ], [ %i.ec, %bb.ao ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 44
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !203 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, %6
  br i1 %i.eg, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eh = icmp eq i32 %i.ef, %6
  br i1 %i.eh, label %bb.aq, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !204 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %5
  br i1 %i.ek, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = icmp eq i32 %i.ej, %5
  br i1 %i.el, label %bb.as, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 36
  %i.en = load i32, ptr %i.em, align 4, !tbaa !205 ; 2 uses
  %i.eo = icmp slt i32 %i.en, %.079266
  br i1 %i.eo, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = icmp eq i32 %i.en, %.079266
  br i1 %i.ep, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.at
  %i.eq = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.er = icmp slt i32 %i.eq, %.081260
  br i1 %i.er, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, %bb.as, %bb.aq, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, %bb.at, %bb.ar, %bb.ap
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ar ], [ 16, %bb.at ], [ 16, %bb.ap ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.084.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.05.i.i.i.i, %bb.ar ], [ %.05.i.i.i.i, %bb.at ], [ %.05.i.i.i.i, %bb.ap ], [ %.05.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ] ; 6 uses
  %i.es = getelementptr i8, ptr %.05.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.es, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !208

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i
  %i.et = icmp eq ptr %.19.i.i.i.i, %i.ec
  br i1 %i.et, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 44
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !203 ; 2 uses
  %i.ex = icmp slt i32 %6, %i.ew
  br i1 %i.ex, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ey = icmp eq i32 %6, %i.ew
  br i1 %i.ey, label %bb.aw, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.ez = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !204 ; 2 uses
  %i.fb = icmp slt i32 %5, %i.fa
  br i1 %i.fb, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = icmp eq i32 %5, %i.fa
  br i1 %i.fc, label %bb.ay, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.i

end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
.lr.ph.i.i.i113.i:                                ; preds = %.noexc151, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i
  %.05.i.i.i114.i = phi ptr [ %.1.i.i.i119.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i ], [ %.val.i.i111.i, %.noexc151 ] ; 9 uses
  %.084.i.i.i115.i = phi ptr [ %.19.i.i.i118.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i ], [ %i.ec, %.noexc151 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.05.i.i.i114.i, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %.05.i.i.i114.i, i64 44
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !203 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %i.it
  br i1 %i.jb, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i113.i
  %i.jc = icmp eq i32 %i.ja, %i.it
  br i1 %i.jc, label %bb.ca, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i

bb.ca:                                            ; preds = %bb.bz
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i114.i, i64 40
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !204 ; 2 uses
  %i.jf = icmp slt i32 %i.je, %i.iu
  br i1 %i.jf, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jg = icmp eq i32 %i.je, %i.iu
  br i1 %i.jg, label %bb.cc, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i

bb.cc:                                            ; preds = %bb.cb
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i114.i, i64 36
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !205 ; 2 uses
  %i.jj = icmp slt i32 %i.ji, %i.iw
  br i1 %i.jj, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jk = icmp eq i32 %i.ji, %i.iw
  br i1 %i.jk, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i: ; preds = %bb.cd
  %i.jl = load i32, ptr %i.iy, align 4, !tbaa !206
  %i.jm = icmp slt i32 %i.jl, %i.ix
  br i1 %i.jm, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i, %bb.cc, %bb.ca, %.lr.ph.i.i.i113.i
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i, %bb.cd, %bb.cb, %bb.bz
  %.sink.i.i.i117.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i ], [ 16, %bb.cb ], [ 16, %bb.cd ], [ 16, %bb.bz ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i ]
  %.19.i.i.i118.i = phi ptr [ %.084.i.i.i115.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i ], [ %.05.i.i.i114.i, %bb.cb ], [ %.05.i.i.i114.i, %bb.cd ], [ %.05.i.i.i114.i, %bb.bz ], [ %.05.i.i.i114.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i ] ; 7 uses
  %i.jn = getelementptr i8, ptr %.05.i.i.i114.i, i64 %.sink.i.i.i117.i
  %.1.i.i.i119.i = load ptr, ptr %i.jn, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i120.i = icmp eq ptr %.1.i.i.i119.i, null
  br i1 %.not.i.i.i120.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i121.i, label %.lr.ph.i.i.i113.i, !llvm.loop !208

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i121.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i
  %i.jo = icmp eq ptr %.19.i.i.i118.i, %i.ec
  br i1 %i.jo, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i121.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.19.i.i.i118.i, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %.19.i.i.i118.i, i64 44
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !203 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, %i.it
  br i1 %i.js, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jt = icmp eq i32 %i.jr, %i.it
  br i1 %i.jt, label %bb.cg, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.cf, %bb.ch, %bb.cj, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i124.i
  br label %.backedge, !llvm.loop !213

bb.cg:                                            ; preds = %bb.cf
  %i.ju = getelementptr inbounds nuw i8, ptr %.19.i.i.i118.i, i64 40
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !204 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, %i.iu
  br i1 %i.jw, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jx = icmp eq i32 %i.jv, %i.iu
  br i1 %i.jx, label %bb.ci, label %.backedge.backedge

bb.ci:                                            ; preds = %bb.ch
  %i.jy = getelementptr inbounds nuw i8, ptr %.19.i.i.i118.i, i64 36
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !205 ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, %i.iw
  br i1 %i.ka, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kb = icmp eq i32 %i.jz, %i.iw
  br i1 %i.kb, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i124.i, label %.backedge.backedge

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i124.i: ; preds = %bb.cj
  %i.kc = load i32, ptr %i.jp, align 4, !tbaa !206
  %i.kd = icmp sgt i32 %i.kc, %i.ix
  br i1 %i.kd, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %.backedge.backedge

_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i: ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.i, %bb.bj, %bb.bi, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i
  %i.ke = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc152:                                        ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i
  store ptr null, ptr %i.ke, align 8, !tbaa !90
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i32 %i.dh, ptr %i.kf, align 8, !tbaa !212
  %i.kg = sext i32 %i.dh to i64                   ; 2 uses
  %i.kh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kg) #25
          to label %bb.ck unwind label %bb.eo     ; 2 uses

bb.ck:                                            ; preds = %.noexc152
  store ptr %i.kh, ptr %i.ke, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kh, ptr readonly align 1 %i.df, i64 %i.kg, i1 false)
  br i1 %.not3.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ck, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i ], [ %.val.i.i.i, %bb.ck ] ; 9 uses
  %.084.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i ], [ %i.ec, %bb.ck ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 44
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !203 ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %6
  br i1 %i.kl, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.km = icmp eq i32 %i.kk, %6
  br i1 %i.km, label %bb.cm, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !204 ; 2 uses
  %i.kp = icmp slt i32 %i.ko, %5
  br i1 %i.kp, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kq = icmp eq i32 %i.ko, %5
  br i1 %i.kq, label %bb.co, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 36
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !205 ; 2 uses
  %i.kt = icmp slt i32 %i.ks, %.079266
  br i1 %i.kt, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ku = icmp eq i32 %i.ks, %.079266
  br i1 %i.ku, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.cp
  %i.kv = load i32, ptr %i.ki, align 4, !tbaa !206
  %i.kw = icmp slt i32 %i.kv, %.081260
  br i1 %i.kw, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, %bb.co, %bb.cm, %.lr.ph.i.i.i.i.i
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cp, %bb.cn, %bb.cl
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.cn ], [ 16, %bb.cp ], [ 16, %bb.cl ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.084.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.05.i.i.i.i.i, %bb.cn ], [ %.05.i.i.i.i.i, %bb.cp ], [ %.05.i.i.i.i.i, %bb.cl ], [ %.05.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ] ; 15 uses
  %i.kx = getelementptr i8, ptr %.05.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !208

_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i
  %i.ky = icmp eq ptr %.19.i.i.i.i.i, %i.ec
  br i1 %i.ky, label %.critedge.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 44
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !203 ; 2 uses
  %i.lc = icmp slt i32 %6, %i.lb
  br i1 %i.lc, label %.critedge.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ld = icmp eq i32 %6, %i.lb
  br i1 %i.ld, label %bb.cs, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

bb.cs:                                            ; preds = %bb.cr
  %i.le = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !204 ; 2 uses
  %i.lg = icmp slt i32 %5, %i.lf
  br i1 %i.lg, label %.critedge.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lh = icmp eq i32 %5, %i.lf
  br i1 %i.lh, label %bb.cu, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.li = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !205 ; 2 uses
  %i.lk = icmp slt i32 %.079266, %i.lj
  br i1 %i.lk, label %.critedge.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ll = icmp eq i32 %.079266, %i.lj
  br i1 %i.ll, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i: ; preds = %bb.cv
  %i.lm = load i32, ptr %i.kz, align 4, !tbaa !206
  %i.ln = icmp slt i32 %.081260, %i.lm
  br i1 %i.ln, label %.critedge.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

.critedge.i.i:                                    ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, %bb.cu, %bb.cs, %bb.cq, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i, %bb.ck
  %i.lo = phi i1 [ true, %bb.ck ], [ false, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ true, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i ], [ false, %bb.cs ], [ false, %bb.cq ], [ false, %bb.cu ]
  %.08.lcssa.i.i.i17.i.i = phi ptr [ %i.ec, %bb.ck ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.cs ], [ %.19.i.i.i.i.i, %bb.cq ], [ %.19.i.i.i.i.i, %bb.cu ] ; 17 uses
  %i.lp = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc153:                                        ; preds = %.critedge.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store i32 %.081260, ptr %i.lq, align 8, !tbaa !3
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 36
  store i32 %.079266, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  store i32 %5, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 44
  store i32 %6, ptr %.sroa.16.0..sroa_idx.i, align 4, !tbaa !3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store ptr null, ptr %i.lr, align 8, !tbaa !87
  br i1 %i.lo, label %bb.cw, label %bb.dd

bb.cw:                                            ; preds = %.noexc153
  %i.ls = getelementptr inbounds nuw i8, ptr %i.dd, i64 344
  %.val12.i.i.i.i = load i64, ptr %i.ls, align 8, !tbaa !62
  %.not.i.i.i129.i = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i129.i, label %.sink.split.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lt = getelementptr inbounds nuw i8, ptr %i.dd, i64 336
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !207 ; 8 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 44
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !203 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %6
  br i1 %i.ly, label %.thread.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lz = icmp eq i32 %i.lx, %6
  br i1 %i.lz, label %bb.cz, label %.sink.split.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !204 ; 2 uses
  %i.mc = icmp slt i32 %i.mb, %5
  br i1 %i.mc, label %.thread.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.md = icmp eq i32 %i.mb, %5
  br i1 %i.md, label %bb.db, label %.sink.split.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 36
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !205 ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %.079266
  br i1 %i.mg, label %.thread.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mh = icmp eq i32 %i.mf, %.079266
  br i1 %i.mh, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i: ; preds = %bb.dc
  %i.mi = load i32, ptr %i.lv, align 4, !tbaa !206
  %i.mj = icmp slt i32 %i.mi, %.081260
  br i1 %i.mj, label %.thread.i.i.i, label %.sink.split.i.i.i

bb.dd:                                            ; preds = %.noexc153
  %i.mk = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 32 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 44
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !203 ; 3 uses
  %i.mn = icmp slt i32 %6, %i.mm
  br i1 %i.mn, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mo = icmp eq i32 %6, %i.mm
  br i1 %i.mo, label %bb.df, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.mp = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 40
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !204 ; 2 uses
  %i.mr = icmp slt i32 %5, %i.mq
  br i1 %i.mr, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ms = icmp eq i32 %5, %i.mq
  br i1 %i.ms, label %bb.dh, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.mt = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 36
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !205 ; 2 uses
  %i.mv = icmp slt i32 %.079266, %i.mu
  br i1 %i.mv, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mw = icmp eq i32 %.079266, %i.mu
  br i1 %i.mw, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i: ; preds = %bb.di
  %i.mx = load i32, ptr %i.mk, align 4, !tbaa !206
  %i.my = icmp slt i32 %.081260, %i.mx
  br i1 %i.my, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i, %bb.dh, %bb.df, %bb.dd
  %i.mz = getelementptr inbounds nuw i8, ptr %i.dd, i64 328
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !207 ; 3 uses
  %i.nb = icmp eq ptr %i.na, %.08.lcssa.i.i.i17.i.i
  br i1 %i.nb, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i
  %i.nc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i17.i.i) #28 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 44
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !203 ; 2 uses
  %i.ng = icmp slt i32 %i.nf, %6
  br i1 %i.ng, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nh = icmp eq i32 %i.nf, %6
  br i1 %i.nh, label %bb.dl, label %.sink.split.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 40
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !204 ; 2 uses
  %i.nk = icmp slt i32 %i.nj, %5
  br i1 %i.nk, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nl = icmp eq i32 %i.nj, %5
  br i1 %i.nl, label %bb.dn, label %.sink.split.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 36
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !205 ; 2 uses
  %i.no = icmp slt i32 %i.nn, %.079266
  br i1 %i.no, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.np = icmp eq i32 %i.nn, %.079266
  br i1 %i.np, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i: ; preds = %bb.do
  %i.nq = load i32, ptr %i.nd, align 4, !tbaa !206
  %i.nr = icmp slt i32 %i.nq, %.081260
  br i1 %i.nr, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, %bb.dn, %bb.dl, %bb.dj
  %i.ns = getelementptr i8, ptr %i.nc, i64 24
  %.val10.i.i.i.i = load ptr, ptr %i.ns, align 8, !tbaa !214
  %i.nt = icmp eq ptr %.val10.i.i.i.i, null       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.nt, ptr null, ptr %.08.lcssa.i.i.i17.i.i
  %spec.select48.i.i.i.i = select i1 %i.nt, ptr %i.nc, ptr %.08.lcssa.i.i.i17.i.i
  br label %.thread.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i, %bb.di, %bb.dg, %bb.de
  %12 = icmp slt i32 %i.mm, %6
  br i1 %12, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i
  %13 = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 40
  %14 = load i32, ptr %13, align 4, !tbaa !204    ; 2 uses
  %i.nu = icmp slt i32 %14, %5
  br i1 %i.nu, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %15

15:                                               ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i
  %16 = icmp eq i32 %14, %5
  br i1 %16, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i: ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 36
  %18 = load i32, ptr %17, align 4, !tbaa !205    ; 2 uses
  %i.nv = icmp slt i32 %18, %.079266
  br i1 %i.nv, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %19

19:                                               ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i
  %20 = icmp eq i32 %18, %.079266
  br i1 %20, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i: ; preds = %19
  %21 = load i32, ptr %i.mk, align 4, !tbaa !206
  %i.nw = icmp slt i32 %21, %.081260
  br i1 %i.nw, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dd, i64 336
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !207 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %.08.lcssa.i.i.i17.i.i
  br i1 %i.nz, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, label %bb.dp

bb.dp:                                            ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i
  %i.oa = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i17.i.i) #28 ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 44
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !203 ; 2 uses
  %i.oe = icmp slt i32 %6, %i.od
  br i1 %i.oe, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.of = icmp eq i32 %6, %i.od
  br i1 %i.of, label %bb.dr, label %.sink.split.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !204 ; 2 uses
  %i.oi = icmp slt i32 %5, %i.oh
  br i1 %i.oi, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.oj = icmp eq i32 %5, %i.oh
  br i1 %i.oj, label %bb.dt, label %.sink.split.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oa, i64 36
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !205 ; 2 uses
  %i.om = icmp slt i32 %.079266, %i.ol
  br i1 %i.om, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.on = icmp eq i32 %.079266, %i.ol
  br i1 %i.on, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i: ; preds = %bb.du
  %i.oo = load i32, ptr %i.ob, align 4, !tbaa !206
  %i.op = icmp slt i32 %.081260, %i.oo
  br i1 %i.op, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, %bb.dt, %bb.dr, %bb.dp
  %i.oq = getelementptr i8, ptr %.08.lcssa.i.i.i17.i.i, i64 24
  %.val.i10.i.i.i = load ptr, ptr %i.oq, align 8, !tbaa !214
  %i.or = icmp eq ptr %.val.i10.i.i.i, null       ; 2 uses
  %spec.select49.i.i.i.i = select i1 %i.or, ptr null, ptr %i.oa
  %spec.select50.i.i.i.i = select i1 %i.or, ptr %.08.lcssa.i.i.i17.i.i, ptr %i.oa
  br label %.thread.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, %bb.du, %bb.ds, %bb.dq, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, %bb.do, %bb.dm, %bb.dk, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i, %bb.dc, %bb.da, %bb.cy, %bb.cw
  br i1 %.not3.i.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.sink.split.i.i.i, %.lr.ph.i.i.i.backedge
  %.02532.i.i.i = phi ptr [ %.02532.i.i.i.be, %.lr.ph.i.i.i.backedge ], [ %.val.i.i.i, %.sink.split.i.i.i ] ; 9 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 44
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !203 ; 3 uses
  %i.ov = icmp slt i32 %6, %i.ou
  br i1 %i.ov, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i
  %i.ow = icmp eq i32 %6, %i.ou
  br i1 %i.ow, label %bb.dw, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.dw:                                            ; preds = %bb.dv
  %i.ox = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 40
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !204 ; 2 uses
  %i.oz = icmp slt i32 %5, %i.oy
  br i1 %i.oz, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pa = icmp eq i32 %5, %i.oy
  br i1 %i.pa, label %bb.dy, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.pb = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 36
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !205 ; 2 uses
  %i.pd = icmp slt i32 %.079266, %i.pc
  br i1 %i.pd, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pe = icmp eq i32 %.079266, %i.pc
  br i1 %i.pe, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i: ; preds = %bb.dz
  %i.pf = load i32, ptr %i.os, align 4, !tbaa !206
  %i.pg = icmp slt i32 %.081260, %i.pf
  br i1 %i.pg, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i, %bb.dy, %bb.dw, %.lr.ph.i.i.i
  %i.ph = getelementptr i8, ptr %.02532.i.i.i, i64 16
  %.025.i.i.i = load ptr, ptr %i.ph, align 8, !tbaa !207 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %.025.i.i.i, null
  br i1 %.not.i10.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.backedge

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i, %bb.dz, %bb.dx, %bb.dv
  %i.pi = getelementptr i8, ptr %.02532.i.i.i, i64 24
  %.025.i22.i.i = load ptr, ptr %i.pi, align 8, !tbaa !207 ; 2 uses
  %.not.i1023.i.i = icmp eq ptr %.025.i22.i.i, null
  br i1 %.not.i1023.i.i, label %._crit_edge.i.thread.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i
  %.02532.i.i.i.be = phi ptr [ %.025.i22.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ], [ %.025.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i ]
  br label %.lr.ph.i.i.i, !llvm.loop !215

._crit_edge.thread.i.i.i:                         ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, %.sink.split.i.i.i
  %.024.lcssa48.i.i.i = phi ptr [ %i.ec, %.sink.split.i.i.i ], [ %.02532.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i ] ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.dd, i64 328
  %.val7.i.i.i = load ptr, ptr %i.pj, align 8, !tbaa !60
  %i.pk = icmp eq ptr %.024.lcssa48.i.i.i, %.val7.i.i.i
  br i1 %i.pk, label %.thread.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.pl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.024.lcssa48.i.i.i) #28 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 44
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !203
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i, %bb.ea
  %i.pm = phi i32 [ %.pre.i.i, %bb.ea ], [ %i.ou, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %.024.lcssa47.i.i.i = phi ptr [ %.024.lcssa48.i.i.i, %bb.ea ], [ %.02532.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 4 uses
  %.sroa.015.0.i.i.i = phi ptr [ %i.pl, %bb.ea ], [ %.02532.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 7 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 32
  %i.po = icmp slt i32 %i.pm, %6
  br i1 %i.po, label %.thread.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i.thread.i.i
  %i.pp = icmp eq i32 %i.pm, %6
  br i1 %i.pp, label %bb.ec, label %.thread10.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 40
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !204 ; 2 uses
  %i.ps = icmp slt i32 %i.pr, %5
  br i1 %i.ps, label %.thread.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pt = icmp eq i32 %i.pr, %5
  br i1 %i.pt, label %bb.ee, label %.thread10.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 36
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !205 ; 2 uses
  %i.pw = icmp slt i32 %i.pv, %.079266
  br i1 %i.pw, label %.thread.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.px = icmp eq i32 %i.pv, %.079266
  br i1 %i.px, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i: ; preds = %bb.ef
  %i.py = load i32, ptr %i.pn, align 4, !tbaa !206
  %i.pz = icmp slt i32 %i.py, %.081260
  br i1 %i.pz, label %.thread.i.i.i, label %.thread10.i.i.i

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i
  %.sroa.037.2.i.i.i.i = phi ptr [ %i.na, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i ], [ null, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %i.na, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i ], [ %i.ny, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.12.2.i.i.i.i, null
  br i1 %.not.i.i.i, label %.thread10.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, %bb.ee, %bb.ec, %._crit_edge.i.thread.i.i, %._crit_edge.thread.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i, %bb.db, %bb.cz, %bb.cx
  %.sroa.12.2.i8.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ %i.lu, %bb.cx ], [ %i.lu, %bb.cz ], [ %i.lu, %bb.db ], [ %spec.select48.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i ], [ %spec.select50.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i ], [ %i.lu, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i ], [ %.024.lcssa47.i.i.i, %bb.ee ], [ %.024.lcssa47.i.i.i, %._crit_edge.i.thread.i.i ], [ %.024.lcssa47.i.i.i, %bb.ec ], [ %.024.lcssa47.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ], [ %.024.lcssa48.i.i.i, %._crit_edge.thread.i.i.i ] ; 6 uses
  %.sroa.037.2.i7.i.i.i = phi ptr [ %.sroa.037.2.i.i.i.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ null, %bb.cx ], [ null, %bb.cz ], [ null, %bb.db ], [ %spec.select.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i ], [ %spec.select49.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i ], [ null, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i ], [ null, %bb.ee ], [ null, %._crit_edge.i.thread.i.i ], [ null, %bb.ec ], [ null, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ], [ null, %._crit_edge.thread.i.i.i ]
  %.not.i.i.i9.i.i = icmp ne ptr %.sroa.037.2.i7.i.i.i, null
  %i.qa = icmp eq ptr %.sroa.12.2.i8.i.i.i, %i.ec
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i9.i.i, i1 true, i1 %i.qa
  br i1 %or.cond.i.i.i.i.i, label %bb.en, label %bb.eg

bb.eg:                                            ; preds = %.thread.i.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 32
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 44
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !203 ; 2 uses
  %i.qe = icmp slt i32 %6, %i.qd
  br i1 %i.qe, label %bb.en, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qf = icmp eq i32 %6, %i.qd
  br i1 %i.qf, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %bb.eh
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 40
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !204 ; 2 uses
  %i.qi = icmp slt i32 %5, %i.qh
  br i1 %i.qi, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qj = icmp eq i32 %5, %i.qh
  br i1 %i.qj, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %bb.ej
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 36
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !205 ; 2 uses
  %i.qm = icmp slt i32 %.079266, %i.ql
  br i1 %i.qm, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qn = icmp eq i32 %.079266, %i.ql
  br i1 %i.qn, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.qo = load i32, ptr %i.qb, align 4, !tbaa !206
  %i.qp = icmp slt i32 %.081260, %i.qo
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %.thread.i.i.i
  %i.qq = phi i1 [ false, %bb.eh ], [ true, %.thread.i.i.i ], [ true, %bb.ei ], [ true, %bb.eg ], [ false, %bb.ej ], [ %i.qp, %bb.em ], [ true, %bb.ek ], [ false, %bb.el ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qq, ptr noundef nonnull %i.lp, ptr noundef nonnull %.sroa.12.2.i8.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ec) #24
  %i.qr = getelementptr inbounds nuw i8, ptr %i.dd, i64 344 ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !62
  %i.qt = add i64 %i.qs, 1
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !62
  br label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

.thread10.i.i.i:                                  ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, %bb.ef, %bb.ed, %bb.eb, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, %19, %15
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.sroa.037.2.i.i.i.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ %.08.lcssa.i.i.i17.i.i, %19 ], [ %.08.lcssa.i.i.i17.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i ], [ %.08.lcssa.i.i.i17.i.i, %15 ], [ %.sroa.015.0.i.i.i, %bb.eb ], [ %.sroa.015.0.i.i.i, %bb.ed ], [ %.sroa.015.0.i.i.i, %bb.ef ], [ %.sroa.015.0.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef 56) #26
  br label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i: ; preds = %.thread10.i.i.i, %bb.en, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, %bb.cv, %bb.ct, %bb.cr
  %.sroa.015.0.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i, %.thread10.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ %i.lp, %bb.en ], [ %.19.i.i.i.i.i, %bb.cr ], [ %.19.i.i.i.i.i, %bb.cv ], [ %.19.i.i.i.i.i, %bb.ct ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i, i64 48
  store ptr %i.ke, ptr %i.qu, align 8, !tbaa !216
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit

bb.eo:                                            ; preds = %.noexc152
  %i.qv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 16) #26
  br label %.body154

bb.ep:                                            ; preds = %bb.be, %bb.ai
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i124.i, %bb.ci, %bb.cg, %bb.ce, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i121.i, %.noexc151, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i107.i, %bb.bu, %bb.bs, %bb.bq, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i104.i, %.noexc149, %bb.an
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit unwind label %.loopexit.split-lp.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit
  %i.qw = icmp samesign ult i64 %indvars.iv305, %i.bu
  br i1 %i.qw, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit
  %i.qx = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.er unwind label %.loopexit.split-lp.loopexit ; 7 uses

bb.er:                                            ; preds = %bb.eq
  %i.qy = load ptr, ptr %i.d, align 8, !tbaa !107 ; 3 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.qx, ptr noundef nonnull %10)
          to label %.noexc162 unwind label %bb.eu

.noexc162:                                        ; preds = %bb.er
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %i.qx, align 8, !tbaa !101
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !195
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 24 ; 2 uses
  %i.rb = getelementptr i8, ptr %i.qy, i64 264
  %.val.i157 = load ptr, ptr %i.rb, align 8, !tbaa !67 ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qy, i64 272
  %.val9.i158 = load ptr, ptr %i.rc, align 8, !tbaa !68
  %i.rd = ptrtoint ptr %.val9.i158 to i64
  %i.re = ptrtoint ptr %.val.i157 to i64
  %i.rf = sub i64 %i.rd, %i.re
  %i.rg = ashr exact i64 %i.rf, 3
  %i.rh = urem i64 %indvars.iv305, %i.rg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.val.i157, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !65 ; 2 uses
  store ptr %i.rj, ptr %i.ra, align 8, !tbaa !199
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 96
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.rk)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %.noexc162
  %i.rl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.qx) #24
  br label %.body163

bb.et:                                            ; preds = %.noexc162
  %i.rm = load ptr, ptr %i.ra, align 8, !tbaa !199 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 40
  store i32 %.290257, ptr %i.rn, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.rm, i64 44
  store i32 %.286258, ptr %.sroa.4.0..sroa_idx.i159, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.rm, i64 48
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i160, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.rm, i64 52
  store i32 %6, ptr %.sroa.6.0..sroa_idx.i161, align 4, !tbaa !3
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.qx)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body154

.loopexit.split-lp.loopexit:                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, %.critedge.i.i, %_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i, %.noexc148, %bb.bk, %bb.an, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit, %.lr.ph268, %bb.et, %bb.eq
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body154

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc146, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.i, %.noexc143, %bb.ad
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body154

bb.eu:                                            ; preds = %bb.er
  %i.ro = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body163

.body163:                                         ; preds = %bb.es, %bb.eu
  %eh.lpad-body164 = phi { ptr, i32 } [ %i.ro, %bb.eu ], [ %i.rl, %bb.es ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef 32) #26
  br label %.body154

bb.ev:                                            ; preds = %bb.et, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.rp = add nuw nsw i32 %.081260, 1
  %.not = icmp slt i32 %.081260, %spec.select211  ; 2 uses
  %.182 = select i1 %.not, i32 %i.rp, i32 %spec.select212
  %i.rq = select i1 %.not, i32 0, i32 %spec.select
  %.180 = add nsw i32 %i.rq, %.079266
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1
  %i.rr = add nuw nsw i32 %.290257, 1
  %.not106 = icmp slt i32 %.290257, %spec.select211 ; 2 uses
  %.391 = select i1 %.not106, i32 %i.rr, i32 %spec.select212
  %i.rs = select i1 %.not106, i32 0, i32 %spec.select
  %.387 = add nsw i32 %i.rs, %.286258
  %exitcond311.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge, label %.lr.ph268, !llvm.loop !217

._crit_edge:                                      ; preds = %bb.ev, %.preheader
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.rt = load ptr, ptr %i.d, align 8, !tbaa !107 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 264
  %.val = load ptr, ptr %i.ru, align 8, !tbaa !67 ; 5 uses
  %i.rv = getelementptr i8, ptr %i.rt, i64 272
  %.val121 = load ptr, ptr %i.rv, align 8, !tbaa !68 ; 2 uses
  %.not276 = icmp eq ptr %.val121, %.val
  br i1 %.not276, label %._crit_edge273.thread, label %.lr.ph272.preheader

.lr.ph272.preheader:                              ; preds = %._crit_edge
  %i.rw = ptrtoint ptr %.val121 to i64
  %i.rx = ptrtoint ptr %.val to i64
  %i.ry = sub i64 %i.rw, %i.rx                    ; 3 uses
  %i.rz = ashr exact i64 %i.ry, 3                 ; 2 uses
  %i.sa = icmp eq i64 %i.ry, 8
  br i1 %i.sa, label %.lr.ph272.epil.preheader, label %.lr.ph272.preheader.new

.lr.ph272.preheader.new:                          ; preds = %.lr.ph272.preheader
  %unroll_iter = and i64 %i.rz, -2
  br label %.lr.ph272

._crit_edge273.unr-lcssa:                         ; preds = %.lr.ph272
  %i.sb = and i64 %i.ry, 8
  %lcmp.mod.not = icmp eq i64 %i.sb, 0
  br i1 %lcmp.mod.not, label %._crit_edge273, label %.lr.ph272.epil.preheader

.lr.ph272.epil.preheader:                         ; preds = %._crit_edge273.unr-lcssa, %.lr.ph272.preheader
  %.075270.epil.init = phi i64 [ 0, %.lr.ph272.preheader ], [ %i.sy, %._crit_edge273.unr-lcssa ]
  %.076269.epil.init = phi ptr [ null, %.lr.ph272.preheader ], [ %spec.select120.1, %._crit_edge273.unr-lcssa ] ; 2 uses
  %lcmp.mod452 = trunc i64 %i.rz to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.075270.epil.init
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !65 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 56 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !218, !range !155, !noundef !156
  %i.sg = trunc nuw i8 %i.sf to i1
  %i.sh = icmp eq ptr %.076269.epil.init, null
  %or.cond.not.epil = select i1 %i.sg, i1 %i.sh, i1 false
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %spec.select120.epil = select i1 %or.cond.not.epil, ptr %i.si, ptr %.076269.epil.init
  store i8 0, ptr %i.se, align 8, !tbaa !218
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %._crit_edge273.unr-lcssa, %.lr.ph272.epil.preheader
  %spec.select120.lcssa = phi ptr [ %spec.select120.1, %._crit_edge273.unr-lcssa ], [ %spec.select120.epil, %.lr.ph272.epil.preheader ] ; 2 uses
  %.not100 = icmp eq ptr %spec.select120.lcssa, null
  br i1 %.not100, label %._crit_edge273.thread, label %bb.ex

.body154:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.eo, %bb.bh, %bb.al, %.body163, %.body, %bb.ab
  %.pn107 = phi { ptr, i32 } [ %i.cp, %bb.ab ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body164, %.body163 ], [ %i.qv, %bb.eo ], [ %.pn67.i, %bb.al ], [ %.pn.i, %bb.bh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit217, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.ew

bb.ew:                                            ; preds = %.body154, %bb.aa
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %.body154 ], [ %i.co, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.fb

.lr.ph272:                                        ; preds = %.lr.ph272, %.lr.ph272.preheader.new
  %.075270 = phi i64 [ 0, %.lr.ph272.preheader.new ], [ %i.sy, %.lr.ph272 ] ; 3 uses
  %.076269 = phi ptr [ null, %.lr.ph272.preheader.new ], [ %spec.select120.1, %.lr.ph272 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph272.preheader.new ], [ %niter.next.1, %.lr.ph272 ]
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.075270
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !65 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 56 ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 8, !tbaa !218, !range !155, !noundef !156
  %i.sn = trunc nuw i8 %i.sm to i1
  %i.so = icmp eq ptr %.076269, null
  %or.cond.not = select i1 %i.sn, i1 %i.so, i1 false
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 64
  %spec.select120 = select i1 %or.cond.not, ptr %i.sp, ptr %.076269 ; 2 uses
  store i8 0, ptr %i.sl, align 8, !tbaa !218
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.075270
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !65 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 56 ; 2 uses
end_hunk_1
