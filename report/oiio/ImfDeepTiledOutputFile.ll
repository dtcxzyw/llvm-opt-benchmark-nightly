inline.NumInlined: 1001
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.19, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %5)
          to label %bb.o unwind label %bb.s       ; 2 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139: ; preds = %bb.o
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.21, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141: ; preds = %bb.p
  %i.bb = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.fr unwind label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.v

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.bb) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %bb.t ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.bc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.fd

_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit: ; preds = %bb.l
  %spec.select214 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2) ; 4 uses
  %spec.select215 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2) ; 7 uses
  %.0211 = tail call i32 @llvm.umax.i32(i32 %3, i32 %4) ; 2 uses
  %.0210 = tail call i32 @llvm.umin.i32(i32 %3, i32 %4) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !135
  %i.bh = icmp eq i32 %i.bg, 1                    ; 2 uses
  %spec.select = select i1 %i.bh, i32 -1, i32 1   ; 3 uses
  %.081.sroa.speculated = select i1 %i.bh, i32 %.0211, i32 %.0210 ; 3 uses
  %reass.sub = sub nsw i32 %spec.select214, %spec.select215
  %i.bi = add nsw i32 %reass.sub, 1
  %reass.sub278 = sub nsw i32 %.0211, %.0210
  %i.bj = add nsw i32 %reass.sub278, 1
  %i.bk = mul i32 %i.bj, %i.bi                    ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %.val125 = load ptr, ptr %i.bl, align 8, !tbaa !72
  %i.bm = getelementptr i8, ptr %i.f, i64 320
  %.val126 = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.bn = ptrtoint ptr %.val126 to i64
  %i.bo = ptrtoint ptr %.val125 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bp, 3
  %i.br = trunc i64 %i.bq to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.br) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.preheader223 unwind label %bb.aa

.preheader223:                                    ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit
  %i.bs = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.bs, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader223
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %bb.z
  %i.bt = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader223
  %.095.lcssa = phi i64 [ 0, %.preheader223 ], [ %i.bt, %.preheader.loopexit ]
  %.091.lcssa = phi i32 [ %spec.select215, %.preheader223 ], [ %.192, %.preheader.loopexit ]
  %.087.lcssa = phi i32 [ %.081.sroa.speculated, %.preheader223 ], [ %.188, %.preheader.loopexit ]
  %i.bu = icmp sgt i32 %i.bk, 0
  br i1 %i.bu, label %.lr.ph271.preheader, label %._crit_edge

.lr.ph271.preheader:                              ; preds = %.preheader
  %i.bv = zext nneg i32 %i.bk to i64
  %wide.trip.count313 = zext nneg i32 %i.bk to i64
  br label %.lr.ph271

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %.087256 = phi i32 [ %.081.sroa.speculated, %.lr.ph.preheader ], [ %.188, %bb.z ] ; 2 uses
  %.091255 = phi i32 [ %spec.select215, %.lr.ph.preheader ], [ %.192, %bb.z ] ; 3 uses
  %i.bw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.w unwind label %bb.ab      ; 7 uses

bb.w:                                             ; preds = %.lr.ph
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !121 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull %10)
          to label %.noexc142 unwind label %bb.ac

.noexc142:                                        ; preds = %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %i.bw, align 8, !tbaa !108
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !203
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bx, i64 312
  %.val.i = load ptr, ptr %i.ca, align 8, !tbaa !72 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 320
  %.val9.i = load ptr, ptr %i.cb, align 8, !tbaa !73
  %i.cc = ptrtoint ptr %.val9.i to i64
  %i.cd = ptrtoint ptr %.val.i to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = urem i64 %indvars.iv, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70 ; 2 uses
  store ptr %i.ci, ptr %i.bz, align 8, !tbaa !207
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cj)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %.noexc142
  %i.ck = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.bw) #24
  br label %.body

bb.y:                                             ; preds = %.noexc142
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !207 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  store i32 %.091255, ptr %i.cm, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 92
  store i32 %.087256, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 100
  store i32 %6, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !3
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.bw)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cn = add nuw nsw i32 %.091255, 1
  %.not114 = icmp slt i32 %.091255, %spec.select214 ; 2 uses
  %.192 = select i1 %.not114, i32 %i.cn, i32 %spec.select215 ; 2 uses
  %i.co = select i1 %.not114, i32 0, i32 %spec.select
  %.188 = add nsw i32 %i.co, %.087256             ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !208

bb.aa:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.ey

bb.ab:                                            ; preds = %bb.y, %.lr.ph
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body157

bb.ac:                                            ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body

.body:                                            ; preds = %bb.x, %bb.ac
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %i.ck, %bb.x ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 32) #26
  br label %.body157

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %bb.ex
  %indvars.iv308 = phi i64 [ %.095.lcssa, %.lr.ph271.preheader ], [ %indvars.iv.next309, %bb.ex ] ; 3 uses
  %indvars.iv306 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next307, %bb.ex ] ; 2 uses
  %.082269 = phi i32 [ %.081.sroa.speculated, %.lr.ph271.preheader ], [ %.183, %bb.ex ] ; 32 uses
  %.084263 = phi i32 [ %spec.select215, %.lr.ph271.preheader ], [ %.185, %bb.ex ] ; 21 uses
  %.289261 = phi i32 [ %.087.lcssa, %.lr.ph271.preheader ], [ %.390, %bb.ex ] ; 2 uses
  %.293260 = phi i32 [ %.091.lcssa, %.lr.ph271.preheader ], [ %.394, %bb.ex ] ; 3 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 312
  %.val130 = load ptr, ptr %i.ct, align 8, !tbaa !72 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 320
  %.val131 = load ptr, ptr %i.cu, align 8, !tbaa !73
  %i.cv = ptrtoint ptr %.val131 to i64
  %i.cw = ptrtoint ptr %.val130 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = urem i64 %indvars.iv306, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val130, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !70 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 144 ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit unwind label %.loopexit.split-lp.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit: ; preds = %.lr.ph271
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !121 ; 20 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !209 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !210 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !211 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !212 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !213 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 240
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %i.do, i32 noundef %.084263, i32 noundef %.082269, i32 noundef %5, i32 noundef %6)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit

.noexc145:                                        ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !179
  %.not.i144 = icmp eq i64 %i.dq, 0
  br i1 %.not.i144, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %.noexc145
  invoke void @_Z13iex_debugTrapv()
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc147:                                        ; preds = %.noexc146
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.52, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc147
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 noundef %.084263)
          to label %bb.ae unwind label %bb.aj     ; 2 uses

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i: ; preds = %bb.ae
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 noundef %.082269)
          to label %bb.af unwind label %bb.aj     ; 2 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.i: ; preds = %bb.af
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i32 noundef %5)
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.i
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i: ; preds = %bb.ag
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i32 noundef %6)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.53, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96.i unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96.i: ; preds = %bb.ah
  %i.eb = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.eb, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96.i
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.er unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.i, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc147
  %i.ec = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.eb) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn73.i = phi { ptr, i32 } [ %i.ec, %bb.aj ], [ %i.ed, %bb.ak ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body157

bb.am:                                            ; preds = %.noexc145
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dd, i64 192
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !135
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113writeTileDataEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m(ptr noundef nonnull %i.dd, i32 noundef %.084263, i32 noundef %.082269, i32 noundef %5, i32 noundef %6, ptr noundef %i.df, i64 noundef %i.dh, i64 noundef %i.dj, ptr noundef %i.dl, i64 noundef %i.dn)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit unwind label %.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 360 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !17 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dd, i64 352 ; 13 uses
  %.not3.i.i.i.i = icmp eq ptr %.val.i.i.i, null  ; 3 uses
  br i1 %.not3.i.i.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ao, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i ], [ %.val.i.i.i, %bb.ao ] ; 9 uses
  %.084.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i ], [ %i.ei, %bb.ao ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 44
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !214 ; 2 uses
  %i.em = icmp slt i32 %i.el, %6
  br i1 %i.em, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.en = icmp eq i32 %i.el, %6
  br i1 %i.en, label %bb.aq, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !215 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, %5
  br i1 %i.eq, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = icmp eq i32 %i.ep, %5
  br i1 %i.er, label %bb.as, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 36
  %i.et = load i32, ptr %i.es, align 4, !tbaa !216 ; 2 uses
  %i.eu = icmp slt i32 %i.et, %.082269
  br i1 %i.eu, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = icmp eq i32 %i.et, %.082269
  br i1 %i.ev, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.at
  %i.ew = load i32, ptr %i.ej, align 4, !tbaa !217
  %i.ex = icmp slt i32 %i.ew, %.084263
  br i1 %i.ex, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, %bb.as, %bb.aq, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, %bb.at, %bb.ar, %bb.ap
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ar ], [ 16, %bb.at ], [ 16, %bb.ap ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.084.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.05.i.i.i.i, %bb.ar ], [ %.05.i.i.i.i, %bb.at ], [ %.05.i.i.i.i, %bb.ap ], [ %.05.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ] ; 6 uses
  %i.ey = getelementptr i8, ptr %.05.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !219

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i
  %i.ez = icmp eq ptr %.19.i.i.i.i, %i.ei
  br i1 %i.ez, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 44
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !214 ; 2 uses
  %i.fd = icmp slt i32 %6, %i.fc
  br i1 %i.fd, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = icmp eq i32 %6, %i.fc
  br i1 %i.fe, label %bb.aw, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !215 ; 2 uses
  %i.fh = icmp slt i32 %5, %i.fg
  br i1 %i.fh, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i, label %bb.ax
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br i1 %i.jv, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jw = icmp eq i32 %i.ju, %i.jk
  br i1 %i.jw, label %bb.ce, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i

bb.ce:                                            ; preds = %bb.cd
  %i.jx = getelementptr inbounds nuw i8, ptr %.05.i.i.i122.i, i64 36
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !216 ; 2 uses
  %i.jz = icmp slt i32 %i.jy, %i.jm
  br i1 %i.jz, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ka = icmp eq i32 %i.jy, %i.jm
  br i1 %i.ka, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i: ; preds = %bb.cf
  %i.kb = load i32, ptr %i.jo, align 4, !tbaa !217
  %i.kc = icmp slt i32 %i.kb, %i.jn
  br i1 %i.kc, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i, %bb.ce, %bb.cc, %.lr.ph.i.i.i121.i
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i, %bb.cf, %bb.cd, %bb.cb
  %.sink.i.i.i125.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i ], [ 16, %bb.cd ], [ 16, %bb.cf ], [ 16, %bb.cb ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i ]
  %.19.i.i.i126.i = phi ptr [ %.084.i.i.i123.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i ], [ %.05.i.i.i122.i, %bb.cd ], [ %.05.i.i.i122.i, %bb.cf ], [ %.05.i.i.i122.i, %bb.cb ], [ %.05.i.i.i122.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i ] ; 7 uses
  %i.kd = getelementptr i8, ptr %.05.i.i.i122.i, i64 %.sink.i.i.i125.i
  %.1.i.i.i127.i = load ptr, ptr %i.kd, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i128.i = icmp eq ptr %.1.i.i.i127.i, null
  br i1 %.not.i.i.i128.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i129.i, label %.lr.ph.i.i.i121.i, !llvm.loop !219

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i129.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i
  %i.ke = icmp eq ptr %.19.i.i.i126.i, %i.ei
  br i1 %i.ke, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i129.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.19.i.i.i126.i, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %.19.i.i.i126.i, i64 44
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !214 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, %i.jj
  br i1 %i.ki, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kj = icmp eq i32 %i.kh, %i.jj
  br i1 %i.kj, label %bb.ci, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ch, %bb.cj, %bb.cl, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i132.i
  br label %.backedge, !llvm.loop !226

bb.ci:                                            ; preds = %bb.ch
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i126.i, i64 40
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !215 ; 2 uses
  %i.km = icmp sgt i32 %i.kl, %i.jk
  br i1 %i.km, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kn = icmp eq i32 %i.kl, %i.jk
  br i1 %i.kn, label %bb.ck, label %.backedge.backedge

bb.ck:                                            ; preds = %bb.cj
  %i.ko = getelementptr inbounds nuw i8, ptr %.19.i.i.i126.i, i64 36
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !216 ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, %i.jm
  br i1 %i.kq, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kr = icmp eq i32 %i.kp, %i.jm
  br i1 %i.kr, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i132.i, label %.backedge.backedge

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i132.i: ; preds = %bb.cl
  %i.ks = load i32, ptr %i.kf, align 4, !tbaa !217
  %i.kt = icmp sgt i32 %i.ks, %i.jn
  br i1 %i.kt, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %.backedge.backedge

_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i: ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.i, %bb.bj, %bb.bi, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread.i
  %i.ku = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc155:                                        ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i
  store ptr null, ptr %i.ku, align 8, !tbaa !95
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %sext.i = shl i64 %i.dh, 32
  %i.kw = ashr exact i64 %sext.i, 32              ; 3 uses
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !223
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %sext154.i = shl i64 %i.dj, 32
  %i.ky = ashr exact i64 %sext154.i, 32
  store i64 %i.ky, ptr %i.kx, align 8, !tbaa !224
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 24 ; 2 uses
  store ptr null, ptr %i.kz, align 8, !tbaa !97
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %sext155.i = shl i64 %i.dn, 32
  %i.lb = ashr exact i64 %sext155.i, 32           ; 3 uses
  store i64 %i.lb, ptr %i.la, align 8, !tbaa !225
  %i.lc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kw) #25
          to label %.noexc.i unwind label %bb.eq  ; 2 uses

.noexc.i:                                         ; preds = %.noexc155
  store ptr %i.lc, ptr %i.ku, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lc, ptr readonly align 1 %i.df, i64 %i.kw, i1 false)
  %i.ld = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lb) #25
          to label %bb.cm unwind label %bb.eq     ; 2 uses

bb.cm:                                            ; preds = %.noexc.i
  store ptr %i.ld, ptr %i.kz, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr readonly align 1 %i.dl, i64 %i.lb, i1 false)
  br i1 %.not3.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cm, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i ], [ %.val.i.i.i, %bb.cm ] ; 9 uses
  %.084.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i ], [ %i.ei, %bb.cm ]
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 44
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !214 ; 2 uses
  %i.lh = icmp slt i32 %i.lg, %6
  br i1 %i.lh, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.li = icmp eq i32 %i.lg, %6
  br i1 %i.li, label %bb.co, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !215 ; 2 uses
  %i.ll = icmp slt i32 %i.lk, %5
  br i1 %i.ll, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lm = icmp eq i32 %i.lk, %5
  br i1 %i.lm, label %bb.cq, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 36
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !216 ; 2 uses
  %i.lp = icmp slt i32 %i.lo, %.082269
  br i1 %i.lp, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lq = icmp eq i32 %i.lo, %.082269
  br i1 %i.lq, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.cr
  %i.lr = load i32, ptr %i.le, align 4, !tbaa !217
  %i.ls = icmp slt i32 %i.lr, %.084263
  br i1 %i.ls, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cq, %bb.co, %.lr.ph.i.i.i.i.i
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cr, %bb.cp, %bb.cn
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.cp ], [ 16, %bb.cr ], [ 16, %bb.cn ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.084.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.05.i.i.i.i.i, %bb.cp ], [ %.05.i.i.i.i.i, %bb.cr ], [ %.05.i.i.i.i.i, %bb.cn ], [ %.05.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ] ; 15 uses
  %i.lt = getelementptr i8, ptr %.05.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.lt, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !219

_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i
  %i.lu = icmp eq ptr %.19.i.i.i.i.i, %i.ei
  br i1 %i.lu, label %.critedge.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 44
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !214 ; 2 uses
  %i.ly = icmp slt i32 %6, %i.lx
  br i1 %i.ly, label %.critedge.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lz = icmp eq i32 %6, %i.lx
  br i1 %i.lz, label %bb.cu, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.ma = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !215 ; 2 uses
  %i.mc = icmp slt i32 %5, %i.mb
  br i1 %i.mc, label %.critedge.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.md = icmp eq i32 %5, %i.mb
  br i1 %i.md, label %bb.cw, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

bb.cw:                                            ; preds = %bb.cv
  %i.me = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !216 ; 2 uses
  %i.mg = icmp slt i32 %.082269, %i.mf
  br i1 %i.mg, label %.critedge.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mh = icmp eq i32 %.082269, %i.mf
  br i1 %i.mh, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i: ; preds = %bb.cx
  %i.mi = load i32, ptr %i.lv, align 4, !tbaa !217
  %i.mj = icmp slt i32 %.084263, %i.mi
  br i1 %i.mj, label %.critedge.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

.critedge.i.i:                                    ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, %bb.cw, %bb.cu, %bb.cs, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i, %bb.cm
  %i.mk = phi i1 [ true, %bb.cm ], [ false, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ true, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i ], [ false, %bb.cu ], [ false, %bb.cs ], [ false, %bb.cw ]
  %.08.lcssa.i.i.i17.i.i = phi ptr [ %i.ei, %bb.cm ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.cu ], [ %.19.i.i.i.i.i, %bb.cs ], [ %.19.i.i.i.i.i, %bb.cw ] ; 17 uses
  %i.ml = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc156:                                        ; preds = %.critedge.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  store i32 %.084263, ptr %i.mm, align 8, !tbaa !3
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 36
  store i32 %.082269, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  store i32 %5, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 44
  store i32 %6, ptr %.sroa.16.0..sroa_idx.i, align 4, !tbaa !3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  store ptr null, ptr %i.mn, align 8, !tbaa !92
  br i1 %i.mk, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %.noexc156
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dd, i64 384
  %.val12.i.i.i.i = load i64, ptr %i.mo, align 8, !tbaa !20
  %.not.i.i.i138.i = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i138.i, label %.sink.split.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dd, i64 376
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !218 ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !214 ; 2 uses
  %i.mu = icmp slt i32 %i.mt, %6
  br i1 %i.mu, label %.thread.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mv = icmp eq i32 %i.mt, %6
  br i1 %i.mv, label %bb.db, label %.sink.split.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !215 ; 2 uses
  %i.my = icmp slt i32 %i.mx, %5
  br i1 %i.my, label %.thread.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mz = icmp eq i32 %i.mx, %5
  br i1 %i.mz, label %bb.dd, label %.sink.split.i.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.na = getelementptr inbounds nuw i8, ptr %i.mq, i64 36
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !216 ; 2 uses
  %i.nc = icmp slt i32 %i.nb, %.082269
  br i1 %i.nc, label %.thread.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.nd = icmp eq i32 %i.nb, %.082269
  br i1 %i.nd, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i139.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i139.i: ; preds = %bb.de
  %i.ne = load i32, ptr %i.mr, align 4, !tbaa !217
  %i.nf = icmp slt i32 %i.ne, %.084263
  br i1 %i.nf, label %.thread.i.i.i, label %.sink.split.i.i.i

bb.df:                                            ; preds = %.noexc156
  %i.ng = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 32 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 44
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !214 ; 3 uses
  %i.nj = icmp slt i32 %6, %i.ni
  br i1 %i.nj, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nk = icmp eq i32 %6, %i.ni
  br i1 %i.nk, label %bb.dh, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.nl = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 40
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !215 ; 2 uses
  %i.nn = icmp slt i32 %5, %i.nm
  br i1 %i.nn, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.no = icmp eq i32 %5, %i.nm
  br i1 %i.no, label %bb.dj, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  %i.np = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 36
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !216 ; 2 uses
  %i.nr = icmp slt i32 %.082269, %i.nq
  br i1 %i.nr, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ns = icmp eq i32 %.082269, %i.nq
  br i1 %i.ns, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i: ; preds = %bb.dk
  %i.nt = load i32, ptr %i.ng, align 4, !tbaa !217
  %i.nu = icmp slt i32 %.084263, %i.nt
  br i1 %i.nu, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i, %bb.dj, %bb.dh, %bb.df
  %i.nv = getelementptr inbounds nuw i8, ptr %i.dd, i64 368
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !218 ; 3 uses
  %i.nx = icmp eq ptr %i.nw, %.08.lcssa.i.i.i17.i.i
  br i1 %i.nx, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i
  %i.ny = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i17.i.i) #28 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 44
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !214 ; 2 uses
  %i.oc = icmp slt i32 %i.ob, %6
  br i1 %i.oc, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.od = icmp eq i32 %i.ob, %6
  br i1 %i.od, label %bb.dn, label %.sink.split.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !215 ; 2 uses
  %i.og = icmp slt i32 %i.of, %5
  br i1 %i.og, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.oh = icmp eq i32 %i.of, %5
  br i1 %i.oh, label %bb.dp, label %.sink.split.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 36
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !216 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, %.082269
  br i1 %i.ok, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ol = icmp eq i32 %i.oj, %.082269
  br i1 %i.ol, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i: ; preds = %bb.dq
  %i.om = load i32, ptr %i.nz, align 4, !tbaa !217
  %i.on = icmp slt i32 %i.om, %.084263
  br i1 %i.on, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, %bb.dp, %bb.dn, %bb.dl
  %i.oo = getelementptr i8, ptr %i.ny, i64 24
  %.val10.i.i.i.i = load ptr, ptr %i.oo, align 8, !tbaa !227
  %i.op = icmp eq ptr %.val10.i.i.i.i, null       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.op, ptr null, ptr %.08.lcssa.i.i.i17.i.i
  %spec.select48.i.i.i.i = select i1 %i.op, ptr %i.ny, ptr %.08.lcssa.i.i.i17.i.i
  br label %.thread.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.i.i.i.i, %bb.dk, %bb.di, %bb.dg
  %12 = icmp slt i32 %i.ni, %6
  br i1 %12, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i
  %13 = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 40
  %14 = load i32, ptr %13, align 4, !tbaa !215    ; 2 uses
  %i.oq = icmp slt i32 %14, %5
  br i1 %i.oq, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %15

15:                                               ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i
  %16 = icmp eq i32 %14, %5
  br i1 %16, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i: ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i17.i.i, i64 36
  %18 = load i32, ptr %17, align 4, !tbaa !216    ; 2 uses
  %i.or = icmp slt i32 %18, %.082269
  br i1 %i.or, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %19

19:                                               ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i
  %20 = icmp eq i32 %18, %.082269
  br i1 %20, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i: ; preds = %19
  %21 = load i32, ptr %i.ng, align 4, !tbaa !217
  %i.os = icmp slt i32 %21, %.084263
  br i1 %i.os, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.thread.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread41.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.dd, i64 376
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !218 ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %.08.lcssa.i.i.i17.i.i
  br i1 %i.ov, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i
  %i.ow = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i17.i.i) #28 ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 44
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !214 ; 2 uses
  %i.pa = icmp slt i32 %6, %i.oz
  br i1 %i.pa, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pb = icmp eq i32 %6, %i.oz
  br i1 %i.pb, label %bb.dt, label %.sink.split.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !215 ; 2 uses
  %i.pe = icmp slt i32 %5, %i.pd
  br i1 %i.pe, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pf = icmp eq i32 %5, %i.pd
  br i1 %i.pf, label %bb.dv, label %.sink.split.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 36
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !216 ; 2 uses
  %i.pi = icmp slt i32 %.082269, %i.ph
  br i1 %i.pi, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pj = icmp eq i32 %.082269, %i.ph
  br i1 %i.pj, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i: ; preds = %bb.dw
  %i.pk = load i32, ptr %i.ox, align 4, !tbaa !217
  %i.pl = icmp slt i32 %.084263, %i.pk
  br i1 %i.pl, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, %bb.dv, %bb.dt, %bb.dr
  %i.pm = getelementptr i8, ptr %.08.lcssa.i.i.i17.i.i, i64 24
  %.val.i10.i.i.i = load ptr, ptr %i.pm, align 8, !tbaa !227
  %i.pn = icmp eq ptr %.val.i10.i.i.i, null       ; 2 uses
  %spec.select49.i.i.i.i = select i1 %i.pn, ptr null, ptr %i.ow
  %spec.select50.i.i.i.i = select i1 %i.pn, ptr %.08.lcssa.i.i.i17.i.i, ptr %i.ow
  br label %.thread.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, %bb.dw, %bb.du, %bb.ds, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, %bb.dq, %bb.do, %bb.dm, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i139.i, %bb.de, %bb.dc, %bb.da, %bb.cy
  br i1 %.not3.i.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.sink.split.i.i.i, %.lr.ph.i.i.i.backedge
  %.02532.i.i.i = phi ptr [ %.02532.i.i.i.be, %.lr.ph.i.i.i.backedge ], [ %.val.i.i.i, %.sink.split.i.i.i ] ; 9 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 32
  %i.pp = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 44
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !214 ; 3 uses
  %i.pr = icmp slt i32 %6, %i.pq
  br i1 %i.pr, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i
  %i.ps = icmp eq i32 %6, %i.pq
  br i1 %i.ps, label %bb.dy, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.pt = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 40
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !215 ; 2 uses
  %i.pv = icmp slt i32 %5, %i.pu
  br i1 %i.pv, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pw = icmp eq i32 %5, %i.pu
  br i1 %i.pw, label %bb.ea, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.px = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 36
  %i.py = load i32, ptr %i.px, align 4, !tbaa !216 ; 2 uses
  %i.pz = icmp slt i32 %.082269, %i.py
  br i1 %i.pz, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qa = icmp eq i32 %.082269, %i.py
  br i1 %i.qa, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i137.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i137.i: ; preds = %bb.eb
  %i.qb = load i32, ptr %i.po, align 4, !tbaa !217
  %i.qc = icmp slt i32 %.084263, %i.qb
  br i1 %i.qc, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i137.i, %bb.ea, %bb.dy, %.lr.ph.i.i.i
  %i.qd = getelementptr i8, ptr %.02532.i.i.i, i64 16
  %.025.i.i.i = load ptr, ptr %i.qd, align 8, !tbaa !218 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %.025.i.i.i, null
  br i1 %.not.i10.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.backedge

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i137.i, %bb.eb, %bb.dz, %bb.dx
  %i.qe = getelementptr i8, ptr %.02532.i.i.i, i64 24
  %.025.i22.i.i = load ptr, ptr %i.qe, align 8, !tbaa !218 ; 2 uses
  %.not.i1023.i.i = icmp eq ptr %.025.i22.i.i, null
  br i1 %.not.i1023.i.i, label %._crit_edge.i.thread.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i
  %.02532.i.i.i.be = phi ptr [ %.025.i22.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ], [ %.025.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i ]
  br label %.lr.ph.i.i.i, !llvm.loop !228

._crit_edge.thread.i.i.i:                         ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, %.sink.split.i.i.i
  %.024.lcssa48.i.i.i = phi ptr [ %i.ei, %.sink.split.i.i.i ], [ %.02532.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i ] ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.dd, i64 368
  %.val7.i.i.i = load ptr, ptr %i.qf, align 8, !tbaa !18
  %i.qg = icmp eq ptr %.024.lcssa48.i.i.i, %.val7.i.i.i
  br i1 %i.qg, label %.thread.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.qh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.024.lcssa48.i.i.i) #28 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.qh, i64 44
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !214
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i, %bb.ec
  %i.qi = phi i32 [ %.pre.i.i, %bb.ec ], [ %i.pq, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %.024.lcssa47.i.i.i = phi ptr [ %.024.lcssa48.i.i.i, %bb.ec ], [ %.02532.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 4 uses
  %.sroa.015.0.i.i.i = phi ptr [ %i.qh, %bb.ec ], [ %.02532.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 7 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 32
  %i.qk = icmp slt i32 %i.qi, %6
  br i1 %i.qk, label %.thread.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.thread.i.i
  %i.ql = icmp eq i32 %i.qi, %6
  br i1 %i.ql, label %bb.ee, label %.thread10.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 40
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !215 ; 2 uses
  %i.qo = icmp slt i32 %i.qn, %5
  br i1 %i.qo, label %.thread.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qp = icmp eq i32 %i.qn, %5
  br i1 %i.qp, label %bb.eg, label %.thread10.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 36
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !216 ; 2 uses
  %i.qs = icmp slt i32 %i.qr, %.082269
  br i1 %i.qs, label %.thread.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qt = icmp eq i32 %i.qr, %.082269
  br i1 %i.qt, label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i: ; preds = %bb.eh
  %i.qu = load i32, ptr %i.qj, align 4, !tbaa !217
  %i.qv = icmp slt i32 %i.qu, %.084263
  br i1 %i.qv, label %.thread.i.i.i, label %.thread10.i.i.i

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i
  %.sroa.037.2.i.i.i.i = phi ptr [ %i.nw, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i ], [ null, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %i.nw, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i ], [ %i.ou, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.12.2.i.i.i.i, null
  br i1 %.not.i.i.i, label %.thread10.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, %bb.eg, %bb.ee, %._crit_edge.i.thread.i.i, %._crit_edge.thread.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i139.i, %bb.dd, %bb.db, %bb.cz
  %.sroa.12.2.i8.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ %i.mq, %bb.cz ], [ %i.mq, %bb.db ], [ %i.mq, %bb.dd ], [ %spec.select48.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i ], [ %spec.select50.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i ], [ %i.mq, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i139.i ], [ %.024.lcssa47.i.i.i, %bb.eg ], [ %.024.lcssa47.i.i.i, %._crit_edge.i.thread.i.i ], [ %.024.lcssa47.i.i.i, %bb.ee ], [ %.024.lcssa47.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ], [ %.024.lcssa48.i.i.i, %._crit_edge.thread.i.i.i ] ; 6 uses
  %.sroa.037.2.i7.i.i.i = phi ptr [ %.sroa.037.2.i.i.i.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ null, %bb.cz ], [ null, %bb.db ], [ null, %bb.dd ], [ %spec.select.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i ], [ %spec.select49.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i ], [ null, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i139.i ], [ null, %bb.eg ], [ null, %._crit_edge.i.thread.i.i ], [ null, %bb.ee ], [ null, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ], [ null, %._crit_edge.thread.i.i.i ]
  %.not.i.i.i9.i.i = icmp ne ptr %.sroa.037.2.i7.i.i.i, null
  %i.qw = icmp eq ptr %.sroa.12.2.i8.i.i.i, %i.ei
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i9.i.i, i1 true, i1 %i.qw
  br i1 %or.cond.i.i.i.i.i, label %bb.ep, label %bb.ei

bb.ei:                                            ; preds = %.thread.i.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 32
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 44
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !214 ; 2 uses
  %i.ra = icmp slt i32 %6, %i.qz
  br i1 %i.ra, label %bb.ep, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rb = icmp eq i32 %6, %i.qz
  br i1 %i.rb, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 40
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !215 ; 2 uses
  %i.re = icmp slt i32 %5, %i.rd
  br i1 %i.re, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.rf = icmp eq i32 %5, %i.rd
  br i1 %i.rf, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 36
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !216 ; 2 uses
  %i.ri = icmp slt i32 %.082269, %i.rh
  br i1 %i.ri, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rj = icmp eq i32 %.082269, %i.rh
  br i1 %i.rj, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.rk = load i32, ptr %i.qx, align 4, !tbaa !217
  %i.rl = icmp slt i32 %.084263, %i.rk
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %.thread.i.i.i
  %i.rm = phi i1 [ false, %bb.ej ], [ true, %.thread.i.i.i ], [ true, %bb.ek ], [ true, %bb.ei ], [ false, %bb.el ], [ %i.rl, %bb.eo ], [ true, %bb.em ], [ false, %bb.en ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.rm, ptr noundef nonnull %i.ml, ptr noundef nonnull %.sroa.12.2.i8.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ei) #24
  %i.rn = getelementptr inbounds nuw i8, ptr %i.dd, i64 384 ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !20
  %i.rp = add i64 %i.ro, 1
  store i64 %i.rp, ptr %i.rn, align 8, !tbaa !20
  br label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

.thread10.i.i.i:                                  ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, %bb.eh, %bb.ef, %bb.ed, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, %19, %15
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.sroa.037.2.i.i.i.i, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ %.08.lcssa.i.i.i17.i.i, %19 ], [ %.08.lcssa.i.i.i17.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i ], [ %.08.lcssa.i.i.i17.i.i, %15 ], [ %.sroa.015.0.i.i.i, %bb.ed ], [ %.sroa.015.0.i.i.i, %bb.ef ], [ %.sroa.015.0.i.i.i, %bb.eh ], [ %.sroa.015.0.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef 56) #26
  br label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i: ; preds = %.thread10.i.i.i, %bb.ep, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, %bb.cx, %bb.cv, %bb.ct
  %.sroa.015.0.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i, %.thread10.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ %i.ml, %bb.ep ], [ %.19.i.i.i.i.i, %bb.ct ], [ %.19.i.i.i.i.i, %bb.cx ], [ %.19.i.i.i.i.i, %bb.cv ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i, i64 48
  store ptr %i.ku, ptr %i.rq, align 8, !tbaa !229
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit

bb.eq:                                            ; preds = %.noexc.i, %.noexc155
  %i.rr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef 40) #26
  br label %.body157

bb.er:                                            ; preds = %bb.be, %bb.ai
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i132.i, %bb.ck, %bb.ci, %bb.cg, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i129.i, %.noexc154, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i115.i, %bb.bu, %bb.bs, %bb.bq, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i112.i, %.noexc152, %bb.an
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit unwind label %.loopexit.split-lp.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit
  %i.rs = icmp samesign ult i64 %indvars.iv308, %i.bv
  br i1 %i.rs, label %bb.es, label %bb.ex

bb.es:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit
  %i.rt = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.et unwind label %.loopexit.split-lp.loopexit ; 7 uses

bb.et:                                            ; preds = %bb.es
  %i.ru = load ptr, ptr %i.a, align 8, !tbaa !121 ; 3 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.rt, ptr noundef nonnull %10)
          to label %.noexc165 unwind label %bb.ew

.noexc165:                                        ; preds = %bb.et
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %i.rt, align 8, !tbaa !108
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store ptr %i.ru, ptr %i.rv, align 8, !tbaa !203
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 24 ; 2 uses
  %i.rx = getelementptr i8, ptr %i.ru, i64 312
  %.val.i160 = load ptr, ptr %i.rx, align 8, !tbaa !72 ; 2 uses
  %i.ry = getelementptr i8, ptr %i.ru, i64 320
  %.val9.i161 = load ptr, ptr %i.ry, align 8, !tbaa !73
  %i.rz = ptrtoint ptr %.val9.i161 to i64
  %i.sa = ptrtoint ptr %.val.i160 to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = ashr exact i64 %i.sb, 3
  %i.sd = urem i64 %indvars.iv308, %i.sc
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.val.i160, i64 %i.sd
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !70 ; 2 uses
  store ptr %i.sf, ptr %i.rw, align 8, !tbaa !207
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 144
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.sg)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %.noexc165
  %i.sh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.rt) #24
  br label %.body166

bb.ev:                                            ; preds = %.noexc165
  %i.si = load ptr, ptr %i.rw, align 8, !tbaa !207 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 88
  store i32 %.293260, ptr %i.sj, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.si, i64 92
  store i32 %.289261, ptr %.sroa.4.0..sroa_idx.i162, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.si, i64 96
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i163, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.si, i64 100
  store i32 %6, ptr %.sroa.6.0..sroa_idx.i164, align 4, !tbaa !3
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.rt)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.ca
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body157

.loopexit.split-lp.loopexit:                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, %.critedge.i.i, %_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i, %.noexc151, %bb.bk, %bb.an, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4waitEv.exit, %.lr.ph271, %bb.ev, %bb.es
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body157

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc149, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.i, %.noexc146, %bb.ad
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body157

bb.ew:                                            ; preds = %bb.et
  %i.sk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %.body166

.body166:                                         ; preds = %bb.eu, %bb.ew
  %eh.lpad-body167 = phi { ptr, i32 } [ %i.sk, %bb.ew ], [ %i.sh, %bb.eu ]
  call void @_ZdlPvm(ptr noundef nonnull %i.rt, i64 noundef 32) #26
  br label %.body157

bb.ex:                                            ; preds = %bb.ev, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110TileBuffer4postEv.exit
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %i.sl = add nuw nsw i32 %.084263, 1
  %.not = icmp slt i32 %.084263, %spec.select214  ; 2 uses
  %.185 = select i1 %.not, i32 %i.sl, i32 %spec.select215
  %i.sm = select i1 %.not, i32 0, i32 %spec.select
  %.183 = add nsw i32 %i.sm, %.082269
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  %i.sn = add nuw nsw i32 %.293260, 1
  %.not109 = icmp slt i32 %.293260, %spec.select214 ; 2 uses
  %.394 = select i1 %.not109, i32 %i.sn, i32 %spec.select215
  %i.so = select i1 %.not109, i32 0, i32 %spec.select
  %.390 = add nsw i32 %i.so, %.289261
  %exitcond314.not = icmp eq i64 %indvars.iv.next307, %wide.trip.count313
  br i1 %exitcond314.not, label %._crit_edge, label %.lr.ph271, !llvm.loop !230

._crit_edge:                                      ; preds = %bb.ex, %.preheader
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.sp = load ptr, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 312
  %.val = load ptr, ptr %i.sq, align 8, !tbaa !72 ; 5 uses
  %i.sr = getelementptr i8, ptr %i.sp, i64 320
  %.val124 = load ptr, ptr %i.sr, align 8, !tbaa !73 ; 2 uses
  %.not279 = icmp eq ptr %.val124, %.val
  br i1 %.not279, label %._crit_edge276.thread, label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %._crit_edge
  %i.ss = ptrtoint ptr %.val124 to i64
  %i.st = ptrtoint ptr %.val to i64
  %i.su = sub i64 %i.ss, %i.st                    ; 3 uses
  %i.sv = ashr exact i64 %i.su, 3                 ; 2 uses
  %i.sw = icmp eq i64 %i.su, 8
  br i1 %i.sw, label %.lr.ph275.epil.preheader, label %.lr.ph275.preheader.new

.lr.ph275.preheader.new:                          ; preds = %.lr.ph275.preheader
  %unroll_iter = and i64 %i.sv, -2
  br label %.lr.ph275

._crit_edge276.unr-lcssa:                         ; preds = %.lr.ph275
  %i.sx = and i64 %i.su, 8
  %lcmp.mod.not = icmp eq i64 %i.sx, 0
  br i1 %lcmp.mod.not, label %._crit_edge276, label %.lr.ph275.epil.preheader

.lr.ph275.epil.preheader:                         ; preds = %._crit_edge276.unr-lcssa, %.lr.ph275.preheader
  %.078273.epil.init = phi i64 [ 0, %.lr.ph275.preheader ], [ %i.tu, %._crit_edge276.unr-lcssa ]
  %.079272.epil.init = phi ptr [ null, %.lr.ph275.preheader ], [ %spec.select123.1, %._crit_edge276.unr-lcssa ] ; 2 uses
  %lcmp.mod457 = trunc i64 %i.sv to i1
  call void @llvm.assume(i1 %lcmp.mod457)
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.078273.epil.init
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !70 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 104 ; 2 uses
  %i.tb = load i8, ptr %i.ta, align 8, !tbaa !231, !range !170, !noundef !171
  %i.tc = trunc nuw i8 %i.tb to i1
  %i.td = icmp eq ptr %.079272.epil.init, null
  %or.cond.not.epil = select i1 %i.tc, i1 %i.td, i1 false
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 112
  %spec.select123.epil = select i1 %or.cond.not.epil, ptr %i.te, ptr %.079272.epil.init
  store i8 0, ptr %i.ta, align 8, !tbaa !231
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.unr-lcssa, %.lr.ph275.epil.preheader
  %spec.select123.lcssa = phi ptr [ %spec.select123.1, %._crit_edge276.unr-lcssa ], [ %spec.select123.epil, %.lr.ph275.epil.preheader ] ; 2 uses
  %.not103 = icmp eq ptr %spec.select123.lcssa, null
  br i1 %.not103, label %._crit_edge276.thread, label %bb.ez

.body157:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.eq, %bb.bh, %bb.al, %.body166, %.body, %bb.ab
  %.pn110 = phi { ptr, i32 } [ %i.cq, %bb.ab ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body167, %.body166 ], [ %i.rr, %bb.eq ], [ %.pn73.i, %bb.al ], [ %.pn.i, %bb.bh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit220, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.ey

bb.ey:                                            ; preds = %.body157, %bb.aa
  %.pn110.pn = phi { ptr, i32 } [ %.pn110, %.body157 ], [ %i.cp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.fd

.lr.ph275:                                        ; preds = %.lr.ph275, %.lr.ph275.preheader.new
  %.078273 = phi i64 [ 0, %.lr.ph275.preheader.new ], [ %i.tu, %.lr.ph275 ] ; 3 uses
  %.079272 = phi ptr [ null, %.lr.ph275.preheader.new ], [ %spec.select123.1, %.lr.ph275 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph275.preheader.new ], [ %niter.next.1, %.lr.ph275 ]
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.078273
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !70 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 104 ; 2 uses
  %i.ti = load i8, ptr %i.th, align 8, !tbaa !231, !range !170, !noundef !171
  %i.tj = trunc nuw i8 %i.ti to i1
  %i.tk = icmp eq ptr %.079272, null
  %or.cond.not = select i1 %i.tj, i1 %i.tk, i1 false
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 112
  %spec.select123 = select i1 %or.cond.not, ptr %i.tl, ptr %.079272 ; 2 uses
  store i8 0, ptr %i.th, align 8, !tbaa !231
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.078273
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !70 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 104 ; 2 uses
end_hunk_1
